<?php 
	$config = array(		
		'root'=>$root,
		'currentpage'=>'',
		'page' => $page,
		'page-title'=>$title,
		'subpage'=>''		
	);
	$config = array_merge($config,$request);
	return $config;

?>