<?php 
$nav = new DOMDocument(); 

$nav->load('lib/nav/nav.xml');

$pages = $XML->createElement('pages');
$xp = new DOMXpath($nav);
$c = $xp->query("*");
foreach($c as $child){
	$pages->appendChild($XML->importNode($child,true));	
}
$DATA->appendChild($pages);
?>