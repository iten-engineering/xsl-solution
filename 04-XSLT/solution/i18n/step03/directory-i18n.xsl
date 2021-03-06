<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:param name="lang">de</xsl:param>
  <xsl:variable name="text" select="document('texte.xml')/texte/text[@lang = $lang]"/>

	<!-- Start Verarbeitung --> 
	<xsl:template match = "/">
	<html>
		<head>
			<title><xsl:value-of select="$text/titel"/></title>
		</head>
		<body>
			<h1><xsl:value-of select="$text/titel"/></h1>
			<table border="1">
				<tr>
					<th><xsl:value-of select="$text/vorname"/></th>
					<th><xsl:value-of select="$text/nachname"/></th>
				</tr>
   				<!-- Aufruf weitere Templates für alle XML Personen -->
   				<xsl:apply-templates select="directory/person"/>
			</table>
		</body>
	</html>
	</xsl:template>

	<!-- Template für die Elemente "person"  -->
	<xsl:template match="//person">
	<tr>
  		<td><xsl:value-of select="vorname"/></td>
  		<td><xsl:value-of select="nachname"/></td>
	</tr>
	</xsl:template>

</xsl:stylesheet>