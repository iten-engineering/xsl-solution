<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">

	<xsl:template match="/">
		<xsl:call-template name="layout" />
	</xsl:template>

	<xsl:template name="layout">
		<html>
			<head>
				<title>Beispiel Web Site mit xsl:import</title>
				<style type="text/css">
					body { background-color:#000080; color:#ffffff; font-family:Arial;
					font-size:12px; }
					.headline { font-size:24px; }
					tr.head { background-color:#444480; }
					tr.body { background-color:#888880; }
				</style>
			</head>
			<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
				<table border="1" cellspacing="0" cellpadding="0" width="100%"
					height="100%">
					<tr>
						<td colspan="2" height="40">
							<xsl:call-template name="header" />
						</td>
					</tr>
					<tr>
						<td colspan="2" height="20">
							<xsl:call-template name="menubar" />
						</td>
					</tr>
					<tr>
						<td width="100">
							<xsl:call-template name="menutree" />
						</td>
						<td>
							<xsl:call-template name="main" />
						</td>
					</tr>
					<tr>
						<td colspan="2" height="12">
							<xsl:call-template name="footer" />
						</td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
	
	<!-- 
	 * Default Templates. 
	 * Können von den einzelnen Site's überschrieben werden.
	 -->
	
	<xsl:template name="header">
		default header
	</xsl:template>
	
	<xsl:template name="menubar">
		default menubar
	</xsl:template>
	
	<xsl:template name="menutree">
		default menutree
	</xsl:template>
	
	<xsl:template name="footer">
		default footer
	</xsl:template>
	
	<xsl:template name="main">
		default main
	</xsl:template>
	
</xsl:stylesheet>