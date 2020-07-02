<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="greeting">
	  <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

	  	<!-- 
	  	 * master - simpleA4
	  	--> 
		<fo:layout-master-set>
	    	<fo:simple-page-master 	
	    		master-name="simpleA4" 
	    		page-height="29.7cm" page-width="21cm" 
	    		margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
	      		<fo:region-body/>
	    	</fo:simple-page-master>
	  	</fo:layout-master-set>
	
	  	<!-- 
	  	 * child - simpleA4
	  	--> 
	  	<fo:page-sequence 
	  		master-reference="simpleA4">
	    	<fo:flow flow-name="xsl-region-body">
				<fo:block>
					<xsl:for-each select="message">
					<xsl:sort />
						<xsl:value-of select="." />
						<xsl:text> </xsl:text>
					</xsl:for-each>
				</fo:block>
	    	</fo:flow>
	  	</fo:page-sequence>

	  </fo:root>
	</xsl:template>

</xsl:stylesheet>
