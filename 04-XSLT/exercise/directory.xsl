<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Start Verarbeitung -->
	<xsl:template match="/"> 
	<html>
		<head>
			<title>Personenverzeichnis Demo</title>
		</head>
		<body>
			<ol>
				<li>Expliziter Aufruf eines Templates:</li>
				<xsl:call-template name="showNames" />

				<li>Inhalte ausgeben:</li>
				<xsl:call-template name="showContent" />

				<li>Einfache Fallunterscheidung:</li>
				<xsl:call-template name="if" />

				<li>Auswahl:</li>
				<xsl:call-template name="choose" />

				<li>Schlaufen:</li>
				<xsl:call-template name="for" />

				<li>Sortieren:</li>
				<xsl:call-template name="sort" />

				<li>Nummerierung:</li>
				<xsl:call-template name="number" />
			</ol>
		</body>
	</html>
	</xsl:template>
 
	<xsl:template name="showNames">
	<ul>
	<li>todo</li>
	</ul>
	</xsl:template>

	<xsl:template name="showContent">
	<ul>
	<li>todo</li>
	</ul>
	</xsl:template>

	<xsl:template name="if">
	<ul>
	<li>todo</li>
	</ul>
	</xsl:template>


	<xsl:template name="choose">
	<ul>
	<li>todo</li>
	</ul>
	</xsl:template>


	<xsl:template name="for">
	<ul>
	<li>todo</li>
	</ul>
	</xsl:template>

	<xsl:template name="sort">
	<ul>
	<li>todo</li>
	</ul>
	</xsl:template>

	<xsl:template name="number">
	<ul>
	<li>todo</li>
	</ul>
	</xsl:template>

</xsl:stylesheet>