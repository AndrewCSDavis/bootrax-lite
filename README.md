#BootraX lite#

Directories

- LIB
		-'lib/page_templates' contains the basic files it needs to process and display the template this directory contains:
			+ an XML datasource
			+ a XSL template
			+ a PHP file that contains all the custom loading for each page and breaks up the page loading time to only get the xml datasource in the directory
			+ and finally a config file that allows you to create custom page template parameters  
				
		-'lib/functions' contains a single functions.php file that is included on load of every page, for example.. if you are viewing the home page then you are including the 'assets/templates/home/load.php' file into the main index.php file 

all these functions are helper functions that exist outside of a class and can be declared anywhere.

		- 'lib/nav' contains a navigation helper php file and xml file that gets rewritten on page load (must be left alone) according to the directories in the 'assets/templates' folder
				
		- 'lib/not-found' is a page default if there are no pages or templates inside the 'assets/templates' folder
				
		- 'lib/default.config.php' is the default config file, 
			+ it contains php variables that are available to use in the config.php files of the page you are viewing these are also passed as page params into the templates.
			+ you aree also able to set the site name in this file along with the page you want to use as home
- ASSETS
		- 'css', 'js','images','fonts' all are filled with asset files needed in the templates 
		- 'assets/templates' contains the main directories for all the pages you want to add to the site for instance in order to add a new page you must first create a directory in 'assets/templates' with the name of the folder to be the title of that page to be then copy contents of 'lib/page_templates' to the newly created directory and your page is setup to view.. BUT... in order for any data to be viewed or targeted in the page it must be added to the xml file and xpathed in the template

- a master template is included to create a container around the contents of the page you are viewing and is located in the 'assets/templates' directory
- by adding '<xsl:import href="../master.xsl"/>' to the template stylsheet you can include it into the page allowing all your pages to use the same css stylesheets and same JS files 
						
					
			
		
		
