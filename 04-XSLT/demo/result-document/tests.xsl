<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0">

	<xsl:output method="text" />
	<xsl:output method="html" indent="yes" name="html" />

	<xsl:variable name="path"
		select="'file:///c:/course/xml-programming/labs/Exercise02-XSL/04-XSLT/demo/result-document/out'" />

	<xsl:template match="/">

		<!-- create test files (test1.html, test2.html, ...) -->
		<xsl:text>Create Files:</xsl:text>
		<xsl:for-each select="//testrun">
			<xsl:variable name="file" select="concat(@run,'.html')" />
			<xsl:variable name="filename" select="concat($path,'/',$file)" />

			<xsl:value-of select="$filename" />
			<xsl:text> </xsl:text>

			<xsl:result-document href="{$filename}" format="html">
				<xsl:variable name="title" select="concat('Test results - ', @run)" />
				<html>
					<head>
						<title>
							<xsl:value-of select="$title" />
						</title>
					</head>
					<body>
						<h1>
							<xsl:value-of select="$title" />
						</h1>
						<table border="1">
							<tr>
								<td>Test</td>
								<td>Pass</td>
							</tr>
							<xsl:for-each select="test">
								<tr>
									<td>
										<xsl:value-of select="@name" />
									</td>
									<td>
										<xsl:value-of select="@pass" />
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</body>
				</html>
			</xsl:result-document>

		</xsl:for-each>

		<!-- create index file -->
		<xsl:variable name="indexFilename" select="concat($path,'/','index.html')" />
		<xsl:value-of select="$indexFilename" />
		<xsl:result-document href="{$indexFilename}" format="html">
			<html>
				<head>
					<title>Test Index</title>
				</head>
				<body>
					<h1>Test Index</h1>
					<xsl:for-each select="//testrun">
						<a href="{@run}.html">
							<xsl:value-of select="@run" />
						</a>
						<br />
					</xsl:for-each>
				</body>
			</html>
		</xsl:result-document>

	</xsl:template>
</xsl:stylesheet>