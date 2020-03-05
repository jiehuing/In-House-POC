﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GeneratePdfGlobal.aspx.cs" Inherits="GeneratePdfPrestige" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {background: rgb(9,31,164);
background: linear-gradient(180deg, rgba(9,31,164,0.5163107479319853) 0%, rgba(255,255,255,1) 25%);       
}
        .auto-style1 {
            font-weight: bold;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 297px;
        }
        .auto-style5 {
            width: 307px;
        }
        .auto-style10 {
            color: #003399;
        }
        .auto-style12 {
            width: 1018px;
        }
        .auto-style26 {
            width: 45px;
        }
        .auto-style32 {
            width: 105%;
            height: 1327px;
            margin-right: 0px;
        }
        .auto-style41 {
            width: 25px;
        }
        .auto-style42 {
            width: 5px;
        }
        .auto-style50 {
            width: 297px;
            height: 28px;
        }
        .auto-style51 {
            height: 28px;
        }
        .auto-style52 {
            width: 45px;
            text-align: center;
            height: 28px;
        }
        .auto-style53 {
            width: 25px;
            text-align: center;
            height: 28px;
        }
        .auto-style54 {
            width: 5px;
            text-align: center;
            height: 28px;
        }
        .auto-style62 {
            font-size: small;
        }
        .auto-style63 {
            font-weight: normal;
        }
        .auto-style64 {
            text-align: center;
            font-size: small;
            height: 32px;
        }
        .auto-style67 {
            width: 292px;
        }
        .auto-style69 {
            width: 292px;
            height: 28px;
        }
        .auto-style88 {
            height: 21px;
        }
        .auto-style91 {
            width: 45px;
            table-layout: auto;
            text-align: center;
            height: 21px;
        }
        .auto-style92 {
            width: 25px;
            text-align: center;
            height: 21px;
        }
        .auto-style93 {
            width: 5px;
            text-align: center;
            height: 21px;
        }
        .auto-style94 {
            text-align: center;
            height: 21px;
        }
        .auto-style95 {
            text-align: center;
            height: 21px;
            width: 273px;
        }
        .auto-style107 {
            height: 32px;
            width: 307px;
        }
        .auto-style108 {
            width: 45px;
            table-layout: auto;
            text-align: center;
            height: 32px;
        }
        .auto-style109 {
            width: 25px;
            text-align: center;
            height: 32px;
        }
        .auto-style110 {
            width: 5px;
            text-align: center;
            height: 32px;
        }
        .auto-style111 {
            text-align: center;
            height: 32px;
        }
        .auto-style112 {
            text-align: center;
            height: 32px;
            width: 273px;
        }
        .auto-style124 {
            width: 45px;
            table-layout: auto;
            text-align: center;
            height: 23px;
        }
        .auto-style128 {
            width: 25px;
            text-align: center;
            height: 23px;
        }
        .auto-style129 {
            width: 5px;
            text-align: center;
            height: 23px;
        }
        .auto-style131 {
            text-align: center;
            height: 23px;
            width: 273px;
        }
        .auto-style132 {
            height: 23px;
        }
        .auto-style135 {
            text-align: center;
            height: 23px;
        }
        .auto-style139 {
            width: 45px;
            table-layout: auto;
            text-align: center;
            height: 8px;
        }
        .auto-style140 {
            width: 25px;
            text-align: center;
            height: 8px;
        }
        .auto-style141 {
            width: 5px;
            text-align: center;
            height: 8px;
        }
        .auto-style143 {
            text-align: center;
            height: 8px;
            width: 273px;
        }
        .auto-style144 {
            height: 8px;
        }
        .auto-style145 {
            width: 297px;
            height: 8px;
        }
        .auto-style146 {
            width: 292px;
            height: 8px;
        }
        .auto-style147 {
            text-align: center;
            height: 8px;
        }
        .auto-style148 {
            width: 59px;
        }
        .auto-style149 {
            width: 59px;
            text-align: center;
            height: 28px;
        }
        .auto-style173 {
            width: 1018px;
            height: 18px;
        }
        .auto-style174 {
            width: 307px;
            height: 18px;
        }
        .auto-style175 {
            width: 297px;
            text-align: center;
            height: 18px;
        }
        .auto-style176 {
            width: 292px;
            text-align: center;
            height: 18px;
        }
        .auto-style178 {
            width: 45px;
            height: 18px;
        }
        .auto-style179 {
            width: 25px;
            height: 18px;
        }
        .auto-style180 {
            width: 5px;
            height: 18px;
        }
        .auto-style181 {
            width: 59px;
            height: 18px;
        }
        .auto-style182 {
            height: 18px;
        }
        .auto-style184 {
            width: 1018px;
            height: 16px;
        }
        .auto-style185 {
            width: 307px;
            height: 16px;
        }
        .auto-style186 {
            width: 297px;
            text-align: center;
            height: 16px;
        }
        .auto-style187 {
            width: 292px;
            text-align: center;
            height: 16px;
        }
        .auto-style189 {
            width: 45px;
            height: 16px;
        }
        .auto-style190 {
            width: 25px;
            height: 16px;
        }
        .auto-style191 {
            width: 5px;
            height: 16px;
        }
        .auto-style192 {
            width: 59px;
            height: 16px;
        }
        .auto-style193 {
            height: 16px;
        }
        .auto-style195 {
            width: 1018px;
            height: 11px;
        }
        .auto-style196 {
            width: 307px;
            height: 11px;
        }
        .auto-style197 {
            width: 297px;
            height: 11px;
        }
        .auto-style198 {
            width: 292px;
            height: 11px;
        }
        .auto-style199 {
            height: 11px;
        }
        .auto-style200 {
            width: 45px;
            height: 11px;
        }
        .auto-style201 {
            width: 25px;
            height: 11px;
        }
        .auto-style202 {
            width: 5px;
            height: 11px;
        }
        .auto-style203 {
            width: 59px;
            height: 11px;
        }
        .auto-style210 {
            width: 1018px;
            height: 8px;
        }
        .auto-style213 {
            width: 45px;
            height: 8px;
        }
        .auto-style214 {
            width: 25px;
            height: 8px;
        }
        .auto-style215 {
            width: 5px;
            height: 8px;
        }
        .auto-style216 {
            width: 59px;
            height: 8px;
        }
        .auto-style238 {
            width: 307px;
            height: 10px;
        }
        .auto-style241 {
            height: 10px;
        }
        .auto-style245 {
            width: 59px;
            height: 10px;
            text-align: right;
        }
        .auto-style264 {
            width: 59px;
            height: 14px;
            text-align: right;
        }
        .auto-style265 {
            height: 8px;
            width: 307px;
        }
        .auto-style266 {
            height: 23px;
            width: 307px;
        }
        .auto-style267 {
            height: 21px;
            width: 307px;
        }
        .auto-style287 {
            width: 307px;
            height: 26px;
        }
        .auto-style290 {
            width: 45px;
            height: 26px;
        }
        .auto-style291 {
            width: 25px;
            height: 26px;
        }
        .auto-style292 {
            width: 5px;
            height: 26px;
        }
        .auto-style293 {
            width: 59px;
            height: 26px;
        }
        .auto-style294 {
            height: 26px;
        }
        .auto-style295 {
            width: 297px;
            height: 26px;
        }
        .auto-style296 {
            width: 292px;
            height: 26px;
        }
        .auto-style297 {
            width: 59px;
            height: 8px;
            text-align: right;
        }
        .auto-style303 {
            width: 59px;
            text-align: right;
            height: 16px;
        }
        .auto-style306 {
            width: 307px;
            height: 14px;
        }
        .auto-style307 {
            height: 14px;
        }
        .auto-style308 {
            height: 48px;
        }
        .auto-style309 {
            text-align: center;
        }
        .auto-style310 {
            height: 48px;
            width: 184px;
        }
        .auto-style315 {
            width: 184px;
            height: 16px;
        }
        .auto-style316 {
            width: 184px;
            height: 18px;
        }
        .auto-style321 {
            width: 184px;
            text-align: center;
            height: 28px;
        }
        .auto-style322 {
            width: 184px;
            height: 26px;
        }
        .auto-style323 {
            width: 184px;
            height: 11px;
        }
        .auto-style324 {
            width: 184px;
            height: 8px;
        }
        .auto-style325 {
            width: 273px;
            height: 10px;
            text-align: right;
        }
        .auto-style326 {
            width: 273px;
            height: 8px;
            text-align: right;
        }
        .auto-style327 {
            width: 273px;
            height: 14px;
            text-align: right;
        }
        .auto-style328 {
            width: 273px;
            text-align: right;
            height: 16px;
        }
        .auto-style329 {
            width: 184px;
        }
        .auto-style332 {
            width: 424px;
            height: 16px;
        }
        .auto-style333 {
            width: 424px;
            height: 18px;
        }
        .auto-style334 {
            width: 424px;
            height: 11px;
        }
        .auto-style335 {
            height: 8px;
            width: 424px;
        }
        .auto-style337 {
            width: 424px;
        }
        .auto-style340 {
            width: 168px;
        }
        .auto-style342 {
            height: 48px;
            text-align: center;
        }
        .auto-style343 {
            width: 176px;
            text-align: center;
        }
        .auto-style344 {
            height: 16px;
            width: 22px;
        }
        .auto-style345 {
            height: 18px;
            width: 22px;
        }
        .auto-style346 {
            text-align: center;
            height: 32px;
            width: 22px;
        }
        .auto-style347 {
            text-align: center;
            height: 8px;
            width: 22px;
        }
        .auto-style348 {
            text-align: center;
            height: 23px;
            width: 22px;
        }
        .auto-style349 {
            text-align: center;
            height: 21px;
            width: 22px;
        }
        .auto-style350 {
            text-align: center;
            height: 28px;
            width: 22px;
        }
        .auto-style351 {
            height: 26px;
            width: 22px;
        }
        .auto-style352 {
            height: 11px;
            width: 22px;
        }
        .auto-style353 {
            height: 8px;
            width: 22px;
        }
        .auto-style354 {
            width: 22px;
        }
        .auto-style366 {
            text-align: center;
            height: 32px;
            width: 211px;
        }
        .auto-style367 {
            text-align: center;
            height: 8px;
            width: 211px;
        }
        .auto-style368 {
            text-align: center;
            height: 23px;
            width: 211px;
        }
        .auto-style369 {
            text-align: center;
            height: 21px;
            width: 211px;
        }
        .auto-style370 {
            width: 211px;
            height: 16px;
        }
        .auto-style371 {
            width: 211px;
            height: 18px;
        }
        .auto-style372 {
            width: 211px;
            text-align: center;
            height: 28px;
        }
        .auto-style373 {
            width: 211px;
            height: 26px;
        }
        .auto-style374 {
            width: 211px;
            height: 11px;
        }
        .auto-style375 {
            width: 211px;
            height: 8px;
        }
        .auto-style376 {
            width: 211px;
            height: 10px;
            text-align: right;
        }
        .auto-style377 {
            width: 211px;
            height: 8px;
            text-align: right;
        }
        .auto-style378 {
            width: 211px;
            height: 14px;
            text-align: right;
        }
        .auto-style379 {
            width: 211px;
            text-align: right;
            height: 16px;
        }
        .auto-style380 {
            width: 211px;
        }
        .auto-style381 {
            width: 273px;
            height: 16px;
        }
        .auto-style382 {
            width: 273px;
            height: 18px;
        }
        .auto-style383 {
            width: 273px;
            text-align: center;
            height: 28px;
        }
        .auto-style384 {
            width: 273px;
            height: 26px;
        }
        .auto-style385 {
            width: 273px;
            height: 11px;
        }
        .auto-style386 {
            width: 273px;
            height: 8px;
        }
        .auto-style387 {
            width: 273px;
        }
        .auto-style388 {
            width: 207px;
            height: 195px;
            float: right;
        }
        .auto-style389 {
            width: 307px;
            height: 28px;
        }
        </style>
</head>
<body style="height: 2382px">
    <form id="form1" runat="server" class="autosize" style="width:70%">
        <table style="border-collapse: collapse;" class="auto-style32">
            <tr>
                <td colspan="12" class="auto-style342" style="font-family: Arial, Helvetica, sans-serif">
                    <img alt="logo" class="auto-style388" src="Images/logo.png" /></td>
                <td class="auto-style310">
                    &nbsp;</td>
                <td class="auto-style308">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="12" class="auto-style342" style="font-family: Arial, Helvetica, sans-serif; color: #333399;">
                    <asp:Label ID="lblSearchData" runat="server" CssClass="auto-style1" Font-Names="Arial"></asp:Label>
                    <br />
                    <asp:Label ID="lblSearchDate" runat="server"></asp:Label>
                </td>
                <td class="auto-style310">
                    &nbsp;</td>
                <td class="auto-style308">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="12" class="auto-style308">
                    <asp:TextBox ID="textSearchNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSearchBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSearchOffer" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textOyaNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textOyaBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textOyaOffer" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSmaNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSmaBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSmaOffer" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textTmaNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textTmaBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textTmaOffer" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textOmaNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textOmaBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textOmaOffer" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textYtdNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textYtdBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textYtdOffer" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSiNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSiBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSiOffer" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSearchDate" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textNav" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textBi" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textSiDate" runat="server" Width="16px" Visible="False" OnTextChanged="textSiDate_TextChanged"></asp:TextBox>
                    <asp:TextBox ID="textInceptYear" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textInceptMonth" runat="server" Width="16px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="textGetLatestDate" runat="server" Visible="False" Width="16px"></asp:TextBox>
                </td>
                <td class="auto-style310">
                    &nbsp;</td>
                <td class="auto-style308">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style332"></td>
                <td class="auto-style184"><strong>
                    <asp:Label ID="lblPO" runat="server" CssClass="auto-style10" Text="Performance Overview" Font-Names="Arial"></asp:Label>
                    </strong></td>
                <td class="auto-style185"></td>
                <td class="auto-style186">
                    </td>
                <td class="auto-style187">
                    </td>
                <td class="auto-style193"></td>
                <td class="auto-style189"></td>
                <td class="auto-style190"></td>
                <td class="auto-style191"></td>
                <td class="auto-style344"></td>
                <td class="auto-style370"></td>
                <td class="auto-style381"></td>
                <td class="auto-style315">&nbsp;</td>
                <td class="auto-style192">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style333"></td>
                <td class="auto-style173"><strong>
                    <asp:Label ID="lblIndex" runat="server" Text="Indexed Performance since Inception (Bid-Bid)" CssClass="auto-style62" Font-Names="Arial"></asp:Label>
                    </strong></td>
                <td class="auto-style174"></td>
                <td class="auto-style175">
                    </td>
                <td class="auto-style176">
                    </td>
                <td class="auto-style182"></td>
                <td class="auto-style178"></td>
                <td class="auto-style179"></td>
                <td class="auto-style180"></td>
                <td class="auto-style345"></td>
                <td class="auto-style371"></td>
                <td class="auto-style382"></td>
                <td class="auto-style316" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style181" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style333">&nbsp;</td>
                <td class="auto-style12" rowspan="10" style="font-family: Arial, Helvetica, sans-serif">
                    <asp:Chart ID="chart1" runat="server" OnLoad="chart1_Load" Width="358px" Height="221px" BorderlineColor="Navy" BorderlineDashStyle="Solid" BorderlineWidth="2">
                        <series>
                            <asp:Series ChartType="Line" Name="Series1" Color="Red">
                            </asp:Series>
                            <asp:Series ChartArea="ChartArea1" ChartType="Line" Color="Blue" Name="Series2">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td class="auto-style174">&nbsp;</td>
                <td class="auto-style175">
                    &nbsp;</td>
                <td class="auto-style176">
                    &nbsp;</td>
                <td class="auto-style182">&nbsp;</td>
                <td class="auto-style178">&nbsp;</td>
                <td class="auto-style179">&nbsp;</td>
                <td class="auto-style180">&nbsp;</td>
                <td class="auto-style345">&nbsp;</td>
                <td class="auto-style371">&nbsp;</td>
                <td class="auto-style382">&nbsp;</td>
                <td class="auto-style316" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style181" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style333">&nbsp;</td>
                <td class="auto-style174">&nbsp;</td>
                <td class="auto-style175">
                    &nbsp;</td>
                <td class="auto-style176">
                    &nbsp;</td>
                <td class="auto-style182">&nbsp;</td>
                <td class="auto-style178">&nbsp;</td>
                <td class="auto-style179">&nbsp;</td>
                <td class="auto-style180">&nbsp;</td>
                <td class="auto-style345">&nbsp;</td>
                <td class="auto-style371">&nbsp;</td>
                <td class="auto-style382">&nbsp;</td>
                <td class="auto-style316" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style181" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style333">&nbsp;</td>
                <td class="auto-style174">&nbsp;</td>
                <td class="auto-style175">
                    &nbsp;</td>
                <td class="auto-style176">
                    &nbsp;</td>
                <td class="auto-style182">&nbsp;</td>
                <td class="auto-style178">&nbsp;</td>
                <td class="auto-style179">&nbsp;</td>
                <td class="auto-style180">&nbsp;</td>
                <td class="auto-style345">&nbsp;</td>
                <td class="auto-style371">&nbsp;</td>
                <td class="auto-style382">&nbsp;</td>
                <td class="auto-style316" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style181" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td rowspan="8" class="auto-style337">
                    &nbsp;</td>
                <td class="auto-style107">
                    &nbsp;</td>
                <td class="auto-style64" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong class="auto-style63">
                    <strong>
                    <asp:Label ID="lblPerformanceHistory" runat="server" Text="Performance History" CssClass="auto-style62" Width="90px" Height="10px"></asp:Label>
                    </strong>
                    </strong></td>
                <td class="auto-style108" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong class="auto-style63">
                    <asp:Label ID="lblYtd" runat="server" Text="Year to Date" Width="60px" CssClass="auto-style62" Font-Bold="True" Height="10px"></asp:Label>
                    </strong></td>
                <td class="auto-style109" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong class="auto-style63">
                    <asp:Label ID="lblOma" runat="server" Text="1 Month" Width="60px" CssClass="auto-style62" Font-Bold="True" Height="10px"></asp:Label>
                    </strong></td>
                <td class="auto-style110" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong class="auto-style63">
                    <asp:Label ID="lblTma" runat="server" Text="3 Months" Width="60px" CssClass="auto-style62" Font-Bold="True" Height="10px"></asp:Label>
                    </strong></td>
                <td class="auto-style111" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong class="auto-style63">
                    <asp:Label ID="lblSma" runat="server" Text="6 Months" Width="60px" CssClass="auto-style62" Font-Bold="True" Height="10px"></asp:Label>
                    </strong></td>
                <td class="auto-style111" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong class="auto-style63">
                    <asp:Label ID="lblOya" runat="server" Text="1 Year" Width="60px" CssClass="auto-style62" Font-Bold="True" Height="10px"></asp:Label>
                    </strong></td>
                <td class="auto-style346" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong class="auto-style63">
                    <asp:Label ID="lblSi" runat="server" Text="Since Inception (p.a.)" CssClass="auto-style62" Font-Bold="True" Width="60px" Height="10px"></asp:Label>
                    </strong></td>
                <td class="auto-style366" style="background-color: transparent;">&nbsp;</td>
                <td class="auto-style112" style="background-color: transparent;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style265">
                    &nbsp;</td>
                <td class="auto-style144" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="lblBidBid" runat="server" Text="Bid-Bid (%)" CssClass="auto-style62" Width="88px" Height="10px"></asp:Label>
                </td>
                <td class="auto-style139" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textYtdBidBid" runat="server" CssClass="auto-style62" Text="Label" Width="70px"></asp:Label>
                </td>
                <td class="auto-style140" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textOmaBidBid" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style141" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textTmaBidBid" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style147" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSmaBidBid" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style147" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textOyaBidBid" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style347" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSiBidBid" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style367" style="background-color: transparent;">
                    &nbsp;</td>
                <td class="auto-style143" style="background-color: transparent;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style266">
                    </td>
                <td class="auto-style132" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="lblOfferBid" runat="server" Text="Offer-Bid ¹ (%)" Width="88px" CssClass="auto-style62" Height="10px"></asp:Label>
                </td>
                <td class="auto-style124" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textYtdOfferBid" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style128" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textOmaOfferBid" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style129" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textTmaOfferBid" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style135" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSmaOfferBid" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style135" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textOyaOfferBid" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style348" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSiOfferBid" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td style="background-color: transparent;" class="auto-style368">
                    &nbsp;</td>
                <td style="background-color: transparent;" class="auto-style131">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style267">
                    </td>
                <td class="auto-style88" style="border: thin solid #C0C0C0; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="lblBenchmark" runat="server" Text="Benchmark (%)" CssClass="auto-style62" Width="88px" Height="10px"></asp:Label>
                </td>
                <td class="auto-style91" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textYtdBenchmark" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style92" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textOmaBenchmark" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style93" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textTmaBenchmark" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style94" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSmaBenchmark" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style94" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textOyaBenchmark" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style349" style="border: thin solid #C0C0C0; background-color: #F2F2F2; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSiBenchmark" runat="server" CssClass="auto-style62" Text="Label" Height="10px" Width="70px"></asp:Label>
                </td>
                <td style="background-color: transparent;" class="auto-style369">
                    &nbsp;</td>
                <td style="background-color: transparent;" class="auto-style95">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style389">
                    </td>
                <td class="auto-style50"></td>
                <td class="auto-style69"></td>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style53"></td>
                <td class="auto-style54"></td>
                <td class="auto-style350"></td>
                <td class="auto-style372"></td>
                <td class="auto-style383"></td>
                <td class="auto-style321" style="background-color: transparent"></td>
                <td class="auto-style149" style="background-color: transparent"></td>
            </tr>
            <tr>
                <td class="auto-style287">
                    </td>
                <td class="auto-style295"></td>
                <td class="auto-style296"></td>
                <td class="auto-style294"></td>
                <td class="auto-style290"></td>
                <td class="auto-style291"></td>
                <td class="auto-style292"></td>
                <td class="auto-style351"></td>
                <td class="auto-style373"></td>
                <td class="auto-style384"></td>
                <td class="auto-style322" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style293" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style287">
                    &nbsp;</td>
                <td class="auto-style295">&nbsp;</td>
                <td class="auto-style296">&nbsp;</td>
                <td class="auto-style294">&nbsp;</td>
                <td class="auto-style290">&nbsp;</td>
                <td class="auto-style291">&nbsp;</td>
                <td class="auto-style292">&nbsp;</td>
                <td class="auto-style351">&nbsp;</td>
                <td class="auto-style373">&nbsp;</td>
                <td class="auto-style384">&nbsp;</td>
                <td class="auto-style322" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style293" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" BackColor="SteelBlue" ForeColor="SteelBlue" Text="....."></asp:Label>
&nbsp;<asp:Label ID="lblBb" runat="server" CssClass="auto-style62" Text="Bid-Bid"></asp:Label>
&nbsp;&nbsp;
                    <asp:Label ID="lblLegend2" runat="server" BackColor="LightSteelBlue" ForeColor="LightSteelBlue" Text="....."></asp:Label>
&nbsp;<asp:Label ID="lblBm" runat="server" CssClass="auto-style62" Text="Benchmark"></asp:Label>
                </td>
                <td class="auto-style287">
                    &nbsp;</td>
                <td class="auto-style295">&nbsp;</td>
                <td class="auto-style296">&nbsp;</td>
                <td class="auto-style294">&nbsp;</td>
                <td class="auto-style290">&nbsp;</td>
                <td class="auto-style291">&nbsp;</td>
                <td class="auto-style292">&nbsp;</td>
                <td class="auto-style351">&nbsp;</td>
                <td class="auto-style373">&nbsp;</td>
                <td class="auto-style384">&nbsp;</td>
                <td class="auto-style322" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style293" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style309" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="auto-style287">
                    &nbsp;</td>
                <td class="auto-style295">&nbsp;</td>
                <td class="auto-style296">&nbsp;</td>
                <td class="auto-style294">&nbsp;</td>
                <td class="auto-style290">&nbsp;</td>
                <td class="auto-style291">&nbsp;</td>
                <td class="auto-style292">&nbsp;</td>
                <td class="auto-style351">&nbsp;</td>
                <td class="auto-style373">&nbsp;</td>
                <td class="auto-style384">&nbsp;</td>
                <td class="auto-style322" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style293" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td class="auto-style287">
                    &nbsp;</td>
                <td class="auto-style295">&nbsp;</td>
                <td class="auto-style296">&nbsp;</td>
                <td class="auto-style294">&nbsp;</td>
                <td class="auto-style290">&nbsp;</td>
                <td class="auto-style291">&nbsp;</td>
                <td class="auto-style292">&nbsp;</td>
                <td class="auto-style351">&nbsp;</td>
                <td class="auto-style373">&nbsp;</td>
                <td class="auto-style384">&nbsp;</td>
                <td class="auto-style322" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style293" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style334"></td>
                <td class="auto-style195">
                    <strong>
                    <asp:Label ID="lblPA" runat="server" CssClass="auto-style10" Text="Portfolio Analysis" Font-Names="Arial"></asp:Label>
                    <br />
                    <asp:Label ID="lblSA" runat="server" CssClass="auto-style62" Text="Sector Allocation (%)" Font-Names="Arial"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style196"></td>
                <td class="auto-style197"></td>
                <td class="auto-style198"></td>
                <td class="auto-style199"></td>
                <td class="auto-style200"></td>
                <td class="auto-style201"></td>
                <td class="auto-style202"></td>
                <td class="auto-style352"></td>
                <td class="auto-style374"></td>
                <td class="auto-style385"></td>
                <td class="auto-style323" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style203" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style335"></td>
                <td class="auto-style210">&nbsp;</td>
                <td class="auto-style265"></td>
                <td class="auto-style145"></td>
                <td class="auto-style146"></td>
                <td class="auto-style144"></td>
                <td class="auto-style213"></td>
                <td class="auto-style214"></td>
                <td class="auto-style215"></td>
                <td class="auto-style353"></td>
                <td class="auto-style375"></td>
                <td class="auto-style386"></td>
                <td class="auto-style324" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style216" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style335">&nbsp;</td>
                <td class="auto-style12" rowspan="10">
                    <asp:Chart ID="chart2" runat="server" Width="333px" Height="229px" Palette="None" PaletteCustomColors="SteelBlue" BorderlineColor="Navy" BorderlineDashStyle="Solid" BorderlineWidth="2">
                        <series>
                            <asp:Series ChartType="Bar" Name="Series1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td class="auto-style265">&nbsp;</td>
                <td class="auto-style145">&nbsp;</td>
                <td class="auto-style146">&nbsp;</td>
                <td class="auto-style144">&nbsp;</td>
                <td class="auto-style213">&nbsp;</td>
                <td class="auto-style214">&nbsp;</td>
                <td class="auto-style215">&nbsp;</td>
                <td class="auto-style353">&nbsp;</td>
                <td class="auto-style375">&nbsp;</td>
                <td class="auto-style386">&nbsp;</td>
                <td class="auto-style324" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style216" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style335">&nbsp;</td>
                <td class="auto-style265">&nbsp;</td>
                <td class="auto-style145">&nbsp;</td>
                <td class="auto-style146">&nbsp;</td>
                <td class="auto-style144">&nbsp;</td>
                <td class="auto-style213">&nbsp;</td>
                <td class="auto-style214">&nbsp;</td>
                <td class="auto-style215">&nbsp;</td>
                <td class="auto-style353">&nbsp;</td>
                <td class="auto-style375">&nbsp;</td>
                <td class="auto-style386">&nbsp;</td>
                <td class="auto-style324" style="background-color: transparent">&nbsp;</td>
                <td class="auto-style216" style="background-color: transparent">&nbsp;</td>
            </tr>
            <tr>
                <td rowspan="8" class="auto-style337">
                    &nbsp;</td>
                <td class="auto-style238"></td>
                <td class="auto-style241" colspan="4" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong>
                    <asp:Label ID="lblT5H" runat="server" CssClass="auto-style62" Text="Top 5 Holdings"></asp:Label>
                    </strong></td>
                <td class="auto-style241" colspan="3" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong>
                    <asp:Label ID="lblSector" runat="server" CssClass="auto-style62" Text="Sector"></asp:Label>
                    </strong></td>
                <td class="auto-style376" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;"><strong>
                    <asp:Label ID="lblPercentage" runat="server" CssClass="auto-style62" Text="%"></asp:Label>
                    </strong></td>
                <td class="auto-style325" style="background-color: transparent;">&nbsp;</td>
                <td class="auto-style245" style="background-color: transparent;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style265"></td>
                <td class="auto-style144" colspan="4" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFHName" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style144" colspan="3" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFHSector" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style377" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFHSectorPercent" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style326" style="background-color: transparent;">
                    &nbsp;</td>
                <td class="auto-style297" style="background-color: transparent;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style306"></td>
                <td class="auto-style307" colspan="4" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSHName" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style307" colspan="3" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSHSector" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style378" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textSHSectorPercent" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style327" style="background-color: transparent;">
                    &nbsp;</td>
                <td class="auto-style264" style="background-color: transparent;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style238"></td>
                <td class="auto-style241" colspan="4" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textTHName" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style241" colspan="3" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textTHSector" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style376" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textTHSectorPercent" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style325" style="background-color: transparent;">
                    &nbsp;</td>
                <td class="auto-style245" style="background-color: transparent;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style185">
                </td>
                <td class="auto-style193" colspan="4" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFourthHName" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style193" colspan="3" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFourthHSector" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style379" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFourthHSectorPercent" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style328" style="background-color: transparent;">
                    &nbsp;</td>
                <td class="auto-style303" style="background-color: transparent;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style185"></td>
                <td class="auto-style193" colspan="4" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFifthHName" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style193" colspan="3" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFifthHSector" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style379" style="border: thin solid #333399; background-color: #F1F1F1; font-family: Arial, Helvetica, sans-serif;">
                    <asp:Label ID="textFifthHSectorPercent" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                </td>
                <td class="auto-style328" style="background-color: transparent;">
                    &nbsp;</td>
                <td class="auto-style303" style="background-color: transparent;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style185"></td>
                <td class="auto-style193" colspan="7" style="border: thin solid #C0C0C0; background-color: #B0C4DE; font-family: Arial, Helvetica, sans-serif;"><strong>
                    <asp:Label ID="lblTotal" runat="server" CssClass="auto-style62" Text="Total"></asp:Label>
                    </strong></td>
                <td class="auto-style379" style="border: thin solid #C0C0C0; background-color: #B0C4DE; font-family: Arial, Helvetica, sans-serif;"><strong>
                    <asp:Label ID="textTotalPercent" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style328" style="background-color: transparent;">&nbsp;</td>
                <td class="auto-style303" style="background-color: transparent;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3"><strong>
                    <asp:Label ID="lblFundDetails" runat="server" ForeColor="#000099" Text="Fund Details" Font-Names="Arial"></asp:Label>
                    </strong></td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">
                    <table style="width: 100%; border-collapse: collapse;">
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblBenchmarkName" runat="server" CssClass="auto-style62" Text="Benchmark"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblBV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblFundManagerName" runat="server" CssClass="auto-style62" Text="Fund Manager"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblFMV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblFundSize" runat="server" CssClass="auto-style62" Text="Fund Size ²"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblFSV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblBaseCurrency" runat="server" CssClass="auto-style62" Text="Base Currency"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblBCV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblNOH" runat="server" CssClass="auto-style62" Text="Number of Holdings"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblNOHV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblIF" runat="server" CssClass="auto-style62" Text="Initial Fee"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblIFV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblEIS" runat="server" CssClass="auto-style62" Text="Eligible Investment Scheme ³"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblEISV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblAIF" runat="server" CssClass="auto-style62" Text="All-in-Fee ⁴"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblAIFV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblTER" runat="server" CssClass="auto-style62" Text="Total Expense Ratio ⁵"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblTERV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblUN" runat="server" CssClass="auto-style62" Text="Unit NAV"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblUNV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblID" runat="server" CssClass="auto-style62" Text="Inception Date"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblIDV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblDF" runat="server" CssClass="auto-style62" Text="Dividend Frequency"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblDFV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblIC" runat="server" CssClass="auto-style62" Text="ISIN Code"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblICV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style340" style="border: thin solid #333399; background-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblBT" runat="server" CssClass="auto-style62" Text="Bloomberg Ticker"></asp:Label>
                            </td>
                            <td class="auto-style343" style="border: thin solid #333399; background-color: #EBEBEB; font-family: Arial, Helvetica, sans-serif;">
                                <asp:Label ID="lblBTV" runat="server" CssClass="auto-style62" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td colspan="9" rowspan="3" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000080">Source: All fund data quoted are Allianz Global Investors/IDS GmbH, as at 31/07/2019, unless stated otherwise. Fund performance is calculated in the respective fund currency with gross dividends re-invested. Investment returns are denominated in the respective base currency. SGD based investors are exposed to non-SGD foreign exchange fluctuations. 1 ) &quot;Offer–Bid&quot; performance data takes into account 5.00% of the initial fee of the investment. 2 ) The Fund size quoted includes all share classes of the Fund. 3 ) Investment using Supplementary Retirement Scheme (“SRS”) monies is only applicable to investors in Singapore. 4 ) The All-in-Fee includes the expenses previously called management and administration fees. 5 ) Total Expense Ratio (TER): Total cost (except transaction costs) charged to the Fund during the last financial year expressed as a ratio of the Fund&#39;s average NAV. For 
                    share classes that have been incepted for less than one year as at close of the last financial year (please refer to the Inception Date in the Fund Details table), the TER will be annualised. For share classes incepted after the close of the last financial year, the TER will be reflected as N/A. Information herein is based on sources we believe to be accurate and reliable as at the date it was made. We reserve the right to revise any information herein at any time without notice. No offer or solicitation to buy or sell securities and no investment advice or recommendation is made herein. In making investment decisions, investors should not rely solely on this publication but should seek independent professional advice. However, if you choose not to seek professional advice, you should consider the suitability of the product for yourself. Past performance of the fund manager(s) and the fund is not indicative of future performance. Prices of units in the Fund and the income from them, 
                    if any, may fall as well as rise and cannot be guaranteed. Distribution payments of the Fund, where applicable, may at the sole discretion of the Manager, be made out of either income and/or net capital gains or capital of the Fund. As a result, it may reduce the Fund’s net asset value. The dividend yields and payouts are not guaranteed and might change depending on the market conditions or at the Manager’s discretion. Investment involves risks including the possible loss of principal amount invested and risks associated with investment in emerging and less developed markets. The Fund may invest in financial derivative instruments and/or structured products and be subject to various risks (including counterparty, liquidity, credit and market risks etc.).Past performance, or any prediction, projection or forecast, is not indicative of future performance. Investors should read the Prospectus obtainable from Allianz Global Investors Singapore Limited or any of its appointed distributors 
                    for further details including the risk factors, before investing. This publication has not been reviewed by the Monetary Authority of Singapore (MAS). MAS authorization/recognition is not a recommendation or endorsement. The issuer of this publication is Allianz Global Investors Singapore Limited (12 Marina View, #13-02 Asia Square Tower 2, Singapore 018961, Company Registration No. 199907169Z).</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style337">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style354">&nbsp;</td>
                <td class="auto-style380">&nbsp;</td>
                <td class="auto-style387">&nbsp;</td>
                <td class="auto-style329">&nbsp;</td>
                <td class="auto-style148">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>