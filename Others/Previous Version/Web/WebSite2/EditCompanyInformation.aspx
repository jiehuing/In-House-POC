<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCompanyInformation.aspx.cs" Inherits="EditCompanyInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
    background-color: #cfdae6;
}

        .auto-style1 {
            font-weight: bold;
            font-size: xx-large;
        }
        .auto-style65 {
            width: 493px;
        }
        .auto-style66 {
            height: 269px;
        }
        .auto-style67 {
            width: 125px;
        }
        .auto-style68 {
            width: 186px;
        }
        .auto-style69 {
            width: 12px;
        }
        .auto-style71 {
            width: 125px;
            text-align: left;
        }
        .auto-style72 {
            width: 21px;
        }
        .auto-style27 {
            height: 35px;
            margin-left: 0px;
        }
        .auto-style73 {
            text-align: right;
        }
        .auto-style74 {
            width: 186px;
            text-align: right;
        }
        .auto-style75 {
            width: 186px;
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td colspan="3">
                    <asp:Label ID="lblCompanyInformation" runat="server" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71"><strong>
                        <asp:Label ID="lblCompanyName" runat="server" Text="Company Name:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68">
                        <asp:TextBox ID="txtCompanyName" runat="server" OnTextChanged="txtCompanyName_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="textReadStatus" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadCompanyName" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadSector" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadFHR" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadFundTicker" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadIsin" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textRegion" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71"><strong>
                        <asp:Label ID="lblSector" runat="server" Text="Sector:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68">
                        <asp:TextBox ID="txtSector" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71"><strong>
                        <asp:Label ID="lblTS" runat="server" Text="Ticker Symbol:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68">
                        <asp:TextBox ID="txtTickerSymbol" runat="server" Width="80px"></asp:TextBox>
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71"><strong>
                        <asp:Label ID="lblPOH" runat="server" Text="% of Holding:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68">
                        <asp:TextBox ID="txtPercentage" runat="server" Width="30px"></asp:TextBox>
                    </td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">&nbsp;</td>
                    <td class="auto-style75">
                        <asp:Button ID="btnClear" runat="server" Height="30px" OnClick="btnClear_Click" Text="Clear" Width="70px" />
                    &nbsp;<asp:Button ID="btnAdd" runat="server" Height="30px" Text="Add" Width="70px" OnClick="btnAdd_Click"/>
                    </td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">&nbsp;</td>
                    <td class="auto-style74">
                        &nbsp;</td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="9">
                        <asp:GridView ID="gridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="fundTicker" DataSourceID="SqlDataSource1" Height="244px" CellPadding="3" GridLines="Vertical" Width="1066px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField HeaderText="Company Name" DataField="companyName" SortExpression="companyName" />
                                <asp:BoundField HeaderText="Sector" DataField="sector" SortExpression="sector" />
                                <asp:BoundField HeaderText="Ticker Symbol" DataField="fundTicker" ReadOnly="True" SortExpression="fundTicker" />
                                <asp:BoundField HeaderText="% of Holding" DataField="fixedHoldingRatio" SortExpression="fixedHoldingRatio" />
                                <asp:TemplateField ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick="return confirm('Are you sure you want to save the changes?')"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle Width="30px" />
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?')"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle Width="30px" />
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:POCConnectionString %>" 
                            SelectCommand="SELECT [status], [companyName], [sector], [fixedHoldingRatio], [fundTicker], [ISIN] FROM [companyinfo] WHERE (([status] = @status) AND ([ISIN] = @ISIN)) ORDER BY [companyName], [sector]"
                            UpdateCommand="Update [companyinfo] SET companyName=@companyName,sector=@sector,fixedHoldingRatio=@fixedHoldingRatio Where fundTicker=@fundTicker"
                            DeleteCommand="Update [companyinfo] SET status='dead' Where fundTicker=@fundTicker">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="alive" Name="status" Type="String" />
                                <asp:ControlParameter ControlID="textRegion" Name="ISIN" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">
                    <asp:Button ID="btnBack" runat="server" Height="30px" OnClick="btnBack_Click" Text="Back" Width="70px" />
                    </td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style73">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="auto-style27" Height="30px" Width="70px" OnClick="btnLogout_Click" onclientclick="return confirm('Are you sure you want to Logout?')" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
