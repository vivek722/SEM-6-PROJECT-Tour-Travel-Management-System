<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="cruise.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
              
              
    /* Add padding to containers */
.container {
padding: 16px;
background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password],input[type=file] {
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
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Cruise Details
           
          </h1>
          <ol class="breadcrumb">
          
            <li class="active">  Cruise Details</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
           <!-- <form action="/action_page.php" style="max-width:500px;margin:auto"> -->
            <form id="form1" runat="server">
              <div class="container" style="text-align: center;">
                <h1>  Cruise Details</h1>
                <!-- <p>Please fill in this form to create an account.</p> -->
                <hr>

               
            
 
              
            

                <label for="email" style="margin-right: 510px;" ><b> Shop Name</b></label><br>
                  <%--<input type="text"  placeholder="Enter Car Photo" name="email" id="Text1" required><br>--%>
                  <asp:TextBox ID="txt_shop" runat="server" placeholder="Enter Shop Name" name="email"></asp:TextBox><br />

                <label for="email" style="margin-right: 490px;" ><b> Cruise Photo</b></label><br>
                  <%-- <input type="text"  placeholder="Enter Address" name="email" id="Text2" required><br>--%>
                  
                  <asp:FileUpload ID="FileUpload1" runat="server" /><br />

                  <asp:Label ID="Label1" runat="server"></asp:Label><br />

                <label for="email" style="margin-right: 500px;" ><b>Address</b></label><br>
                  <%--<input type="text"  placeholder="Enter Mobile No" name="email" id="Text3" required><br>--%>
                  <asp:TextBox ID="txt_add" runat="server" placeholder="Enter Shop Address" name="email"></asp:TextBox><br />


               
            
                <label for="email" style="margin-right: 500px;" ><b>Mobile No</b></label><br>
                  <%-- <input type="text"  placeholder="Enter Status" name="email" id="Text4" required><br>--%>
                  <asp:TextBox ID="txt_mobile" runat="server" placeholder="Enter Mobile No" name="email"></asp:TextBox><br />
            
                <!-- <label for="psw" style="margin-right: 520px;" ><b>Price</b></label><br>
                <input type="password" placeholder="Enter Price" name="psw" id="psw" required><br>
            
                <label for="psw-repeat" style="margin-right: 490px;" ><b>Equpment</b></label><br>
                <input type="password" placeholder=" enter Equpment" name="psw-repeat" id="psw-repeat" required><br>

                <label for="psw-repeat" style="margin-right: 520px;" ><b>Photo</b></label><br>
                <input type="password" placeholder=" enter Photo" name="psw-repeat" id="psw-repeat" required><br> -->

                <label for="email" style="margin-right: 520px;" ><b>Status</b></label><br>
                  <%--<button type="submit" class="registerbtn" style="margin-right: 100px;"><b>Add</b></button>--%>
                  <asp:DropDownList ID="DropDownList1" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;">
                     <asp:ListItem>On</asp:ListItem>
                     <asp:ListItem>Off</asp:ListItem>
                 </asp:DropDownList><br />

                     <label for="email" style="margin-right: 530px;" ><b>City</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:DropDownList ID="DropDownList2" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_name" ></asp:DropDownList>
              
            
            
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT [city_name] FROM [city]"></asp:SqlDataSource>
              
            
  

                <hr>
                <!-- <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p> -->
            
                <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                  <asp:Button ID="Button2" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Add" OnClick="Button2_Click" />
               <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                  <asp:Button ID="Button1" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Re-Set" />
                  
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="cruise_name" HeaderText="cruise_name" SortExpression="cruise_name" />
                          <asp:BoundField DataField="cruise_photo" HeaderText="cruise_photo" SortExpression="cruise_photo" />
                          <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                          <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                          <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                          <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" DeleteCommand="DELETE FROM [cruise] WHERE [Id] = @original_Id AND [cruise_name] = @original_cruise_name AND [cruise_photo] = @original_cruise_photo AND [address] = @original_address AND [city] = @original_city AND [status] = @original_status AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL))" InsertCommand="INSERT INTO [cruise] ([cruise_name], [cruise_photo], [address], [city], [status], [mobile]) VALUES (@cruise_name, @cruise_photo, @address, @city, @status, @mobile)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [cruise]" UpdateCommand="UPDATE [cruise] SET [cruise_name] = @cruise_name, [cruise_photo] = @cruise_photo, [address] = @address, [city] = @city, [status] = @status, [mobile] = @mobile WHERE [Id] = @original_Id AND [cruise_name] = @original_cruise_name AND [cruise_photo] = @original_cruise_photo AND [address] = @original_address AND [city] = @original_city AND [status] = @original_status AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL))">
                      <DeleteParameters>
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_cruise_name" Type="String" />
                          <asp:Parameter Name="original_cruise_photo" Type="String" />
                          <asp:Parameter Name="original_address" Type="String" />
                          <asp:Parameter Name="original_city" Type="String" />
                          <asp:Parameter Name="original_status" Type="String" />
                          <asp:Parameter Name="original_mobile" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="cruise_name" Type="String" />
                          <asp:Parameter Name="cruise_photo" Type="String" />
                          <asp:Parameter Name="address" Type="String" />
                          <asp:Parameter Name="city" Type="String" />
                          <asp:Parameter Name="status" Type="String" />
                          <asp:Parameter Name="mobile" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="cruise_name" Type="String" />
                          <asp:Parameter Name="cruise_photo" Type="String" />
                          <asp:Parameter Name="address" Type="String" />
                          <asp:Parameter Name="city" Type="String" />
                          <asp:Parameter Name="status" Type="String" />
                          <asp:Parameter Name="mobile" Type="String" />
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_cruise_name" Type="String" />
                          <asp:Parameter Name="original_cruise_photo" Type="String" />
                          <asp:Parameter Name="original_address" Type="String" />
                          <asp:Parameter Name="original_city" Type="String" />
                          <asp:Parameter Name="original_status" Type="String" />
                          <asp:Parameter Name="original_mobile" Type="String" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
                  <br />
              </div>
              
              <!-- <div class="container signin">
                <p>Already have an account? <a href="#">Sign in</a>.</p>
              </div> -->
            </form>
            </section><!-- /.content -->
      </div>
    </div><!-- ./wrapper -->
</asp:Content>

