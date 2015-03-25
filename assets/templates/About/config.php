<?php 
	$config = array(		
		'root'=>$root,
		'currentpage'=>'',
		'page' => $page,
		'page-title'=>$title,
		'workspace'=>$root.'assets/',
		'subpage'=>''		
	);
	$config = array_merge($config,$request);
	return $config;

?>