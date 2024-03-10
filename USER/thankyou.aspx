<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thankyou.aspx.cs" Inherits="USER_thankyou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 300px;
            height: 67px;
        }
        .auto-style3 {
            height: 67px;
        }
       




    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="background-color:aqua; height: 654px;">
      <h1><b><i> Thank You</i></b></h1>

          <h3><b><i> Your Drem Our Responsibility  Make Some Beautiful Memorise </i></b></h3>

        <br />

        <br />

        <br />
      
        <h3> Plase Give FeedBack & Suggestion</h3>
        <table style="width: 100%;" border="1">
           
            <tr align="center">
                <td class="auto-style2">Email</td>
                <td class="auto-style3"> <asp:TextBox ID="TextBox1" hight="50%" Width="50%" runat="server" Height="54px" style="margin-left: 0px"></asp:TextBox></td>
                
            </tr>
            <tr align="center">
                <td class="auto-style2">Feed BacK</td><br />

               
                <br />

                <td class="auto-style3"> <asp:TextBox ID="TextBox2" hight="50%" Width="50%"  runat="server" TextMode="MultiLine" Height="54px"></asp:TextBox></td>
                   
              
            </tr>


          
        </table>
                <br /> <br />
                 
               <%-- <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Red" BorderStyle="Double" BorderWidth="10px" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="75px"  Text="Button" Width="172px" OnClick="Button1_Click" />--%>
       
      <%--  <asp:Button ID="Button1" runat="server" Text="Button"BackColor="Black" BorderColor="Red" BorderStyle="Double" BorderWidth="10px" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="75px"  Text="Button" Width="172px"  OnClick="Button1_Click" />--%>
        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" BorderColor="Red" BorderStyle="Double" BorderWidth="10px" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="72px" OnClick="Button1_Click1" Width="160px" />
    </div>
    </form>
</body>
</html>
