<?php 
redirect("http://".$_SERVER['HTTP_HOST']."/bootrax-lite/not-found", false);	
 function redirect($url, $statusCode = 303)
	{
	   header('Location: ' . $url, true, $statusCode);
	   die();
	}	
?>