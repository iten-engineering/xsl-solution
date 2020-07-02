<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" xmlns:xalan="http://xml.apache.org/xslt">

	<xsl:template match="/">
		<html>
			<head>
				<title>Invoice</title>
			</head>
			<body>
				<h1>
					Rechnung Nr:
					<xsl:value-of select="./invoice/@nr" />
				</h1>
				<xsl:apply-templates select="invoice/head/customer" />
				<xsl:apply-templates select="invoice/head/distributor" />
				<p>
					<xsl:apply-templates select="invoice/positions" />
				</p>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="customer">
		<h2>Kunde</h2>
		Kundennr:
		<xsl:value-of select="@nr" />
		<br />
		Name:
		<xsl:value-of select="name/lastname" />
		,
		<xsl:value-of select="name/firstname" />
		<br />
		<xsl:apply-templates select="address" />
	</xsl:template>

	<xsl:template match="distributor">
		<h2>Lieferant</h2>
		Firma:
		<xsl:value-of select="company" />
		<br />
		<xsl:apply-templates select="address" />
	</xsl:template>
	<!-- template: address -->
	<xsl:template match="address">
		Adresse:
		<xsl:value-of select="street" />
		,
		<xsl:value-of select="postalcode" />
		&#160;
		<xsl:value-of select="city" />
	</xsl:template>

	<xsl:template match="positions">
		<table border="1" cellspacing="0" cellpadding="2">
			<tr>
				<th>Pos</th>
				<th>Artikel</th>
				<th>Preis</th>
				<th>Währung</th>
			</tr>
			<xsl:apply-templates select="position">
				<xsl:sort select="@pos" data-type="number" />
			</xsl:apply-templates>
		</table>
	</xsl:template>

	<xsl:template match="position">
		<tr>
			<td>
				<xsl:value-of select="@pos" />
			</td>
			<td>
				<xsl:value-of select="description" />
			</td>
			<td>
				<xsl:value-of select="@price" />
			</td>
			<td>
				<xsl:value-of select="@currency" />
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
