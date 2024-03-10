<%@ Page Language="C#" AutoEventWireup="true" CodeFile="capchat.aspx.cs" Inherits="USER_capchat" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Captcha Example</title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .auto-style1 {
            width: 121px;
        }
    </style>
</head>
<body style="background-color:lightgreen">

    <form id="form1" runat="server" >

       <h1 align="center"><b> Plase Fill The Valid Capcha For Security </b></h1>
<table border="1" cellpadding="3" cellspacing="0" width="40%"  align="center" style="margin-top:250px;background-color:lightblue">
<tr>
    <td colspan="3">
        <h1>Enter Text</h1>
        <asp:TextBox ID="txtCaptcha" runat="server" Height="48px" Width="223px"></asp:TextBox>
    </td>
</tr>
<tr>
    <td colspan="2">
        <cc1:CaptchaControl ID="Captcha1" runat="server" CaptchaBackgroundNoise="Low"
            CaptchaHeight="60"
            CaptchaLength="5"
            CaptchaMaxTimeout="240" CaptchaMinTimeout="5" CaptchaWidth="200"
            FontColor="#D20B0C" NoiseColor="#B1B1B1" />
    </td>
    <td class="auto-style1">
        <asp:ImageButton ID="ImageButton1" ImageUrl="~/refresh.png" runat="server" CausesValidation="false" />
    </td>
</tr>
<tr>
    <td>
        <asp:CustomValidator ID="CustomValidator1" ErrorMessage="Invalid. Please try again." OnServerValidate="ValidateCaptcha"
            runat="server" />
    </td>
    <td align="right">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="70px" style="margin-left: 0px" Width="216px" BackColor="#99FF33" BorderColor="Black" BorderStyle="Double" BorderWidth="10px" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" />
    </td>
    <td class="auto-style1">
    </td>
</tr>
</table>
            
    </form>
</body>
</html>
