<?php 

function ResetRequest($server){
		$request = explode('/',$server); 		
		unset($request[0]);
		unset($request[1]);		
		$request = array_values($request);
		return $request;
	}
	function unsetDots($array){
		unset($array[0]);
		unset($array[1]);
		$newarray = array();
		foreach($array as $arrayitem => $i){
			$file = pathinfo($i);
			if(!array_key_exists('extension',$file)){
				$newarray[] = $i;
			}
		}
		$newarray = array_values($newarray);
		return $newarray;
	}
	function slugify($text) {
		// replace non letter or digits by -
		$text = preg_replace('~[^\\pL\d]+~u', '-', $text);
		// trim
		$text = trim($text, '-');
		// transliterate
		$text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
		// lowercase
		$text = strtolower($text);
		// remove unwanted characters
		$text = preg_replace('~[^-\w]+~', '', $text);
		if (empty($text)) {
			return '';
		}
		return $text;
	}
	function generateNav($root,$navorder){
		$templates = 'assets/templates';
		$nav = scandir($templates);
		$nav = unsetDots($nav);
		$pages = array();
		$XML = new DOMDocument('1.0'); 
		$XML->formatOutput = true;
		$elem = $XML->createElement('pages');
		if($navorder == 'ascending'){
			sort($nav);
			$nav = array_reverse($nav);
		}elseif($navorder == 'descending'){
			sort($nav);
		}else{
			
		}
		foreach($nav as $navitems => $items){
			$page = $XML->createElement('entry');
			$page->setAttribute('slug',slugify($items));
			$page->setAttribute('url',$root.slugify($items));
			$title = $XML->createElement('title',$items);	
			$title->setAttribute('handle',slugify($items));			
			$page->appendChild($title);			
			//$newdir = $templates.'/'.slugify($items);
			
			$elem->appendChild($page);
		}
		
		$XML->appendChild($elem);
		$XML->save('lib/nav/nav.xml');		
	}
	function redirect($url, $statusCode = 303)
	{
	   header('Location: ' . $url, true, $statusCode);
	   die();
	}	
?>