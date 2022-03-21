<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:text></xsl:text>Nombre y apellidos: Sergio Mateos<xsl:text></xsl:text>
        <ol>
        <xsl:for-each select="bib/libro">
        <xsl:choose>
            <xsl:when test="precio &lt; 101">
                <li>
                    <xsl:text></xsl:text><xsl:value-of select="titulo"/><xsl:text></xsl:text>
                </li>
            </xsl:when>
        </xsl:choose>
        </xsl:for-each>
        </ol>
    </xsl:template>
</xsl:stylesheet>