<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <body>
                Nombre y apellidos: Sergio Mateos
                <table border="1">
                    <xsl:for-each select="bib/libro">
                    <xsl:sort select="precio" order="ascending" data-type="number"/>
                        <tr>
                            <td><xsl:value-of select="precio"/></td>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 100">
                                        <td bgcolor="Red"><xsl:value-of select="titulo"/></td>
                                </xsl:when>
                                <xsl:when test="precio &lt; 100">
                                        <td><xsl:value-of select="titulo"/></td>
                                </xsl:when>
                            </xsl:choose>
                            <td><xsl:value-of select="@año"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>