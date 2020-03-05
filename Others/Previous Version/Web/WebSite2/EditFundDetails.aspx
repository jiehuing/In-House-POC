<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditFundDetails.aspx.cs" Inherits="EditFundDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{ background-color: #cfdae6;

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%; border-collapse: collapse;">
                <tr>
                    <td class="auto-style4" colspan="9"><strong>
                        <asp:TextBox ID="textLatestDate" runat="server" Visible="False" Width="16px" OnTextChanged="textLatestDate_TextChanged"></asp:TextBox>
                        <asp:Label ID="lblEditFundDetails" runat="server" CssClass="auto-style1"></asp:Label>
                        </strong>
                        <asp:TextBox ID="textRegion" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    </td>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:POCConnectionString2 %>" DeleteCommand="DELETE FROM [fundDetail] WHERE [date] = @date AND [ISIN] = @ISIN" InsertCommand="INSERT INTO [fundDetail] ([benchmarkName], [benchmarkTicker], [fundManagerName], [fundSize], [baseCurrency], [noOfHolding], [initalFee], [EIS], [AIS], [leviCharge], [bloombergTicker], [dividend], [inceptionDate], [uint], [TER], [date], [ISIN]) VALUES (@benchmarkName, @benchmarkTicker, @fundManagerName, @fundSize, @baseCurrency, @noOfHolding, @initalFee, @EIS, @AIS, @leviCharge, @bloombergTicker, @dividend, @inceptionDate, @uint, @TER, @date, @ISIN)" SelectCommand="SELECT [benchmarkName], [benchmarkTicker], [fundManagerName], [fundSize], [baseCurrency], [noOfHolding], [initalFee], [EIS], [AIS], [leviCharge], [bloombergTicker], [dividend], [inceptionDate], [uint], [TER], [date], [ISIN] FROM [fundDetail] WHERE (([ISIN] = @ISIN) AND ([date] = @date)) ORDER BY [date] DESC" UpdateCommand="UPDATE [fundDetail] SET [benchmarkName] = @benchmarkName, [benchmarkTicker] = @benchmarkTicker, [fundManagerName] = @fundManagerName, [fundSize] = @fundSize, [baseCurrency] = @baseCurrency, [noOfHolding] = @noOfHolding, [initalFee] = @initalFee, [EIS] = @EIS, [AIS] = @AIS, [leviCharge] = @leviCharge, [bloombergTicker] = @bloombergTicker, [dividend] = @dividend, [inceptionDate] = @inceptionDate, [uint] = @uint, [TER] = @TER WHERE [date] = @date AND [ISIN] = @ISIN">
                            <DeleteParameters>
                                <asp:Parameter DbType="Date" Name="date" />
                                <asp:Parameter Name="ISIN" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="benchmarkName" Type="String" />
                                <asp:Parameter Name="benchmarkTicker" Type="String" />
                                <asp:Parameter Name="fundManagerName" Type="String" />
                                <asp:Parameter Name="fundSize" Type="Decimal" />
                                <asp:Parameter Name="baseCurrency" Type="String" />
                                <asp:Parameter Name="noOfHolding" Type="Int32" />
                                <asp:Parameter Name="initalFee" Type="Int32" />
                                <asp:Parameter Name="EIS" Type="String" />
                                <asp:Parameter Name="AIS" Type="Decimal" />
                                <asp:Parameter Name="leviCharge" Type="String" />
                                <asp:Parameter Name="bloombergTicker" Type="String" />
                                <asp:Parameter Name="dividend" Type="String" />
                                <asp:Parameter DbType="Date" Name="inceptionDate" />
                                <asp:Parameter Name="uint" Type="Decimal" />
                                <asp:Parameter Name="TER" Type="Decimal" />
                                <asp:Parameter DbType="Date" Name="date" />
                                <asp:Parameter Name="ISIN" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="textRegion" Name="ISIN" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="textLatestDate" DbType="Date" Name="date" PropertyName="Text" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="benchmarkName" Type="String" />
                                <asp:Parameter Name="benchmarkTicker" Type="String" />
                                <asp:Parameter Name="fundManagerName" Type="String" />
                                <asp:Parameter Name="fundSize" Type="Decimal" />
                                <asp:Parameter Name="baseCurrency" Type="String" />
                                <asp:Parameter Name="noOfHolding" Type="Int32" />
                                <asp:Parameter Name="initalFee" Type="Int32" />
                                <asp:Parameter Name="EIS" Type="String" />
                                <asp:Parameter Name="AIS" Type="Decimal" />
                                <asp:Parameter Name="leviCharge" Type="String" />
                                <asp:Parameter Name="bloombergTicker" Type="String" />
                                <asp:Parameter Name="dividend" Type="String" />
                                <asp:Parameter DbType="Date" Name="inceptionDate" />
                                <asp:Parameter Name="uint" Type="Decimal" />
                                <asp:Parameter Name="TER" Type="Decimal" />
                                <asp:Parameter DbType="Date" Name="date" />
                                <asp:Parameter Name="ISIN" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        </strong></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15"><strong>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="date,ISIN" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged1">
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
                                date:
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                <br />
                                leviCharge:
                                <asp:Label ID="leviChargeLabel" runat="server" Text='<%# Eval("leviCharge") %>' />
                                <br />
                                bloombergTicker:
                                <asp:Label ID="bloombergTickerLabel" runat="server" Text='<%# Eval("bloombergTicker") %>' />
                                <br />
                                ISIN:
                                <asp:Label ID="ISINLabel" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />
                                dividend:
                                <asp:Label ID="dividendLabel" runat="server" Text='<%# Eval("dividend") %>' />
                                <br />
                                inceptionDate:
                                <asp:Label ID="inceptionDateLabel" runat="server" Text='<%# Eval("inceptionDate") %>' />
                                <br />
                                uint:
                                <asp:Label ID="uintLabel" runat="server" Text='<%# Eval("uint") %>' />
                                <br />
                                TER:
                                <asp:Label ID="TERLabel" runat="server" Text='<%# Eval("TER") %>' />
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
                                <asp:TextBox ID="fundSizeTextBox" runat="server" Text='<%# Bind("fundSize") %>' />
                                <br />
                                Base Currency:
                                <asp:TextBox ID="baseCurrencyTextBox" runat="server" Text='<%# Bind("baseCurrency") %>' />
                                <br />
                                Number of Holding:
                                <asp:TextBox ID="noOfHoldingTextBox" runat="server" Text='<%# Bind("noOfHolding") %>' />
                                <br />
                                Inital Fee:
                                <asp:TextBox ID="initalFeeTextBox" runat="server" Text='<%# Bind("initalFee") %>' />
                                <br />
                                Eligible Investment Scheme:
                                <asp:TextBox ID="EISTextBox" runat="server" Text='<%# Bind("EIS") %>' />
                                <br />
                                All-in-Fee:
                                <asp:TextBox ID="AISTextBox" runat="server" Text='<%# Bind("AIS") %>' />
                                <br />
                                <%--date:
                                <asp:Label ID="dateLabel1" runat="server" Text='<%# Eval("date") %>' />
                                <br />--%>
                                Levy:
                                <asp:TextBox ID="leviChargeTextBox" runat="server" Text='<%# Bind("leviCharge") %>' />
                                <br />
                                Bloomberg Ticker:
                                <asp:TextBox ID="bloombergTickerTextBox" runat="server" Text='<%# Bind("bloombergTicker") %>' />
                                <br />
                                <%--ISIN:
                                <asp:Label ID="ISINLabel1" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />--%>
                                Dividend:
                                <asp:TextBox ID="dividendTextBox" runat="server" Text='<%# Bind("dividend") %>' />
                                <br />
                                Inception Date (Enter in dd/mm/yyyy format):
                                <asp:TextBox ID="inceptionDateTextBox" runat="server" Text='<%# Bind("inceptionDate", "{0:dd/MM/yyyy}") %>' />
                                <br />
                                Unit NAV:
                                <asp:TextBox ID="uintTextBox" runat="server" Text='<%# Bind("uint") %>' />
                                <br />
                                Total Expense Ratio:
                                <asp:TextBox ID="TERTextBox" runat="server" Text='<%# Bind("TER") %>' />
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
                                date:
                                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                <br />
                                Levy:
                                <asp:TextBox ID="leviChargeTextBox" runat="server" Text='<%# Bind("leviCharge") %>' />
                                <br />
                                Bloomberg Ticker:
                                <asp:TextBox ID="bloombergTickerTextBox" runat="server" Text='<%# Bind("bloombergTicker") %>' />
                                <br />
                                ISIN:
                                <asp:TextBox ID="ISINTextBox" runat="server" Text='<%# Bind("ISIN") %>' />
                                <br />
                                dividend:
                                <asp:TextBox ID="dividendTextBox" runat="server" Text='<%# Bind("dividend") %>' />
                                <br />
                                inceptionDate:
                                <asp:TextBox ID="inceptionDateTextBox" runat="server" Text='<%# Bind("inceptionDate") %>' />
                                <br />
                                uint:
                                <asp:TextBox ID="uintTextBox" runat="server" Text='<%# Bind("uint") %>' />
                                <br />
                                TER:
                                <asp:TextBox ID="TERTextBox" runat="server" Text='<%# Bind("TER") %>' />
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
                                Benchmark Name:
                                <asp:Label ID="benchmarkNameLabel" runat="server" Text='<%# Eval("benchmarkName") %>' />
                                <br />
                                Benchmark Ticker:
                                <asp:Label ID="benchmarkTickerLabel" runat="server" Text='<%# Eval("benchmarkTicker") %>' />
                                <br />
                                Fund Manager:
                                <asp:Label ID="fundManagerNameLabel" runat="server" Text='<%# Eval("fundManagerName") %>' />
                                <br />
                                Fund Size:
                                <asp:Label ID="fundSizeLabel" runat="server" Text='<%# Eval("fundSize") %>' />
                                <br />
                                Base Currency:
                                <asp:Label ID="baseCurrencyLabel" runat="server" Text='<%# Eval("baseCurrency") %>' />
                                <br />
                                Number of Holdings:
                                <asp:Label ID="noOfHoldingLabel" runat="server" Text='<%# Eval("noOfHolding") %>' />
                                <br />
                                Inital Fee:
                                <asp:Label ID="initalFeeLabel" runat="server" Text='<%# Eval("initalFee") %>' />
                                <br />
                                Eligible Investment Scheme:
                                <asp:Label ID="EISLabel" runat="server" Text='<%# Eval("EIS") %>' />
                                <br />
                                All-in-Fee:
                                <asp:Label ID="AISLabel" runat="server" Text='<%# Eval("AIS") %>' />
                                <br />
                               <%-- Date:
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                <br />--%>
                                Levy:
                                <asp:Label ID="leviChargeLabel" runat="server" Text='<%# Eval("leviCharge") %>' />
                                <br />
                                Bloomberg Ticker:
                                <asp:Label ID="bloombergTickerLabel" runat="server" Text='<%# Eval("bloombergTicker") %>' />
                                <br />
                                <%--ISIN Code:
                                <asp:Label ID="ISINLabel" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />--%>
                                Dividend Frequency:
                                <asp:Label ID="dividendLabel" runat="server" Text='<%# Eval("dividend") %>' />
                                <br />
                                Inception Date:
                                <asp:Label ID="inceptionDateLabel" runat="server" Text='<%# Bind("inceptionDate", "{0:dd/MM/yyyy}") %>' />
                                <br />
                                Unit NAV:
                                <asp:Label ID="uintLabel" runat="server" Text='<%# Eval("uint") %>' />
                                <br />
                                Total Expense Ratio:
                                <asp:Label ID="TERLabel" runat="server" Text='<%# Eval("TER") %>' />
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
                                date:
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                <br />
                                leviCharge:
                                <asp:Label ID="leviChargeLabel" runat="server" Text='<%# Eval("leviCharge") %>' />
                                <br />
                                bloombergTicker:
                                <asp:Label ID="bloombergTickerLabel" runat="server" Text='<%# Eval("bloombergTicker") %>' />
                                <br />
                                ISIN:
                                <asp:Label ID="ISINLabel" runat="server" Text='<%# Eval("ISIN") %>' />
                                <br />
                                dividend:
                                <asp:Label ID="dividendLabel" runat="server" Text='<%# Eval("dividend") %>' />
                                <br />
                                inceptionDate:
                                <asp:Label ID="inceptionDateLabel" runat="server" Text='<%# Eval("inceptionDate") %>' />
                                <br />
                                uint:
                                <asp:Label ID="uintLabel" runat="server" Text='<%# Eval("uint") %>' />
                                <br />
                                TER:
                                <asp:Label ID="TERLabel" runat="server" Text='<%# Eval("TER") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <br />
                                <br />
                                </span>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        </strong></td>
                    <td class="auto-style2" style="background-color: transparent; border-collapse: collapse;">&nbsp;</td>
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
