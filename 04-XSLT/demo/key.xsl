<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- create index -->
	<xsl:key name="country" match="/doc/countries/country" use="@code" />

	<!-- use index -->
	<xsl:template match="/">
		<html>
			<body>
				ch : <xsl:value-of select="key('country','ch')" /><br />
				de : <xsl:value-of select="key('country','de')" /><br />
				fr : <xsl:value-of select="key('country','fr')" /><br />
				it : <xsl:value-of select="key('country','it')" /><br />
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>