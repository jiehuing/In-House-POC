<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditFundDetails.aspx.cs" Inherits="EditFundDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{ background: rgb(9,31,164);
background: linear-gradient(180deg, rgba(9,31,164,0.5163107479319853) 0%, rgba(255,255,255,1) 25%);}

        }
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            width: 382px;
        }
        .auto-style3 {
            width: 459px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 49px;
        }
        .auto-style6 {
            width: 96px;
        }
        .auto-style10 {
            width: 459px;
            text-align: right;
        }
        .auto-style11 {
            text-align: right;
            width: 881px;
        }
        .auto-style12 {
            width: 881px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            width: 769px;
        }
        .auto-style15 {
            width: 1243px;
        }
        .auto-style16 {
            width: 166px;
            height: 162px;
        }
        </style>
    <%--    <script type ="text/javascript" lang="javascript" >
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
</script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%; border-collapse: collapse;">
                <tr>
                    <td class="auto-style4" colspan="9">
                        <img alt="logo" class="auto-style16" src="Images/logo.png" /></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:TextBox ID="textLatest" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <strong>
                        <asp:TextBox ID="textLatestDate" runat="server" Visible="False" Width="16px" OnTextChanged="textLatestDate_TextChanged"></asp:TextBox>
                        </strong>
                        <asp:TextBox ID="textRegion" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textIsin" runat="server" Visible="False" Width="16px"></asp:TextBox>
                        <asp:TextBox ID="textDate" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    </td>
                    <td class="auto-style4" colspan="3"><strong style="font-family: Arial, Helvetica, sans-serif">
                        <asp:Label ID="lblEditFundDetails" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" ForeColor="#333399"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>
                        <div class="auto-style13">
                        </div>
                        </strong></td>
                    <td class="auto-style14" style="font-family: Arial, Helvetica, sans-serif; border-color: #333399">&nbsp;</td>
                    <td class="auto-style15" style="font-family: Arial, Helvetica, sans-serif; border-color: #333399"><strong>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ISIN" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged1">
                            <AlternatingItemTemplate>
                                <span style="">UID:
                                <asp:Label ID="UIDLabel" runat="server" Text='<%# Eval("UID") %>' />
                                <br />
                                benchmarkName:
                                <asp:Label ID="benchmarkNameLabel" runat="server" Text='<%# Eval("benchmarkName") %>' />
                                <br />
                                benchmarkTicker:
                                <asp:Label ID="benchmarkTickerLabel" runat="server" Text='<%# Eval("benchmarkTicker") %>' />
                                <br />
                                fundManagerName:
                                <asp:Label ID="fundManagerNameLabel" runat="server" Text='<%# Eval("fundManagerName") %>' />
                                <br />
                                fundSize:
                                <asp:Label ID="fundSizeLabel" runat="server" Text='<%# Eval("fundSize") %>' />
                                <br />
                                baseCurrency:
                                <asp:Label ID="baseCurrencyLabel" runat="server" Text='<%# Eval("baseCurrency") %>' />
                                <br />
                                noOfHolding:
                                <asp:Label ID="noOfHoldingLabel" runat="server" Text='<%# Eval("noOfHolding") %>' />
                                <br />
                                initalFee:
                                <asp:Label ID="initalFeeLabel" runat="server" Text='<%# Eval("initalFee") %>' />
                                <br />
                                EIS:
                                <asp:Label ID="EISLabel" runat="server" Text='<%# Eval("EIS") %>' />
                                <br />
                                AIS:
                                <asp:Label ID="AISLabel" runat="server" Text='<%# Eval("AIS") %>' />
                                <br />
                                TER:
                                <asp:Label ID="TERLabel" runat="server" Text='<%# Eval("TER") %>' />
                                <br />
                                uint:
                                <asp:Label ID="uintLabel" runat="server" Text='<%# Eval("uint") %>' />
                                <br />
                                inceptionDate:
                                <asp:Label ID="inceptionDateLabel" runat="server" Text='<%# Eval("inceptionDate") %>' />
                                <br />
                                dividend:
                                <asp:Label ID="dividendLabel" runat="server" Text='<%# Eval("dividend") %>' />
                                <br />
                                ISIN:
                                <asp:Label ID="ISINLabel" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />
                                bloombergTicker:
                                <asp:Label ID="bloombergTickerLabel" runat="server" Text='<%# Eval("bloombergTicker") %>' />
                                <br />
                                leviCharge:
                                <asp:Label ID="leviChargeLabel" runat="server" Text='<%# Eval("leviCharge") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <br />
                                <br />
                                </span>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <span style=""><%--UID:
                                <asp:TextBox ID="UIDTextBox" runat="server" Text='<%# Bind("UID") %>' />
                                <br />--%>
                                <asp:TextBox ID="UIDTextBox" runat="server" Visible="false" Text='<%# Bind("UID") %>' />
                                <br />
                                Benchmark Name:
                                <asp:TextBox ID="benchmarkNameTextBox" runat="server" Text='<%# Bind("benchmarkName") %>' />
                                <br />
                                Benchmark Ticker:
                                <asp:TextBox ID="benchmarkTickerTextBox" runat="server" Text='<%# Bind("benchmarkTicker") %>' />
                                <br />
                                Fund Manager Name:
                                <asp:TextBox ID="fundManagerNameTextBox" runat="server" Text='<%# Bind("fundManagerName") %>' />
                                <br />
                                Fund Size:
                                <asp:TextBox ID="fundSizeTextBox" runat="server" Text='<%# Bind("fundSize") %>'/>
                                <br />
                                Base Currency:
                                <asp:TextBox ID="baseCurrencyTextBox" runat="server" Text='<%# Bind("baseCurrency") %>' />
                                <br />
                                Number of Holding(s):
                                <asp:TextBox ID="noOfHoldingTextBox" runat="server" Text='<%# Bind("noOfHolding") %>' />
                                <br />
                                Initial Fee:
                                <asp:TextBox ID="initalFeeTextBox" runat="server" Text='<%# Bind("initalFee") %>'/>
                                <br />
                                <%--date:
                                <asp:Label ID="dateLabel1" runat="server" Text='<%# Eval("date") %>' />
                                <br />--%>
                                Eligible Investment Scheme ³:
                                <asp:TextBox ID="EISTextBox" runat="server" Text='<%# Bind("EIS") %>'/>
                                <br />
                                All-in-Fee ⁴:
                                <asp:TextBox ID="AISTextBox" runat="server" Text='<%# Bind("AIS") %>'/>
                                <br />
                                Total Expense Ratio ⁵:
                                <asp:TextBox ID="TERTextBox" runat="server" Text='<%# Bind("TER") %>' />
                                <br />
                                Unit NAV:
                                <asp:TextBox ID="uintTextBox" runat="server" Text='<%# Bind("uint") %>' />
                                <br />
                                <%--inceptionDate:--%>
                                <asp:TextBox ID="inceptionDateTextBox" runat="server" Visible="false" Text='<%# Bind("inceptionDate") %>' />
                                <%--<br />--%>
                                <%--ISIN Code:--%>
                                Dividend Frequency:
                                <asp:TextBox ID="dividendTextBox" runat="server" Text='<%# Bind("dividend") %>' />
                                <br />
                                <%--latest:--%>
                                <asp:Label ID="ISINLabel1" runat="server" Visible="false" Text='<%# Eval("ISIN") %>' />
                                <%--<br />--%>
                                Bloomberg Ticker:
                                <asp:TextBox ID="bloombergTickerTextBox" runat="server" Text='<%# Bind("bloombergTicker") %>' />
                                <br />
                                <%--date:--%>
                                Levy:
                                <asp:TextBox ID="leviChargeTextBox" runat="server" Text='<%# Bind("leviCharge") %>' />
                                <br />
                                    <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                <br />
                                <br />
                                </span>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <span style="">UID:
                                <asp:TextBox ID="UIDTextBox" runat="server" Text='<%# Bind("UID") %>' />
                                <br />
                                benchmarkName:
                                <asp:TextBox ID="benchmarkNameTextBox" runat="server" Text='<%# Bind("benchmarkName") %>' />
                                <br />
                                benchmarkTicker:
                                <asp:TextBox ID="benchmarkTickerTextBox" runat="server" Text='<%# Bind("benchmarkTicker") %>' />
                                <br />
                                fundManagerName:
                                <asp:TextBox ID="fundManagerNameTextBox" runat="server" Text='<%# Bind("fundManagerName") %>' />
                                <br />
                                fundSize:
                                <asp:TextBox ID="fundSizeTextBox" runat="server" Text='<%# Bind("fundSize") %>' />
                                <br />
                                baseCurrency:
                                <asp:TextBox ID="baseCurrencyTextBox" runat="server" Text='<%# Bind("baseCurrency") %>' />
                                <br />
                                noOfHolding:
                                <asp:TextBox ID="noOfHoldingTextBox" runat="server" Text='<%# Bind("noOfHolding") %>' />
                                <br />
                                initalFee:
                                <asp:TextBox ID="initalFeeTextBox" runat="server" Text='<%# Bind("initalFee") %>' />
                                <br />
                                EIS:
                                <asp:TextBox ID="EISTextBox" runat="server" Text='<%# Bind("EIS") %>' />
                                <br />
                                AIS:
                                <asp:TextBox ID="AISTextBox" runat="server" Text='<%# Bind("AIS") %>' />
                                <br />
                                TER:
                                <asp:TextBox ID="TERTextBox" runat="server" Text='<%# Bind("TER") %>' />
                                <br />
                                uint:
                                <asp:TextBox ID="uintTextBox" runat="server" Text='<%# Bind("uint") %>' />
                                <br />
                                inceptionDate:
                                <asp:TextBox ID="inceptionDateTextBox" runat="server" Text='<%# Bind("inceptionDate") %>' />
                                <br />
                                dividend:
                                <asp:TextBox ID="dividendTextBox" runat="server" Text='<%# Bind("dividend") %>' />
                                <br />
                                ISIN:
                                <asp:TextBox ID="ISINTextBox" runat="server" Text='<%# Bind("ISIN") %>' />
                                <br />
                                bloombergTicker:
                                <asp:TextBox ID="bloombergTickerTextBox" runat="server" Text='<%# Bind("bloombergTicker") %>' />
                                <br />
                                leviCharge:
                                <asp:TextBox ID="leviChargeTextBox" runat="server" Text='<%# Bind("leviCharge") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                <br />
                                <br />
                                </span>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <span style=""><%--UID:
                                <asp:Label ID="UIDLabel" runat="server" Text='<%# Eval("UID") %>' />
                                <br />--%>
                                <asp:Label ID="UIDLabel" runat="server" Visible="false" Text='<%# Eval("UID") %>' />
                                <br />
                                Benchmark Name: <asp:Label ID="benchmarkNameLabel" runat="server" Text='<%# Eval("benchmarkName") %>' />
                                <br />
                                Benchmark Ticker:
                                <asp:Label ID="benchmarkTickerLabel" runat="server" Text='<%# Eval("benchmarkTicker") %>' />
                                <br />
                                Fund Manager Name:
                                <asp:Label ID="fundManagerNameLabel" runat="server" Text='<%# Eval("fundManagerName") %>' />
                                <br />
                                Fund Size:
                                <asp:Label ID="fundSizeLabel" runat="server" Text='<%# Eval("fundSize") %>' />
                                <br />
                                Base Currency:
                                <asp:Label ID="baseCurrencyLabel" runat="server" Text='<%# Eval("baseCurrency") %>' />
                                <br />
                                Number of Holding(s):
                                <asp:Label ID="noOfHoldingLabel" runat="server" Text='<%# Eval("noOfHolding") %>' />
                                <br />
                                Initial Fee:
                                <asp:Label ID="initalFeeLabel" runat="server" Text='<%# Eval("initalFee") %>' />
                                <br />
                                Eligible Investment Scheme ³:
                                <asp:Label ID="EISLabel" runat="server" Text='<%# Eval("EIS") %>' />
                                <br />
                                All-in-Fee ⁴:
                                <asp:Label ID="AISLabel" runat="server" Text='<%# Eval("AIS") %>' />
                                <br />
                               <%-- Date:
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                <br />--%>
                                Total Expense Ratio ⁵:
                                <asp:Label ID="TERLabel" runat="server" Text='<%# Eval("TER") %>' />
                                <br />
                               
                                Unit NAV:
                                <asp:Label ID="uintLabel" runat="server" Text='<%# Eval("uint") %>' />
                                <br />
                                Inception Date:
                                <asp:Label ID="inceptionDateLabel" runat="server" Text='<%# Eval("inceptionDate") %>' />
                                <br />
                                Dividend Frequency:
                                <asp:Label ID="dividendLabel" runat="server" Text='<%# Eval("dividend") %>' />
                                <br />
                                ISIN Code:
                                <asp:Label ID="ISINLabel" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />
                                <%--ISIN Code:
                                <asp:Label ID="ISINLabel" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />--%>
                                Bloomberg Ticker:
                                <asp:Label ID="bloombergTickerLabel" runat="server" Text='<%# Eval("bloombergTicker") %>' />
                               
                                <br />
                                Levy:
                                <asp:Label ID="leviChargeLabel" runat="server" Text='<%# Eval("leviCharge") %>' />
                                <br />
                               <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <br />
                               
                                <br />
                                </span>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <span style="">UID:
                                <asp:Label ID="UIDLabel" runat="server" Text='<%# Eval("UID") %>' />
                                <br />
                                benchmarkName:
                                <asp:Label ID="benchmarkNameLabel" runat="server"  Text='<%# Eval("benchmarkName") %>' />
                                <br />
                                benchmarkTicker:
                                <asp:Label ID="benchmarkTickerLabel" runat="server" Text='<%# Eval("benchmarkTicker") %>' />
                                <br />
                                fundManagerName:
                                <asp:Label ID="fundManagerNameLabel" runat="server" Text='<%# Eval("fundManagerName") %>' />
                                <br />
                                fundSize:
                                <asp:Label ID="fundSizeLabel" runat="server" Text='<%# Eval("fundSize") %>' />
                                <br />
                                baseCurrency:
                                <asp:Label ID="baseCurrencyLabel" runat="server" Text='<%# Eval("baseCurrency") %>' />
                                <br />
                                noOfHolding:
                                <asp:Label ID="noOfHoldingLabel" runat="server" Text='<%# Eval("noOfHolding") %>' />
                                <br />
                                initalFee:
                                <asp:Label ID="initalFeeLabel" runat="server" Text='<%# Eval("initalFee") %>' />
                                <br />
                                EIS:
                                <asp:Label ID="EISLabel" runat="server" Text='<%# Eval("EIS") %>' />
                                <br />
                                AIS:
                                <asp:Label ID="AISLabel" runat="server" Text='<%# Eval("AIS") %>' />
                                <br />
                                TER:
                                <asp:Label ID="TERLabel" runat="server" Text='<%# Eval("TER") %>' />
                                <br />
                                uint:
                                <asp:Label ID="uintLabel" runat="server" Text='<%# Eval("uint") %>' />
                                <br />
                                inceptionDate:
                                <asp:Label ID="inceptionDateLabel" runat="server" Text='<%# Eval("inceptionDate") %>' />
                                <br />
                                dividend:
                                <asp:Label ID="dividendLabel" runat="server" Text='<%# Eval("dividend") %>' />
                                <br />
                                ISIN:
                                <asp:Label ID="ISINLabel" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />
                                bloombergTicker:
                                <asp:Label ID="bloombergTickerLabel" runat="server" Text='<%# Eval("bloombergTicker") %>' />
                                <br />
                                leviCharge:
                                <asp:Label ID="leviChargeLabel" runat="server" Text='<%# Eval("leviCharge") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <br />
                                <br />
                                </span>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:POC team 1ConnectionString3 %>" DeleteCommand="DELETE FROM [fundDetail] WHERE [ISIN] = @ISIN" InsertCommand="INSERT INTO [fundDetail] ([UID], [benchmarkName], [benchmarkTicker], [fundManagerName], [fundSize], [baseCurrency], [noOfHolding], [initalFee], [EIS], [AIS], [TER], [uint], [inceptionDate], [dividend], [ISIN], [bloombergTicker], [leviCharge]) VALUES (@UID, @benchmarkName, @benchmarkTicker, @fundManagerName, @fundSize, @baseCurrency, @noOfHolding, @initalFee, @EIS, @AIS, @TER, @uint, @inceptionDate, @dividend, @ISIN, @bloombergTicker, @leviCharge)" SelectCommand="SELECT [UID], [benchmarkName], [benchmarkTicker], [fundManagerName], [fundSize], [baseCurrency], [noOfHolding], [initalFee], [EIS], [AIS], [TER], [uint], convert(varchar,inceptionDate,103) AS inceptionDate, [dividend], [ISIN], [bloombergTicker], [leviCharge] FROM [fundDetail] WHERE ([ISIN] = @ISIN)" UpdateCommand="UPDATE [fundDetail] SET [UID] = @UID, [benchmarkName] = @benchmarkName, [benchmarkTicker] = @benchmarkTicker, [fundManagerName] = @fundManagerName, [fundSize] = @fundSize, [baseCurrency] = @baseCurrency, [noOfHolding] = @noOfHolding, [initalFee] = @initalFee, [EIS] = @EIS, [AIS] = @AIS, [TER] = @TER, [uint] = @uint, [inceptionDate] = @inceptionDate, [dividend] = @dividend, [bloombergTicker] = @bloombergTicker, [leviCharge] = @leviCharge WHERE [ISIN] = @ISIN; DELETE FROM [pastfundDetail] WHERE [ISIN] = @ISIN AND [date] = convert(date,getdate()); INSERT INTO [pastFundDetail] ([UID], [benchmarkName], [benchmarkTicker], [fundManagerName], [fundSize], [baseCurrency], [noOfHolding], [initalFee], [EIS], [AIS], [TER], [uint], [inceptionDate], [dividend], [ISIN], [bloombergTicker], [leviCharge],[date]) VALUES (@UID, @benchmarkName, @benchmarkTicker, @fundManagerName, @fundSize, @baseCurrency, @noOfHolding, @initalFee, @EIS, @AIS, @TER, @uint, @inceptionDate, @dividend, @ISIN, @bloombergTicker, @leviCharge, getdate())">
                            <DeleteParameters>
                                <asp:Parameter Name="ISIN" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UID" Type="String" />
                                <asp:Parameter Name="benchmarkName" Type="String" />
                                <asp:Parameter Name="benchmarkTicker" Type="String" />
                                <asp:Parameter Name="fundManagerName" Type="String" />
                                <asp:Parameter Name="fundSize" Type="String" />
                                <asp:Parameter Name="baseCurrency" Type="String" />
                                <asp:Parameter Name="noOfHolding" Type="Int32" />
                                <asp:Parameter Name="initalFee" Type="String" />
                                <asp:Parameter Name="EIS" Type="String" />
                                <asp:Parameter Name="AIS" Type="String" />
                                <asp:Parameter Name="TER" Type="String" />
                                <asp:Parameter Name="uint" Type="String" />
                                <asp:Parameter DbType="Date" Name="inceptionDate" />
                                <asp:Parameter Name="dividend" Type="String" />
                                <asp:Parameter Name="ISIN" Type="String" />
                                <asp:Parameter Name="bloombergTicker" Type="String" />
                                <asp:Parameter Name="leviCharge" Type="Decimal" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="textRegion" Name="ISIN" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="UID" Type="String" />
                                <asp:Parameter Name="benchmarkName" Type="String" />
                                <asp:Parameter Name="benchmarkTicker" Type="String" />
                                <asp:Parameter Name="fundManagerName" Type="String" />
                                <asp:Parameter Name="fundSize" Type="String" />
                                <asp:Parameter Name="baseCurrency" Type="String" />
                                <asp:Parameter Name="noOfHolding" Type="Int32" />
                                <asp:Parameter Name="initalFee" Type="String" />
                                <asp:Parameter Name="EIS" Type="String" />
                                <asp:Parameter Name="AIS" Type="String" />
                                <asp:Parameter Name="TER" Type="String" />
                                <asp:Parameter Name="uint" Type="String" />
                                <asp:Parameter DbType="Date" Name="inceptionDate" />
                                <asp:Parameter Name="dividend" Type="String" />
                                <asp:Parameter Name="bloombergTicker" Type="String" />
                                <asp:Parameter Name="leviCharge" Type="Decimal" />
                                <asp:Parameter Name="ISIN" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        </strong></td>
                    <td class="auto-style2" style="border-color: #333399; font-family: Arial, Helvetica, sans-serif;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="btnBack" runat="server" Height="30px" Text="Back" Width="70px" OnClick="btnBack_Click" />
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style10" style="background-color: transparent; border-collapse: collapse;">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogout" runat="server" Height="30px" Text="Logout" Width="70px" OnClick="btnLogout_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style3" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
