<?php 
	$config = array(		
		'root'=>$root,
		'currentpage'=>'',
		'page' => $page,
		'page-title'=>'Not Found',
		'subpage'=>'',
		'workspace'=>$workspace
	);
	$config = array_merge($config,$request);
	return $config;

?>