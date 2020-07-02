<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" xmlns:xalan="http://xml.apache.org/xslt">

    <xsl:variable name="chf">CHF</xsl:variable>
    <xsl:variable name="euro">EUR</xsl:variable>

    <xsl:template match="/">
      <html>
        <head>
          <title>Invoice</title>
          <style type="text/css">
            .even { background-color:#aaaaff; }
            .odd { background-color:#6666ff; }
          </style>
        </head>
        <body>
          <h1>Rechnung Nr: <xsl:value-of select="./invoice/@nr"/></h1>
          <xsl:apply-templates select="invoice/head/customer"/>
          <xsl:apply-templates select="invoice/head/distributor"/>
          <p>
            <xsl:apply-templates select="invoice/positions">
              <xsl:with-param name="currency" select="$chf"/>
            </xsl:apply-templates>
          </p>
          <p>
            <xsl:apply-templates select="invoice/positions">
              <xsl:with-param name="currency" select="$euro"/>
            </xsl:apply-templates>            
          </p>
        </body>
      </html>
    </xsl:template>

    <!--
      template: customer
    -->
    <xsl:template match="customer">
      <h2>Kunde</h2>
      Kundennr: <xsl:value-of select="@nr"/><br/>
      Name: <xsl:value-of select="name/lastname"/>, <xsl:value-of select="name/firstname"/><br/>
      <xsl:apply-templates select="address"/>
    </xsl:template>

    <!--
      template: distributor
    -->
    <xsl:template match="distributor">
      <h2>Lieferant</h2>
      Firma: <xsl:value-of select="company"/><br/>
      <xsl:apply-templates select="address"/>
    </xsl:template>

    <!-- 
      template: address
    -->
    <xsl:template match="address">
      Adresse: <xsl:value-of select="street"/>, 
               <xsl:value-of select="postalcode"/>&#160;<xsl:value-of select="city"/>
    </xsl:template>

    <!--
      template: positions
    -->
    <xsl:template match="positions">
      <xsl:param name="currency" />
      <table border="1" cellspacing="0" cellpadding="2">
        <tr>
          <th>Pos</th>
          <th>Artikel</th>
          <th>Preis</th>
          <th>Währung</th>
        </tr>
        <xsl:apply-templates select="position[@currency = $currency]">
          <xsl:sort select="@pos" data-type="number"/>
        </xsl:apply-templates>
      </table>
    </xsl:template>

    <!-- 
      template: position
    -->
    <xsl:template match="position">
      <xsl:if test="position() mod 2 = 0">
        <xsl:call-template name="position-row">
          <xsl:with-param name="class">even</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
      <xsl:if test="not(position() mod 2 = 0)">
        <xsl:call-template name="position-row">
          <xsl:with-param name="class">odd</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
    </xsl:template>

    <!-- 
      template: position-row
    -->
    <xsl:template name="position-row">
      <xsl:param name="class"/>
      <tr>
        <td class="{$class}"><xsl:value-of select="@pos"/></td>
        <td class="{$class}"><xsl:value-of select="description"/></td>
        <td class="{$class}"><xsl:value-of select="@price"/></td>        
        <td class="{$class}"><xsl:value-of select="@currency"/></td>        
      </tr>
    </xsl:template>
</xsl:stylesheet>
