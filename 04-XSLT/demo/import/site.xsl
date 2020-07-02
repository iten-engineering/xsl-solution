<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	
	<xsl:import href="layout.xsl" />

	<xsl:template match="/">
		<xsl:call-template name="layout" />
	</xsl:template>

	<!--
	 * Für die Templates, die auskommeniert sind, werden automatisch 
	 * die Default Templates des layout.xsl Stylesheets verwendet.
	-->
	
	<!--  
	<xsl:template name="header">
		my header
	</xsl:template>

	<xsl:template name="menubar">
		my menubar
	</xsl:template>

	<xsl:template name="menutree">
		my menutree
	</xsl:template>

	<xsl:template name="footer">
		my footer
	</xsl:template>
 	-->
	
	
	<xsl:template name="main">
		<p>
			<br /><br /><br />
			<xsl:value-of select="." />
			<br /><br /><br />
		</p>
	</xsl:template>

</xsl:stylesheet>