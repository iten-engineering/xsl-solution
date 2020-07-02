<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="bild">
		<img>
			<xsl:attribute name="src"><xsl:value-of select="." /></xsl:attribute>
		</img>
	</xsl:template>

</xsl:stylesheet>