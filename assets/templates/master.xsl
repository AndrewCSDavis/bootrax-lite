<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<html lang="en">			
			<head>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
				<meta name="description" content="a small PHP Application with XML datasource and XSL templating"/>
				<meta name="author" content="trigger121"/>
				<title>BootraX | Lite</title>				
				<link type="text/css" href="{$root}assets/css/bootstrap.css" rel="stylesheet"/>					
				<link type="text/css" href="{$root}assets/css/font-awesome.min.css" rel="stylesheet" />
				<link type="text/css" href="{$root}assets/css/animate.css" rel="stylesheet" />
				<link type="text/css" href="{$root}assets/css/style.css" rel="stylesheet"/>
				<link type="text/css" href="{$root}assets/css/default.min.css" rel="stylesheet"/>	
				<link type="text/css" href="{$root}assets/css/mq.css" rel="stylesheet" />				
			</head>
			<body id="page-top">
					<xsl:apply-templates select="data" mode="page"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="data/pages/entry" mode="nav">
			<a href="{$root}{title/@handle}"><xsl:value-of select="title"/></a><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="//data/pages/entry" mode="page">
			<h3><xsl:value-of select="title"/></h3>
			<p><xsl:value-of select="content"/></p>
	</xsl:template>
</xsl:stylesheet>
