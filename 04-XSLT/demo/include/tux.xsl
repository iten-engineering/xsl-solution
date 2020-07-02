<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:include href="text.xsl" />
	<xsl:include href="bild.xsl" />

	<xsl:template match="/">
		<html>
			<head>
				<title>Tux</title>
			</head>
			<body>
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>