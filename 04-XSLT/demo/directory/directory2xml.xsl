<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

	<!-- Start Verarbeitung --> 
	<xsl:template match="/">
	<liste>
		<xsl:for-each select="directory/person">
			<xsl:sort select="nachname" />
			<name>
				<xsl:value-of select="nachname" />
				<xsl:text> </xsl:text>
				<xsl:value-of select="vorname" />
			</name>
		</xsl:for-each>
	</liste>
	</xsl:template>

</xsl:transform>