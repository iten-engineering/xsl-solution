<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match = "/">
	<html>
		<head>
			<title>XPath Übung - Seminar</title>
		</head>
		<body>
			<h1>XPath Übung - Seminar</h1>
			<ol>
				<li>Ziel:</li>
				<xsl:call-template name="t01" />

				<li>Themenübersicht:</li>
				<xsl:call-template name="t02" />

				<li>Kursleiter:</li>
				<xsl:call-template name="t03" />

				<li>Teilnehmer:</li>
				<xsl:call-template name="t04" />

				<li>Datum von / bis:</li>
				<xsl:call-template name="t05" />

			</ol>
		</body>
	</html>
	</xsl:template>

	<xsl:template name="t01">
		<ul>
			<xsl:for-each select="todo">
				<li><xsl:value-of select="." /></li>
			</xsl:for-each>
		</ul>
	</xsl:template>


	<xsl:template name="t02">
		<ul>
			<xsl:for-each select="todo">
				<li><xsl:value-of select="." /></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:template name="t03">
		<ul>
			<xsl:for-each select="todo">
				<li><xsl:value-of select="." /></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:template name="t04">
		<ul>
			<xsl:for-each select="todo">
				<li><xsl:value-of select="." /></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:template name="t05">
		<ul>
			<xsl:for-each select="todo">
				<li><xsl:value-of select="." /></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

</xsl:stylesheet>