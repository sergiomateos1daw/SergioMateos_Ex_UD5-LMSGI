<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <body>
                <h1>IES Nuestra Señora de los Remedios</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="ies/ciclos/ciclo">
                    <xsl:choose>
                        <xsl:when test="decretoTitulo/@año &gt; 2009">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td bgcolor="Green"><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="decretoTitulo/@año = 2009">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td bgcolor="Blue"><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="decretoTitulo/@año &lt; 2009">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td bgcolor="Red"><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:when>
                    </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>