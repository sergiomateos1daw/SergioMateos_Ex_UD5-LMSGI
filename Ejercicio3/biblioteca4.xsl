<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <body>
                <xsl:text>&#xA;</xsl:text>Nombre y apellidos: Sergio Mateos<xsl:text>&#xA;</xsl:text>
                <table border="1">
                    <tr>
                        <th>Título</th>
                        <th>Autor/es</th>
                        <th>Editor/es</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                    <xsl:sort select= "precio" order="descending"/>
                    <xsl:choose>
                    <xsl:when test="precio &gt; 100">
                        <tr>
                            <td><xsl:value-of select="autor"/></td>
                            <td bgcolor= '#FF0000'><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="editorial"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:when test="precio &lt; 100">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="editorial"/></td>
                        </tr>
                    </xsl:when>
                    </xsl:choose>     
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>