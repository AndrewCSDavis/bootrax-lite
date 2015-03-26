<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat" />
	<xsl:template match="/">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
		<html lang="en">			
			<head>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
				<meta name="description" content="a small PHP Application with XML datasource and XSL templating"/>
				<meta name="author" content="trigger121"/>
				<title>BootraX | Lite</title>				
				<link type="text/css" href="{$root}assets/css/bootstrap.css" rel="stylesheet"/>					
				<link type="text/css" href="{$root}assets/css/bootstrap-social.css" rel="stylesheet"/>
				<link type="text/css" href="{$root}assets/css/font-awesome.css" rel="stylesheet" />
				<link type="text/css" href="{$root}assets/css/animate.css" rel="stylesheet" />
				<link type="text/css" href="{$root}assets/css/octicons.css" rel="stylesheet" />
				<link type="text/css" href="{$root}assets/css/style.css" rel="stylesheet"/>
				<link type="text/css" href="{$root}assets/css/default.min.css" rel="stylesheet"/>	
				<link type="text/css" href="{$root}assets/css/mq.css" rel="stylesheet" />				
			</head>
			<body id="page-top">
					<nav class="navbar navbar-default" role="navigation">
									<div class="container">
									<div class="navbar-header">
									  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									  </button>
									  <a class="navbar-brand" href="#"></a>
									</div>
										<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
											<ul class="nav navbar-nav">
												<xsl:apply-templates select="data/pages/entry" mode="nav"/>
											</ul>
										</div>
									</div>
								</nav>
					<div class="container">
						<header class="row">
								
						</header>
						<section class="row">
							<header class="page-header">
								<h1 class="text-primary">Bootrax | <span class="color-lightblue">Lite</span></h1>
								<a class="btn btn-success download" href="{$workspace}zip/bootrax-lite-ver-1.0.zip" id="download" download="bootrax-lite-ver-1.0.zip">Download Bootrax Lite</a>
							</header>
							<article class="col-xs-12 col-md-6 col-lg-8">
								<xsl:apply-templates select="data" mode="page"/>
							</article>
							<aside class="col-xs-12 col-md-6 col-lg-4 aside-content">															
								<heading class="page-header announcement">
									<h3 class="text-primary">Bootrax Admin</h3>
									<h5 class="text-success">(COMING SOON)</h5>
								</heading>
								<div class="social-icons">
									<a class="btn btn-social btn-facebook" href="https://www.facebook.com/sharer/sharer.php?u=https://github.com/trigger121/bootrax-lite">
										<i class="fa fa-facebook"></i>
										<span>Post about Bootrax</span>
									</a>
									<a class="btn btn-social btn-twitter" href="https://twitter.com/home?status=Check%20out%20Bootrax%20at%20https://github.com/trigger121/bootrax-lite">
									  <i class="fa fa-twitter"></i>
									  <span>Tweet about Bootrax</span>
									</a>	
									<a class="btn btn-social btn-github" href="https://github.com/trigger121">
										<i class="fa fa-github"></i>
										<span>Fork this on Github</span>
									</a>									
								</div>
							</aside>
						</section>						
						
					</div>
					<footer>
								<div class="container"></div>
					</footer>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="data/pages/entry" mode="nav">
			<li role="presentation">
				<xsl:if test="$currentpage = title/@handle">
				<xsl:attribute name="class">					
							<xsl:text>active</xsl:text>					
				</xsl:attribute>
				</xsl:if>
				<a href="{$root}{title/@handle}"><xsl:value-of select="title"/></a></li>
	</xsl:template>
	<xsl:template match="//data/pages/entry" mode="page">
			<h3><xsl:value-of select="title"/></h3>
			<p><xsl:value-of select="content"/></p>
	</xsl:template>
</xsl:stylesheet>
