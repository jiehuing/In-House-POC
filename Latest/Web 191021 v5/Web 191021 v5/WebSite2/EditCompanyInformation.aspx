<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCompanyInformation.aspx.cs" Inherits="EditCompanyInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {background: rgb(9,31,164);
background: linear-gradient(180deg, rgba(9,31,164,0.5163107479319853) 0%, rgba(255,255,255,1) 25%); }

        .wrap { white-space: normal; width: 100px; }
        .auto-style1 {
            font-size: x-large;
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
        .auto-style76 {
            width: 137px;
        }
        .auto-style77 {
            width: 137px;
            text-align: right;
        }
        .auto-style78 {
            white-space: normal;
            width: 100px;
            font-size: x-small;
        }
        .auto-style42 {
			width: 141px;
			height: 135px;
			float: left;
            margin-left: 206px;
        }
		.auto-style79 {
            width: 493px;
            text-align: center;
        }
        </style>
    <script type ="text/javascript" lang="javascript" >
        function isDecimal(evt)
    {
       var charCode = (evt.which) ? evt.which : event.keyCode
       var parts = evt.srcElement.value.split('.');
       if(parts.length > 1 && charCode==46)
          return false;
       else
       {
          if (charCode == 46 || (charCode >= 48 && charCode <= 57))
             return true;
          return false;
       }
    }
</script>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68" style="font-family: Arial, Helvetica, sans-serif; color: #000066;">&nbsp;</td>
                    <td colspan="3" style="font-family: Arial, Helvetica, sans-serif; color: #000066;">
					<img alt="logo" aria-dropeffect="none" class="auto-style42" src="images/logo.PNG" /></td>
                    <td style="font-family: Arial, Helvetica, sans-serif; color: #000066;">&nbsp;</td>
                    <td class="auto-style76" style="font-family: Arial, Helvetica, sans-serif; color: #000066;">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style79">
                        <strong>
                    <asp:Label ID="lblCompanyInformation" runat="server" CssClass="auto-style1" Font-Names="Arial" ForeColor="#333399"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71" style="font-family: Arial, Helvetica, sans-serif; color: #000099;"><strong>
                        <asp:Label ID="lblCompanyName" runat="server" Text="Company Name:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68" style="font-family: Arial, Helvetica, sans-serif">
                        <asp:TextBox ID="txtCompanyName" runat="server" OnTextChanged="txtCompanyName_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style72" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td class="auto-style69" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td style="font-family: Arial, Helvetica, sans-serif">
                        <asp:TextBox ID="textReadStatus" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadCompanyName" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadSector" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadFHR" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadFundTicker" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textReadIsin" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textRegion" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="txtTPV" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style76">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71" style="font-family: Arial, Helvetica, sans-serif; color: #000099;"><strong>
                        <asp:Label ID="lblSector" runat="server" Text="Sector:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68" style="font-family: Arial, Helvetica, sans-serif">
                        <asp:TextBox ID="txtSector" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style72" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td class="auto-style69" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style76">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71" style="font-family: Arial, Helvetica, sans-serif; color: #000099;"><strong>
                        <asp:Label ID="lblTS" runat="server" Text="Ticker Symbol:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68" style="font-family: Arial, Helvetica, sans-serif">
                        <asp:TextBox ID="txtTickerSymbol" runat="server" Width="80px"></asp:TextBox>
                    </td>
                    <td class="auto-style72" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td class="auto-style69" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td class="auto-style65" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style76">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71" style="font-family: Arial, Helvetica, sans-serif; color: #000099;"><strong>
                        <asp:Label ID="lblPOH" runat="server" Text="% of Holding:"></asp:Label>
                        </strong></td>
                    <td class="auto-style68" style="font-family: Arial, Helvetica, sans-serif">
                        <asp:TextBox ID="txtPercentage" runat="server" Width="30px" onkeypress="return isDecimal(event)"></asp:TextBox>
                    </td>
                    <td class="auto-style72" style="font-family: Arial, Helvetica, sans-serif">
                        &nbsp;</td>
                    <td class="auto-style69" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                    <td class="auto-style65" style="font-family: Arial, Helvetica, sans-serif">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style77">

                    <asp:Button ID="btnSAC" runat="server" OnClick="Button2_Click" Text="Save All Changes" Height="30px" Width="70px" CssClass="auto-style78" Font-Bold="True" onclientclick="return confirm('Are you sure you want to save all change(s)?')" />
                    </td>
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
                    <td class="auto-style76">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66" colspan="9">
                      
                        <asp:GridView ID="gridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="fundTicker" DataSourceID="SqlDataSource1" Height="244px" CellPadding="3" GridLines="Vertical" Width="1066px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Font-Names="Arial">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField HeaderText="Company Name" DataField="companyName" SortExpression="companyName" />
                                <asp:BoundField DataField="sector" HeaderText="Sector" SortExpression="sector" />
                                <asp:BoundField DataField="fundTicker" HeaderText="Ticker Symbol" ReadOnly="True" SortExpression="fundTicker" />
                                <asp:BoundField DataField="fixedHoldingRatio" HeaderText="% of Holding" SortExpression="fixedHoldingRatio" />
                                <asp:TemplateField ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                    </ItemTemplate>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:POC team 1ConnectionString4 %>" DeleteCommand="UPDATE [tempTable] SET [status] = 'dead' WHERE [fundTicker] = @fundTicker" InsertCommand="INSERT INTO [tempTable] ([status], [companyName], [sector], [fixedHoldingRatio], [fundTicker], [ISIN]) VALUES (@status, @companyName, @sector, @fixedHoldingRatio, @fundTicker, @ISIN)" SelectCommand="SELECT * FROM [tempTable] WHERE (([ISIN] = @ISIN) AND ([status] = @status)) ORDER BY [companyName], [sector]" UpdateCommand="UPDATE [tempTable] SET [companyName] = @companyName, [sector] = @sector, [fixedHoldingRatio] = @fixedHoldingRatio WHERE [fundTicker] = @fundTicker">
                            <DeleteParameters>
                                <asp:Parameter Name="fundTicker" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="status" Type="String" />
                                <asp:Parameter Name="companyName" Type="String" />
                                <asp:Parameter Name="sector" Type="String" />
                                <asp:Parameter Name="fixedHoldingRatio" Type="Decimal" />
                                <asp:Parameter Name="fundTicker" Type="String" />
                                <asp:Parameter Name="ISIN" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="textRegion" Name="ISIN" PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="alive" Name="status" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="status" Type="String" />
                                <asp:Parameter Name="companyName" Type="String" />
                                <asp:Parameter Name="sector" Type="String" />
                                <asp:Parameter Name="fixedHoldingRatio" Type="Decimal" />
                                <asp:Parameter Name="ISIN" Type="String" />
                                <asp:Parameter Name="fundTicker" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67">
                    <asp:Button ID="btnBack" runat="server" Height="30px" OnClick="btnBack_Click" Text="Back" Width="70px" />
                    </td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">

                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style76">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style73">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="wrap" Height="30px" Width="70px" OnClick="btnLogout_Click" onclientclick="return confirm('Are you sure you want to Logout?')" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
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
                    <td class="auto-style76">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
