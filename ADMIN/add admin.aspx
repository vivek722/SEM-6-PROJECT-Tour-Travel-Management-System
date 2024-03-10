<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="add admin.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
              
              
    /* Add padding to containers */
.container {
padding: 16px;
background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
width: 50%;
padding: 15px;
margin: 5px 0 22px 0;
display: inline-block;
border: none;
background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
background-color: #ddd;
outline: none;
}

/* Overwrite default styles of hr */
hr {
border: 1px solid #f1f1f1;
margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
background-color: #04AA6D;
color: white;
padding: 16px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 20%;
opacity: 0.9;
font-size: 15px;
}

.registerbtn:hover {
opacity: 1;
background-color: #ddd;
color: black;
}

.registerbtn1 {
  background-color: #ddd;
color: black;
padding: 16px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 20%;
opacity: 0.9;
font-size: 15px;
}

.registerbtn1:hover {
opacity: 1;
background-color: #04AA6D;
color: white;
}

/* Add a blue text color to links */
a {
color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
background-color: #f1f1f1;
text-align: center;
}

table { 
	width: 750px; 
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

    </style>
  
    
      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Add Admin
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Add Admin</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
           <!-- <form action="/action_page.php" style="max-width:500px;margin:auto"> -->
            <form  runat="server">
             <div class="container" style="text-align: center;">
                <h1>Add Admin</h1>
                <!-- <p>Please fill in this form to create an account.</p> -->
                <hr>

                <label for="email" style="margin-right: 490px;" ><b>First Name</b></label><br>
                 <%--<button type="submit" class="registerbtn"style="margin-top:100px;margin-left:-200px;margin-right:50px"><b>Add</b></button>--%>
                 <asp:TextBox ID="txt_fname" runat="server" placeholder="Enter First Name" name="email"></asp:TextBox><br />
            

                <label for="email" style="margin-right: 490px;" ><b>Last Name</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:TextBox ID="txt_lname" runat="server" placeholder="Enter Last Name" name="email"></asp:TextBox><br />

                <!-- <label for="email" style="margin-right: 510px;" ><b>Hotel description</b></label><br>
                <input type="text"  placeholder="Enter Contact" name="email" id="email" required><br> -->

                <label for="email" style="margin-right: 510px;" ><b>Contact</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:TextBox ID="txt_contact" runat="server" placeholder="Enter Contact No" name="email"></asp:TextBox><br />
            
            
                <label for="email" style="margin-right: 530px;" ><b>Email</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:TextBox ID="txt_email" runat="server" placeholder="Enter Email Address" name="email"></asp:TextBox><br />

                   

                 
                <label for="psw" style="margin-right: 500px;" ><b>Password</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:TextBox ID="txt_password" runat="server" placeholder="Enter Password" name="email" TextMode="Password"></asp:TextBox>
            

                 <br />
                
                 <br />
            

                <label for="psw-repeat" style="margin-right: 450px;" ><b>Repeat Password</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:TextBox ID="txt_cpassword" runat="server" placeholder="Enter Repeat Password" name="email" TextMode="Password"></asp:TextBox><br />

                  <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_cpassword" ErrorMessage="Your Password Dose't Match"></asp:CompareValidator>--%>

                 <br />

                <label for="email" style="margin-right: 520px;" ><b>Status</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                  <asp:DropDownList ID="DropDownList1" runat="server" style="border-style: none; border-color: inherit; border-width: medium; width: 50%; padding: 15px; display: inline-block; background: #f1f1f1; margin-left: 0; margin-right: 0; margin-bottom: 22px;">
                     <asp:ListItem>On</asp:ListItem>
                     <asp:ListItem>Off</asp:ListItem>
                 </asp:DropDownList>
                  <hr>


                <!-- <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p> -->
          
                <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:Button ID="Button2" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Add" OnClick="Button2_Click" />
               <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:Button ID="Button1" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Re-Set" OnClick="Button1_Click" />
                  <br />
                 <br />
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                         <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                         <asp:BoundField DataField="contacts" HeaderText="contacts" SortExpression="contacts" />
                         <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                         <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                         <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" DeleteCommand="DELETE FROM [add_admin] WHERE [Id] = @original_Id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [contacts] = @original_contacts AND [email] = @original_email AND [password] = @original_password AND [status] = @original_status" InsertCommand="INSERT INTO [add_admin] ([first_name], [last_name], [contacts], [email], [password], [status]) VALUES (@first_name, @last_name, @contacts, @email, @password, @status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [add_admin]" UpdateCommand="UPDATE [add_admin] SET [first_name] = @first_name, [last_name] = @last_name, [contacts] = @contacts, [email] = @email, [password] = @password, [status] = @status WHERE [Id] = @original_Id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [contacts] = @original_contacts AND [email] = @original_email AND [password] = @original_password AND [status] = @original_status">
                     <DeleteParameters>
                         <asp:Parameter Name="original_Id" Type="Int32" />
                         <asp:Parameter Name="original_first_name" Type="String" />
                         <asp:Parameter Name="original_last_name" Type="String" />
                         <asp:Parameter Name="original_contacts" Type="String" />
                         <asp:Parameter Name="original_email" Type="String" />
                         <asp:Parameter Name="original_password" Type="String" />
                         <asp:Parameter Name="original_status" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="first_name" Type="String" />
                         <asp:Parameter Name="last_name" Type="String" />
                         <asp:Parameter Name="contacts" Type="String" />
                         <asp:Parameter Name="email" Type="String" />
                         <asp:Parameter Name="password" Type="String" />
                         <asp:Parameter Name="status" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="first_name" Type="String" />
                         <asp:Parameter Name="last_name" Type="String" />
                         <asp:Parameter Name="contacts" Type="String" />
                         <asp:Parameter Name="email" Type="String" />
                         <asp:Parameter Name="password" Type="String" />
                         <asp:Parameter Name="status" Type="String" />
                         <asp:Parameter Name="original_Id" Type="Int32" />
                         <asp:Parameter Name="original_first_name" Type="String" />
                         <asp:Parameter Name="original_last_name" Type="String" />
                         <asp:Parameter Name="original_contacts" Type="String" />
                         <asp:Parameter Name="original_email" Type="String" />
                         <asp:Parameter Name="original_password" Type="String" />
                         <asp:Parameter Name="original_status" Type="String" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
              </div>
              
              <!-- <div class="container signin">
                <p>Already have an account? <a href="#">Sign in</a>.</p>
              </div> -->
            </form>
            </section><!-- /.content -->
      </div>
    </div><!-- ./wrapper -->
   
    </asp:Content>

