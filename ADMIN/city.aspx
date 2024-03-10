<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_ADMIN_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
              
              
    /* Add padding to containers */
.container {
padding: 16px;
background-color: white
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
     <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            City Details
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">  City Details</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
           <!-- <form action="/action_page.php" style="max-width:500px;margin:auto"> -->
            <form runat="server">
              <div class="container" style="text-align: center;max-height:100%">
                <h1>  City Details</h1>
                <!-- <p>Please fill in this form to create an account.</p> -->
                <hr>

              

                <label for="email" style="margin-right: 490px;" ><b>City Name</b></label><br>
              <%--  <input type="text"  placeholder="City Name" name="email" id="email" required><br>--%>
                  <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter City Name" name="email"></asp:TextBox><br />
            

                <label for="email" style="margin-right: 520px;" ><b>Status</b></label><br>
               <%-- <input type="text"  placeholder="Enter Hotel No" name="email" id="Text1" required><br>
            --%><%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Hotel No" name="email"></asp:TextBox><br /--%>
                   <asp:DropDownList ID="DropDownList1" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;">
                     <asp:ListItem>On</asp:ListItem>
                     <asp:ListItem>Off</asp:ListItem>
                 </asp:DropDownList>
  

                
                  <br />
  

                
                  <asp:Button ID="Button1" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Add" OnClick="Button1_Click" />
               
                  <asp:Button ID="Button2" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Re-Set" OnClick="Button2_Click" />
                  <br />
                  <br />
                  <br />
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="city_name" HeaderText="city_name" SortExpression="city_name" />
                          <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" DeleteCommand="DELETE FROM [city] WHERE [Id] = @original_Id AND [city_name] = @original_city_name AND [status] = @original_status" InsertCommand="INSERT INTO [city] ([city_name], [status]) VALUES (@city_name, @status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [city]" UpdateCommand="UPDATE [city] SET [city_name] = @city_name, [status] = @status WHERE [Id] = @original_Id AND [city_name] = @original_city_name AND [status] = @original_status">
                      <DeleteParameters>
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_city_name" Type="String" />
                          <asp:Parameter Name="original_status" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="city_name" Type="String" />
                          <asp:Parameter Name="status" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="city_name" Type="String" />
                          <asp:Parameter Name="status" Type="String" />
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_city_name" Type="String" />
                          <asp:Parameter Name="original_status" Type="String" />
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

