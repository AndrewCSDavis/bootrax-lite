<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="../master.xsl"/>
	
	<xsl:template match="data" mode="page">
		 <xsl:apply-templates select="blog/entry[publish/@handle = 'on']" mode="posts"/>
	</xsl:template>
	<xsl:template match="blog/entry" mode="posts">
		<div class="entry">
			<div class="entry-header">
				<img src="{$workspace}{post-image/@file}"/>
				<div class="title">
					<h4><xsl:value-of select="title"/></h4>
				</div>
			</div>
			<p class="pull-left;"><xsl:value-of select="post" disable-output-escaping="yes"/></p>
			<small class="pull-left"><xsl:value-of select="date"/></small><small class="pull-right">author :- <xsl:value-of select="author"/></small>
			<hr class="pull-left" style="width:100%;"/>
			</div>
	</xsl:template>
</xsl:stylesheet>