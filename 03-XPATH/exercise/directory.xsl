<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match = "/">
	<html>
		<head>
			<title>XPath Übung - Directory</title>
		</head>
		<body>
			<h1>XPath Übung - Directory</h1>
			<ol>
				<li>Alle Personen:</li>
				<xsl:call-template name="t01" />

				<li>Alle Vornamen:</li>
				<xsl:call-template name="t02" />

				<li>Nachname der zweiten Person:</li>
				<xsl:call-template name="t03" />

				<li>Nachname der letzten Person:</li>
				<xsl:call-template name="t04" />

				<li>Liste der weiblichen Teilnehmer:</li>
				<xsl:call-template name="t05" />

				<li>Liste aller Teilnehmer ab 30 Jahre:</li>
				<xsl:call-template name="t06" />

				<li>Anzahl Personen:</li>
				<xsl:call-template name="t07" />

				<li>Anzahl Personen mit Vorname Klaus:</li>
				<xsl:call-template name="t08" />

				<li>Durchschnittsalter aller Personen:</li>
				<xsl:call-template name="t09" />

				<li>Teilnehmerliste mit Anrede, Vorname und Nachname:</li>
				<xsl:call-template name="t10" />
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

	<xsl:template name="t06">
		<ul>
			<xsl:for-each select="todo">
				<li><xsl:value-of select="." /></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:template name="t07">
		<ul>
			<li><xsl:value-of select="todo" /></li>
		</ul>
	</xsl:template>

	<xsl:template name="t08">
		<ul>
			<li><xsl:value-of select="todo" /></li>
		</ul>
	</xsl:template>

	<xsl:template name="t09">
		<ul>
			<li><xsl:value-of select="todo" /></li>
		</ul>
	</xsl:template>

	<xsl:template name="t10">
		<ul>
			<xsl:for-each select="//person">
				<li><xsl:value-of select="todo" /></li>
			</xsl:for-each>
		</ul>
	</xsl:template>
	

</xsl:stylesheet>