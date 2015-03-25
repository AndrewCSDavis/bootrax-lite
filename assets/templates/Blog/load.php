<?php

# LOAD XML FILE 
	$contents = new DOMDocument(); 
	$contents->load('assets/templates/blog/data.xml'); 
	
	
	$XML = new DOMDocument(); 	
	$DATA = $XML->createElement('data');
	$PARAMS = $XML->createElement('params');
	
	
		$xpath = new DOMXpath($contents);
		$elements = $xpath->query("*");
		if ($elements->length > 0) {			
		  foreach ($elements as $element) {						
			$nodes = $element->childNodes;			
			foreach ($nodes as $node) {					
					$page = $element->getAttribute('handle');
					$title = $element->nodeValue;
			}			
		  }					
		}	
	
	$config = include('assets/templates/blog/config.php');
	foreach($config as $c => $fig){
		$element = $XML->createElement($c,$fig);	
		$PARAMS->appendChild($element);
	}			
	$DATA->appendChild($PARAMS);	
	$xp = new DOMXpath($contents);
	$c = $xp->query("*");
	foreach($c as $content){
		$node = $content;		
		$DATA->appendChild($XML->importNode($node,true));	
	}	
	$XML->appendChild($DATA);
	$xslt = new XSLTProcessor(); 
	$XSL = new DOMDocument(); 
	$XSL->load( 'assets/templates/blog/blog.xsl', LIBXML_NOCDATA); 
	$xslt->importStylesheet( $XSL ); 
	foreach($PARAMS->childNodes as $param){		
		$xslt->setParameter(null, $param->nodeName, $param->nodeValue);		
	}
	print $xslt->transformToXML( $XML );

?>