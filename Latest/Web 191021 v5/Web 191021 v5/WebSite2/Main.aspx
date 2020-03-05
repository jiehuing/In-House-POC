<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<title></title>


<script type="text/javascript">

</script>

	<style type="text/css">
		body{background: rgb(9,31,164);
background: linear-gradient(180deg, rgba(9,31,164,0.5163107479319853) 0%, rgba(255,255,255,1) 25%);  }
		<a href="#" class="myButton">blue</a>

.myButton:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#476e9e;
}
.myButton:active {
	position:relative;
	top:1px;
}
		.auto-style1 {
			text-align: right;
			width: 193px;
			height: 33px;
		}
		.auto-style3 {
			height: 33px;
		}
		.auto-style8 {
			text-align: right;
		}
		.auto-style9 {
			width: 518px;
			text-align: center;
		}
		.auto-style14 {
			width: 193px;
		}
		.auto-style15 {
			text-align: right;
			width: 193px;
		}
		.auto-style19 {
			text-align: right;
			width: 250px;
		}
		.auto-style24 {
			height: 33px;
			width: 107px;
		}
		.auto-style25 {
			width: 518px;
		}
		.auto-style26 {
			height: 33px;
			width: 518px;
		}
		.auto-style27 {
			height: 35px;
			margin-left: 0px;
		}
		.auto-style28 {
			width: 518px;
			text-align: left;
		}
		.auto-style29 {
			width: 250px;
		}
		.auto-style30 {
			height: 33px;
			width: 250px;
			text-align: right;
		}
		.auto-style31 {
			width: 107px;
		}
		.auto-style42 {
			width: 141px;
			height: 135px;
			float: left;
		}
		</style>
</head>
<body>
	<form id="form1" runat="server">
		<table style="width:100%;">
			<tr>
				<td class="auto-style31" rowspan="2"></td>
				<td class="auto-style14" rowspan="2">&nbsp;</td>
				<td class="auto-style25" rowspan="2">
					<img alt="logo" aria-dropeffect="none" class="auto-style42" src="images/logo.PNG" /><br />
                    <br />
                    <br />
                    <br />
                </td>
				<td class="auto-style19">
					<asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="auto-style27" Height="30px" Width="70px" OnClick="btnLogout_Click" onclientclick="return confirm('Are you sure you want to Logout?')"/>
				</td>
				<td rowspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style19">&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style24"></td>
				<td class="auto-style1" style="font-family: Arial, Helvetica, sans-serif">Option:</td>
				<td class="auto-style26" style="font-family: Arial, Helvetica, sans-serif">
					<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
						<asp:ListItem Value="SearchData" Selected="True">Search Fund Fact Sheet</asp:ListItem>
						<asp:ListItem Value="EditFD">Edit Fund Details</asp:ListItem>
						<asp:ListItem Value="EditCI">Edit Company Information</asp:ListItem>
						<asp:ListItem Value="EditML">Edit Mailing List</asp:ListItem>
					</asp:DropDownList>
				</td>
				<td class="auto-style30">&nbsp;</td>
				<td class="auto-style3">&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15" style="font-family: Arial, Helvetica, sans-serif">Region:</td>
				<td class="auto-style25" style="font-family: Arial, Helvetica, sans-serif">
					<asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
						<asp:ListItem Value="LU172001">Prestige</asp:ListItem>
						<asp:ListItem Value="LU172002">Global</asp:ListItem>
					</asp:RadioButtonList>
				</td>
				<td class="auto-style29">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15">&nbsp;</td>
				<td class="auto-style25">
					&nbsp;</td>
				<td class="auto-style29">
					<asp:TextBox ID="textRegion" runat="server" Visible="False" Width="16px"></asp:TextBox>
				</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31"><asp:Label ID="LabelSpace1" runat="server"></asp:Label>
				</td>
				<td class="auto-style15" rowspan="2" style="font-family: Arial, Helvetica, sans-serif">
					<asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
				</td>
				<td class="auto-style25" style="font-family: Arial, Helvetica, sans-serif">
					&nbsp;<asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
					</asp:DropDownList>
&nbsp;<asp:Label ID="lblMonth" runat="server" Text="Month"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server">
					</asp:DropDownList>
				&nbsp;<asp:Button ID="btnGTD" runat="server" OnClick="btnGTD_Click" Text="Go to month" />
				</td>
				<td class="auto-style29">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">
					<asp:Label ID="LabelSpace2" runat="server" Height="250px" Width="330px"></asp:Label>
				</td>
				<td class="auto-style9">
					<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" Font-Names="Arial" Font-Size="9pt" ForeColor="Black" Height="250px" Width="330px" NextPrevFormat="ShortMonth" BorderStyle="Solid" CellSpacing="1">
						<DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
						<DayStyle BackColor="#CCCCCC" />
						<NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
						<OtherMonthDayStyle ForeColor="#999999" />
						<SelectedDayStyle BackColor="#333399" ForeColor="White" />
						<TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
						<TodayDayStyle BackColor="#999999" ForeColor="White" />
					</asp:Calendar>  
				</td>
				<td class="auto-style29">
					<asp:TextBox ID="textDtp" runat="server" Visible="False" Width="16px"></asp:TextBox>
				</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15">&nbsp;</td>
				<td class="auto-style25">&nbsp;</td>
				<td class="auto-style29">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15">&nbsp;</td>
				<td class="auto-style28">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="myButton" Height="30px" Width="70px" />
				</td>
				<td class="auto-style29">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15">&nbsp;</td>
				<td class="auto-style25">&nbsp;</td>
				<td class="auto-style29">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15">&nbsp;</td>
				<td class="auto-style25">&nbsp;</td>
				<td class="auto-style19">
					&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15">&nbsp;</td>
				<td class="auto-style25">&nbsp;</td>
				<td class="auto-style29">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="auto-style31">&nbsp;</td>
				<td class="auto-style15">&nbsp;</td>
				<td class="auto-style25">&nbsp;</td>
				<td class="auto-style19">&nbsp;</td>
				<td class="auto-style8">&nbsp;</td>
			</tr>
		</table>
	</form>
</body>
</html>
