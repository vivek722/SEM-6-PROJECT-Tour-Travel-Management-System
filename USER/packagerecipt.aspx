<%@ Page Language="C#" AutoEventWireup="true" CodeFile="packagerecipt.aspx.cs" Inherits="USER_packagerecipt" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style >
        
        table { 
	width: 688px; 
	border-collapse: collapse; 
	margin:50px auto;
	}

/* Zebra striping */
tr:nth-of-type(odd) { 
	background: #eee; 
	}

th { 
	background: #04AA6D; 
	color: white; 
	font-weight: bold; 
	}

td, th { 
	padding: 10px; 
	border: 1px solid #ccc; 
	text-align: left; 
	font-size: 18px;
	}

/* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	table { 
	  	width: 100%; 
	}

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}

	td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		/* Label the data */
		content: attr(data-column);

		color: #000;
		font-weight: bold;
	}
        

}

        .auto-style2 {
            width: 150px;
            height: 57px;
        }
        .auto-style4 {
            width: 150px;
            height: 58px;
        }
        .auto-style5 {
            height: 58px;
        }
        .auto-style6 {
            width: 150px;
            height: 62px;
        }
        .auto-style8 {
            width: 150px;
            height: 67px;
        }
        .auto-style10 {
            width: 150px;
            height: 65px;
        }
        .auto-style12 {
            width: 150px;
            height: 71px;
        }
        .auto-style14 {
            width: 150px;
            height: 64px;
        }
        .auto-style17 {
            width: 1279px;
        }
        .auto-style18 {
            width: 1132px;
        }
        .auto-style19 {
            height: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Panel ID="Panel1" runat="server" Width="70%" style="margin-left:350px">

             

              <table><tr><td><h1 align="center">  <b><i>  <asp:Label ID="Label1" runat="server" Text="Musafir Tours & Travel Agency" Width="100%" Height="50px" BorderColor="White" BorderStyle="Double" BackColor="lightblue" ForeColor="black"></asp:Label></i></b></h1></td></tr></table>
            



             <table align="left" border="1">
                 <tr>
                      <td class="auto-style2" align="center">Date</td>
                    <td class="auto-style4" align="center">22/04/2022</td>
                 </tr>
            
             
              
                 <tr>
                      <td class="auto-style2" align="center">Time</td>
                    <td class="auto-style4" align="center">4:45 PM</td>
                 </tr>
             </table>
             
         <table align="center" width="45%" border="0"><tr><td>     Musafir Tours & Traveles Agency</td></tr>
                 
			     <tr>  <td align="center">  601,6th Floor,Royal Plaza, Vesu, Vip Road <br></td></tr>
           <tr>    <td align="center">  Athwalines,Surat 394107 (India)<br> </td></tr>

          <tr>   <td align="center">     Email :- Musafir@gmail.com<br> </td></tr>
           <tr>  <td align="center">     Contact :- (0261) 3446641 </td></tr></table>
             
              <table style="width: 100%; margin-bottom: 30px;" align="center" border="1">
                 <tr style="background-color:lightblue">
                     <td class="auto-style2" align="center" >Full Name  </td>
                    <td class="auto-style4" align="center">Email Id  </td>
                      <td class="auto-style6" align="center">Address  </td>
                        <td class="auto-style8" align="center">Contact No  </td>
                     
                     </tr>
                   <tr>
                     <td class="auto-style5" align="center">  <asp:Label ID="L1" runat="server" Text="Label"></asp:Label> </td>
                     <td class="auto-style5" align="center"><asp:Label ID="L2" runat="server" Text="Label"></asp:Label> </td>
                     <td class="auto-style5" align="center"><asp:Label ID="L3" runat="server" Text="Label"></asp:Label> </td>
                     <td class="auto-style5" align="center"><asp:Label ID="L4" runat="server" Text="Label"></asp:Label></td>
                     
                </tr>
                  
                  <tr style="background-color:lightblue">
                       <td class="auto-style10" align="center">Package Category </td>
                      <td class="auto-style10" align="center">Package Name</td>
                      <td class="auto-style10" align="center">Package Price  </td>
                     <td class="auto-style14" align="center">Person </td>
                    
                 </tr>
                 <tr>
                        <td class="auto-style5" align="center"><asp:Label ID="L6" runat="server" Text="Label"></asp:Label></td>
                        <td class="auto-style5" align="center"><asp:Label ID="L7" runat="server" Text="Label"></asp:Label></td>
                        <td class="auto-style5" align="center"><asp:Label ID="L8" runat="server" Text="Label"></asp:Label> </td>
                        <td class="auto-style5" align="center"><asp:Label ID="L9" runat="server" Text="Label"></asp:Label></td>
                        
                 </tr>
               
             </table><br /><br />
             <table style="width: 30%; text-align:center" border="1">
                 <tr>
                     <td class="auto-style17" align="center">Total Amount</td>
                    
                 </tr>
                 </table>
             <table style="width: 30%; text-align:center"  border="1">
                 <tr>
                     <td class="auto-style17" align="center">Hotel Amount</td>
                   
                     <td class="auto-style18" align="center">2,200</td>
                   
                     
                 </tr>
                  <tr>

                      <td class="auto-style17" align="center">- 10% Discount</td>
                     <td class="auto-style18" align="center">- 400</td>
                   
                     
                 </tr>
                  <tr>

                      <td  class="auto-style17" align="center">Total Paying Amount</td>
                     <td class="auto-style18" align="center">1,800</td>
                   
                     
                 </tr>
                 </table><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


                 <table><tr><td>   <h1 align="center">  <b><i>  <asp:Label ID="Label2" runat="server" Text="Terms & Condition" Width="100%" Height="50px" BorderColor="black" BorderStyle="Double" BackColor="lightblue" ForeColor="black"></asp:Label></i></b></h1></td></tr></table>

                 <table><tr><td> <p>All bookings are made with Musafir Travel GmbH. By booking a trip with us in writing, by telephone, electronically (online), or in person, you are deemed to have agreed to these Booking Conditions (which constitutes the entire agreement between you and us) and your booking will be accepted by us on this basis. The services to be provided are those referred to in your booking confirmation invoice. It is also the customer’s responsibility upon receipt of  <br /> an invoice/ a confirmation to check that the information on it is complete and correct. Any inaccuracies must be immediately reported to Musafir Travel. Costs resulting from a failure to report shall be borne by the customer.

Services which are not arranged or provided by Musafir Travel are governed by the terms and conditions of carriage and the general terms and conditions of the provider concerned, which Musafir Travel provides >to the customer before the contract is concluded.  <br />

                      Access to and use of the services of Anthony Travel, LLC dba Anthony Travel (“Anthony Travel” and/or “our”) and our website is subject to acceptance of these terms and conditions (“Terms and Conditions”). By accessing, using or obtaining any content, products, or services through our offices or through our website, you, the purchaser and/or traveler (“Customer” and “passenger” and “you/your”) agree to be bound by these terms. PLEASE READ THE TERMS BEFORE USING THIS WEBSITE. These terms and conditions govern the relationship between Anthony Travel and you, the Customer. These terms restrict your rights and remedies and provide protection to Anthony Travel. These also include warranty disclaimers and liability exclusions. By using this website you acknowledge and agree <br /> (a) this is a fair balance because this website is accessible by you conveniently and at no charge to access the website; and (b) if you do not agree or do not accept these Terms and Conditions, you can choose to not use this website or Anthony Travel offices. So, if anything is in these Terms and Conditions, including warranty disclaimers and liability exclusions, that you disagree with or are not willing to be bound by, or if something is missing from these Terms and Conditions that you consider essential, then you must not use this website. <br /> IF THERE IS ANY PART OF THESE TERMS AND CONDITIONS YOU DO NOT AGREE WITH, PLEASE DO NOT USE THIS WEBSITE OR ANTHONY TRAVEL’S SERVICES. No alterations to these terms and conditions may be made by any ANTHONY TRAVEL employee, authorized representative or agent, unless in writing by an authorized officer of ANTHONY TRAVEL.
                 </td></tr></table> </p>
         </asp:Panel>
<div align="center"><asp:Button ID="Button1" runat="server"  Text="Dowload" BackColor="Black" BorderColor="White" BorderStyle="Double" Font-Size="Medium" ForeColor="White" Height="57px" Width="167px" OnClick="Button1_Click" /></div><br /><br /><div align="center"><asp:Button ID="Button2" runat="server" Text="Give FeedBack" BackColor="Black" BorderColor="White" BorderStyle="Double" Font-Size="Medium" ForeColor="White" Height="57px" Width="167px" OnClick="Button2_Click" /></div>


   </div>
    </form>
</body>
</html>        
	      

