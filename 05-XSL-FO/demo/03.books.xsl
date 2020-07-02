<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="books">
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

	          	<fo:block font-size="16pt" font-weight="bold" space-after="5mm">
	          		Books
	          	</fo:block>

	          	<fo:block font-size="10pt">
	            	<fo:table border="1pt solid black" table-layout="fixed" width="100%">
	              		<fo:table-column column-width="20%"/>
	              		<fo:table-column column-width="20%"/>
	              		<fo:table-column column-width="20%"/>
	              		<fo:table-column column-width="10%"/>
	              		<fo:table-column column-width="30%"/>
	              		<fo:table-body>
	                		<xsl:apply-templates select="book"/>
	              		</fo:table-body>
	            	</fo:table>
	          	</fo:block>

        	</fo:flow>
      	</fo:page-sequence>

	  </fo:root>
	</xsl:template>
	
	
	<!-- 
	 * book 
	--> 
	<xsl:template match="book">
    	<fo:table-row>
      		<fo:table-cell>
        		<fo:block><xsl:value-of select="title"/></fo:block>
      		</fo:table-cell>
      		<fo:table-cell>
        		<fo:block><xsl:value-of select="author"/></fo:block>
      		</fo:table-cell>
      		<fo:table-cell>
        		<fo:block><xsl:value-of select="publisher"/></fo:block>
      		</fo:table-cell>
      		<fo:table-cell>
        		<fo:block><xsl:value-of select="year"/></fo:block>
      		</fo:table-cell>
      		<fo:table-cell>
        		<fo:block><xsl:value-of select="isbn"/></fo:block>
      		</fo:table-cell>
    	</fo:table-row>
  	</xsl:template>

</xsl:stylesheet>
