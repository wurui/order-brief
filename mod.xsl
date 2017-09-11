<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.order-brief">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-order-brief" ox-mod="order-brief">
            <div class="orderwrap">
                <h3>
                    订单信息
                </h3>
                <table class="order-info" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <th>项目</th>
                            <td>
                                <xsl:value-of select="data/order/title"/>
                            </td>
                        </tr>
                        <tr>
                            <th>金额</th>
                            <td>
                                <b class="price">
                                    <xsl:value-of select="format-number(data/order/totalfee, '0.00')"/>
                                </b>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
