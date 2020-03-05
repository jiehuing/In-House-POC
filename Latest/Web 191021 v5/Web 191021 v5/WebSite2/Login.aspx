<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 

    <title></title>
    <script type="text/javascript" lang="javascript">

</script>

    <style type="text/css">
        img1 {
          opacity: 0.5;
          filter: alpha(opacity=50); /* For IE8 and earlier */
        }
        body {
        
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center; 
        /*background-color: #D0ECEF;*/
        background: rgb(12,6,135);
background: linear-gradient(90deg, rgba(12,6,135,1) 0%, rgba(27,21,142,0.3202323165594363) 0%, rgba(255,255,255,0) 35%, rgba(255,255,255,1) 65%, rgba(27,21,142,0.33143679835215334) 100%);
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            height: 503px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style7 {
            text-align: right;
            width: 242px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: large;
            text-align: right;
        }
        .auto-style11 {
            width: 337px;
            text-align: right;
        }
        .auto-style12 {
            width: 168px;
        }
        .auto-style13 {
            width: 435px;
        }
        .auto-style15 {
            width: 242px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            width: 479px;
            height: 446px;
        }

    </style>
</head>
<body style="height: 712px">
    <form id="form1" runat="server" class="auto-style3">
        <div class="auto-style16">
            <span class="auto-style2"><strong style="font-family: Arial, Helvetica, sans-serif; color: #000099;">
            <img alt="" class="auto-style17" src="Images/logo.png" /><br />
            Fund Fact Sheet Generator</strong></span><br />
            <br />
        </div>
        <table class="auto-style8">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; color: #000099;">Username:       <td class="auto-style12" style="font-family: Arial, Helvetica, sans-serif"> <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style13" style="font-family: Arial, Helvetica, sans-serif">
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="16px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; color: #000099;">Password:</td>
                <td class="auto-style12" style="font-family: Arial, Helvetica, sans-serif"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style13" style="font-family: Arial, Helvetica, sans-serif">
        <span class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" text="Login" height="30px" width="70px" />
                    </span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif">&nbsp;</td>
                <td class="auto-style9" style="font-family: Arial, Helvetica, sans-serif">
                    &nbsp;</td>
                <td class="auto-style9" style="font-family: Arial, Helvetica, sans-serif">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <span class="auto-style4">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <br />
&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
