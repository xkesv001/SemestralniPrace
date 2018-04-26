<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



    <xsl:template match="/">
        <html>
            <body>
                <h1>Webové stránky s vloženým videem</h1>
                <xsl:for-each select="weboveStranky/webovaStranka">
                <h2> <xsl:value-of select="w_vlastnosti/w_nazev"/>(<xsl:value-of select="@w_id"/>)</h2>
                    <h3>Vlastnosti</h3>
                        <xsl:for-each select="w_vlastnosti">
                            <ul>
                                <li><xsl:value-of select="w_podNazev"/></li>
                                <li><xsl:value-of select="w_framework"/></li>
                                <li><xsl:value-of select="w_URL"/></li>
                                <li><xsl:value-of select="w_pocetNavstev"/></li>
                                <li><xsl:value-of select="w_pocetLiku"/></li>
                                <li><xsl:value-of select="w_pocetDisliku"/></li>
                            </ul>
                        </xsl:for-each>
                    <h3>Videa(<xsl:value-of select="w_videa/@w_v_id"/>)</h3>

                        <table>
                            <thead>
                                <tr>
                                    <th>
                                        Název
                                    </th>
                                    <th>
                                        Slovní popis
                                    </th>
                                    <th>
                                        Host Server
                                    </th>
                                    <th>
                                        Kodek
                                    </th>
                                    <th>
                                        Délka
                                    </th>
                                    <th>
                                        Počet sledování
                                    </th>
                                    <th>
                                        Počet sdílení
                                    </th>
                                    <th>
                                        Počet liků
                                    </th>
                                    <th>
                                        Počet disliků
                                    </th>
                                    <th>
                                        Počet breků
                                    </th>
                                    <th>
                                        Počet pobavení
                                    </th>
                                    <th>
                                        Počet rozčilení
                                    </th>

                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="w_videa/video">
                                    <tr>
                                        <td><xsl:value-of select="v_nazev"/>(<xsl:value-of select="@v_id"/>)</td>
                                        <td><xsl:value-of select="v_slovniPopis"/></td>
                                        <td><xsl:value-of select="v_hostServer"/></td>
                                        <td><xsl:value-of select="v_codec"/></td>
                                        <td><xsl:value-of select="v_delka"/></td>
                                        <td><xsl:value-of select="v_pocetSledovani"/></td>
                                        <td><xsl:value-of select="v_pocetSdileni"/></td>
                                        <td><xsl:value-of select="v_pocetLiku"/></td>
                                        <td><xsl:value-of select="v_pocetDisliku"/></td>
                                        <td><xsl:value-of select="v_pocetBreku"/></td>
                                        <td><xsl:value-of select="v_pocetPobaveni"/></td>
                                        <td><xsl:value-of select="v_pocetRozcileni"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    <h3>Autoři videí</h3>
                        <table>
                            <xsl:for-each select="w_videa/video">
                                <tbody>
                                    <tr>
                                        <td><xsl:value-of select="v_autor/v_a_jmeno"/></td>
                                        <td><xsl:value-of select="v_autor/v_a_prijmeni"/></td>
                                        <td><xsl:value-of select="v_autor/v_a_prezdivka"/>(<xsl:value-of select="v_autor/@v_a_id"/>)</td>
                                        <td><xsl:value-of select="v_autor/v_a_email"/></td>
                                        <td><xsl:value-of select="v_autor/v_a_slovniPopis"/></td>
                                        <td><xsl:value-of select="v_autor/v_a_rating"/></td>
                                        <td><xsl:value-of select="v_autor/v_a_pocetSubscribe"/></td>
                                        <td><xsl:value-of select="v_autor/v_a_pocetBlokaci"/></td>
                                    </tr>
                                </tbody>

                            </xsl:for-each>
                        </table>
                    <h3>Autor stránky(<xsl:value-of select="w_vlastnosti/w_autor/@w_a_id"/>)</h3>
                    <table>
                        <xsl:for-each select="w_vlastnosti/w_autor">
                            <tbody>
                                <tr>
                                    <td><xsl:value-of select="w_a_jmeno"/></td>
                                    <td><xsl:value-of select="w_a_prijmeni"/></td>
                                    <td><xsl:value-of select="w_a_prezdivka"/></td>
                                    <td><xsl:value-of select="w_a_email"/></td>
                                    <td><xsl:value-of select="w_a_slovniPopis"/></td>
                                    <td><xsl:value-of select="w_a_rating"/></td>
                                </tr>
                            </tbody>

                        </xsl:for-each>
                    </table>
                 </xsl:for-each>


            </body>
        </html>
    </xsl:template>



    

</xsl:stylesheet>