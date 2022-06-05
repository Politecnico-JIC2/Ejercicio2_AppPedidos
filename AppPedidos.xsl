<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="5.0" method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/ListaDePedidos">
        <html>
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
                <link rel="stylesheet" type="text/css" href="AppPedidos.css"/>
            </head>
            <center>
                <body>
                    <br></br>
                    <h1>Información sobre pedidos</h1>
                    <br></br>
                    <section class="container">
                        <table class="table" >
                            <thead>
                                <tr>
                                    <th>NumSerie</th>
                                    <th>Cantidad</th>
                                    <th>Peso</th>
                                     </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="Pedido">
                                    <tr>
                                        <td><xsl:value-of select="NumSerie"/></td>
                                        <td><xsl:value-of select="Cantidad"/></td>
                                        <td><xsl:value-of select="Peso"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </section>
                </body>
            </center>
        </html>
    </xsl:template>
</xsl:stylesheet>