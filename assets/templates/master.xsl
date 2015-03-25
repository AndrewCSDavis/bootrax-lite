<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<html lang="en">
			
			<head>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
				<meta name="description" content=""/>
				<meta name="author" content=""/>

				<title>Andrew Davis</title>

				<!-- Bootstrap Core CSS -->
				<link href="{$root}assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>	
				<!-- Fonts -->
				<link href="{$root}assets/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
				<link href="{$root}assets/css/animate.css" rel="stylesheet" type="text/css" />
				<!-- Squad theme CSS -->
				<link type="text/css" href="{$root}assets/css/style.css" rel="stylesheet"/>
				<link type="text/css" href="{$root}assets/css/default.min.css" rel="stylesheet"/>	
				<link rel="stylesheet/less" type="text/css" href="{$root}assets/css/mq.less" />
				<script type="text/javascript" src="{$root}assets/js/less.min.js"></script>
			</head>
			
			<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
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