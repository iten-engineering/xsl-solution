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
		<xsl:for-each select="//person">
			<xsl:sort select="nachname" />
			<li>
				<xsl:value-of select="nachname" />
				<xsl:text> </xsl:text>
				<xsl:value-of select="vorname" />
			</li>
		</xsl:for-each>
	</ul>
	</xsl:template>

	<xsl:template name="showContent">
	<ul>
		<li>
			<xsl:value-of select="/directory/person[2]/nachname" />
			<xsl:text> ist </xsl:text>
			<xsl:value-of select="/directory/person[2]/@alter" />
			<xsl:text> Jahre alt.</xsl:text>
		</li>
		<!-- Pattern liefert mehrere Personen zurück, ausgegeben wird der erste Treffer -->
		<li>
			<xsl:value-of select="/directory/person" />
		</li>
	</ul>
	</xsl:template>

	<xsl:template name="if">
	<ul>
		<xsl:for-each select="//person">
			<xsl:if test="@anrede='Frau'">
				<li><xsl:value-of select="." /></li>
			</xsl:if>
		</xsl:for-each>
	</ul>
	</xsl:template>

	<xsl:template name="choose">
	<ul>
		<xsl:for-each select="//person">
		<li>
			<xsl:value-of select="." />
			<xsl:text> ist </xsl:text>
			<xsl:choose> 
				<xsl:when test="@alter &lt; 30">
					<xsl:text> jünger als 30 Jahre.</xsl:text>
				</xsl:when> 
				<xsl:when test="@alter &lt;= 40">
					<xsl:text> ist zwischen 30 und 40 Jahre.</xsl:text>
				</xsl:when> 
				<xsl:otherwise> 
					<xsl:text> ist älter als 40 Jahre.</xsl:text>
				</xsl:otherwise> 
			</xsl:choose>
		</li>
		</xsl:for-each>
	</ul>
	</xsl:template>


	<xsl:template name="for">
	<ul>
		<li>
		<xsl:text>Alle Vornamen = </xsl:text>
		<xsl:for-each select="//person/vorname">
			<xsl:value-of select="." />
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>

		<li>
		<xsl:text>Alle Attribute von Person 3 = </xsl:text>
		<xsl:for-each select="//person[3]/@*">
			<xsl:value-of select="." />
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>

		<li>
		<xsl:text>Die Alter aller Personen = </xsl:text>
		<xsl:for-each select="//person/@alter">
			<xsl:value-of select="." />
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>
	</ul>
	</xsl:template>

	<xsl:template name="sort">
	<ul>
		<li>
		<xsl:text>Vornamen sortiert (descending) = </xsl:text>
		<xsl:for-each select="//person/vorname">
			<xsl:sort select="." order="descending"  />
			<xsl:value-of select="." />
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>

		<li>
		<xsl:text>Alle Personen sortiert nach Alter = </xsl:text>
		<xsl:for-each select="//person">
			<xsl:sort select="@alter" />
			<xsl:value-of select="." />
			<xsl:text> (</xsl:text>
			<xsl:value-of select="@alter" />
			<xsl:text>)</xsl:text>
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>

		<li>
		<xsl:text>Personen sortiert nach Nachname und Vorname = </xsl:text>
		<xsl:for-each select="//person">
			<xsl:sort select="nachname" />
			<xsl:sort select="vorname" />
			<xsl:value-of select="." />
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>

	</ul>
	</xsl:template>

	<xsl:template name="number">
	<ul>
		<li>
		<xsl:text>Nummerierung Personen = </xsl:text>
		<xsl:for-each select="//person">
			<xsl:number />
			<xsl:text>) </xsl:text>
			<xsl:value-of select="." />
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>

		<li>
		<xsl:text>Nummerierung Personen = </xsl:text>
		<xsl:for-each select="//person">
			<xsl:number format="a" />
			<xsl:text>) </xsl:text>
			<xsl:value-of select="." />
			<xsl:if test="position() != last()">, </xsl:if>
		</xsl:for-each>
		</li>

	</ul>
	</xsl:template>

</xsl:stylesheet>