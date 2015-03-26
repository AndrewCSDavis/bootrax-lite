<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="../master.xsl"/>
	
	<xsl:template match="data" mode="page">			
				<h4 class="pull-left text-primary portion-heading">About Bootrax</h4>
				<div class="pull-left" style="width:100%;">
					<xsl:apply-templates select="about-me/entry[publish='on']" mode="content"/>						
				</div>
	</xsl:template>		
	<xsl:template match="about-me/entry" mode="content">			
			<div class="entry">
			<p class="pull-left;"><xsl:value-of select="content" disable-output-escaping="yes"/></p>
			<small class="pull-right">author :- <xsl:value-of select="name"/></small>
			<hr class="pull-left" style="width:100%;"/>
			</div>
	</xsl:template>
</xsl:stylesheet>