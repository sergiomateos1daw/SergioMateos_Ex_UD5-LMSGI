<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:text>Nombre y apellidos: Sergio Mateos</xsl:text>
         <xsl:for-each select="bib/book">
            <ul>
                <li>
                    <xsl:text></xsl:text><xsl:value-of select="title"/> - "<xsl:value-of select="publisher"/>" (<xsl:value-of select="year"/>)<xsl:text></xsl:text>
                </li>
            </ul>
         </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>