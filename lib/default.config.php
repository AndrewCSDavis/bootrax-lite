<?php 
	/*  basic Config */
			
			$page = @$_GET['_url'];	
			$site_name = 'bootrax-lite';
			$homepageslug = 'home';		// viewed from 																
			$docroot = $site_name;			// assets/templates/home => "http://".$_SERVER['HTTP_HOST'].'/'.$site_name."/home" 
			$root = "http://".$_SERVER['HTTP_HOST'].'/'.$site_name."/";
			$urlstructure = array( // these are set according the structure of the url
				'currentpage', // e.g.. /home
				'subpage' // e.g.. /home/sub
			);
			
?>