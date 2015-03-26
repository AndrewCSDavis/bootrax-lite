<?php 
	/*  basic Config */
	include('lib/default.config.php');
	include('lib/functions/functions.php');
	$request = ResetRequest($_SERVER['REQUEST_URI']);
	$currentpage = (array_key_exists(0,$request))? $request[0] : '';
	if($currentpage == ''){
		$request[0] = $homepageslug;
	}	
	$newdata = array();
	foreach($request as $req => $r){
		if(array_key_exists($req,$urlstructure)){
			$newkey = $urlstructure[$req];
			$newdata[$newkey] = $r;
		}
	}
	
	unset($request);
	$request = $newdata;
		
	
	
	generateNav($root,$navorder);
	
	if(file_exists('assets/templates/'.$request['currentpage'].'/load.php')){
		include('assets/templates/'.$request['currentpage'].'/load.php');
	}else{
		include('lib/not-found/load.php');
	}
?>