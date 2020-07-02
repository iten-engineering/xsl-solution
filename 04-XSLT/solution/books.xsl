<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>Books Sample</title>
			</head>
			<body>
				<h1>Bücherliste</h1>

				<table border="1">
					<!-- table header -->
					<tr>
						<th>Titel</th>
						<th>Autor</th>
						<th>Verlag</th>
						<th>Datum</th>
						<th>ISBN</th>
					</tr>
					<!-- table data -->
					<xsl:apply-templates select="/books/book" />
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/books/book">
		<tr>
			<td>
				<xsl:value-of select="title" />
			</td>
			<td>
				<xsl:value-of select="author" />
			</td>
			<td>
				<xsl:value-of select="publisher" />
			</td>
			<td>
				<xsl:value-of select="year" />
			</td>
			<td>
				<xsl:value-of select="isbn" />
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>