<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="flight.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_ADMIN_Default2" %>

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
            Flight Details
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">  Flight Details</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
           <!-- <form action="/action_page.php" style="max-width:500px;margin:auto"> -->
            <form  runat="server">
              <div class="container" style="text-align: center;">
                <h1>  Flight Details</h1>
                <!-- <p>Please fill in this form to create an account.</p> -->
                <hr>

              

                <label for="email" style="margin-right: 500px;" ><b>Fligt photo</b></label><br>
                  <%--  <input type="text"  placeholder="Company Name" name="email" id="Text1" required><br>--%>
                 
                  <asp:FileUpload ID="FileUpload1" runat="server" />  <br />


                   <asp:Label ID="Label1" runat="server"></asp:Label><br />

                <label for="email" style="margin-right: 470px;" ><b>Company Name </b></label><br>
                  <%--<input type="text"  placeholder="From" name="email" id="Text2" required><br>--%>
                   <asp:TextBox ID="txt_comp" runat="server" placeholder="Enter Company Name" name="email"></asp:TextBox><br />
            
                <label for="email" style="margin-right: 530px;" ><b>From</b></label><br>
                  <%--<input type="text"  placeholder="To" name="email" id="Text3" required><br>--%>
                    <asp:TextBox ID="txt_from" runat="server" placeholder="From" name="email"></asp:TextBox><br />
            
                <label for="email" style="margin-right: 548px;" ><b>To</b></label><br>
                  <%-- <input type="text"  placeholder="Takeoff Time" name="email" id="Text4" required><br>--%>
                   <asp:TextBox ID="txt_to" runat="server" placeholder="To" name="email"></asp:TextBox><br />
            
                <label for="email" style="margin-right: 485px;" ><b>Takeoff Time  </b></label><br>
                  <%--<input type="text"  placeholder="Landing Time" name="email" id="Text5" required><br>--%>
                   <asp:TextBox ID="txt_take_time" runat="server" placeholder="Enter Takeoff Time" name="email"></asp:TextBox><br />
            
                <label for="email" style="margin-right: 480px;" ><b>Landing Time</b></label><br>
                  <%-- <input type="text"  placeholder="Price" name="email" id="Text6" required><br>--%>
                   <asp:TextBox ID="txt_lund" runat="server" placeholder="Enter Landing Time" name="email"></asp:TextBox><br />

                   <label for="email" style="margin-right: 475px;" ><b>Duration Time</b></label><br>
                  <%-- <input type="text"  placeholder="Price" name="email" id="Text6" required><br>--%>
                   <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Duration Time" name="email"></asp:TextBox><br />
            
            
                <label for="email" style="margin-right: 528px;" ><b>Price</b></label><br>
                  <%--<input type="text"  placeholder="Class" name="email" id="Text7" required><br>--%>
                   <asp:TextBox ID="txt_price" runat="server" placeholder="Enter Price" name="email"></asp:TextBox><br />
            
                <label for="email" style="margin-right: 530px;" ><b>Class</b></label><br>
                  <%-- <input type="text"  placeholder="Enter Hotel No" name="email" id="Text8" required><br>
                   <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Hotel No" name="email"></asp:TextBox><br />--%>
                   <asp:TextBox ID="txt_class" runat="server" placeholder="Enter Class" name="email"></asp:TextBox><br />
            
            

                <label for="email" style="margin-right: 520px;" ><b>Status</b></label><br>
                  <%--<button type="submit" class="registerbtn" style="margin-right: 100px;"><b>Add</b></button>--%>
                   <asp:DropDownList ID="DropDownList1" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;">
                     <asp:ListItem>On</asp:ListItem>
                     <asp:ListItem>Off</asp:ListItem>
                 </asp:DropDownList>
            
                <!-- <label for="psw" style="margin-right: 500px;" ><b>Password</b></label><br>
                <input type="password" placeholder="Enter Pas49ord" name="psw" id="psw" required><br>
            
                <label for="psw-repeat" style="margin-right: 450px;" ><b>Repeat Password</b></label><br>
                <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required> -->
                <hr>
                <!-- <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p> -->
            
                <%--  <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                  <asp:Button ID="Button1" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Add" OnClick="Button1_Click" />
              <%--  <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                  <asp:Button ID="Button2" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Re-Set" OnClick="Button2_Click" />
                  <br />
                  <br />
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="flight_photo" HeaderText="flight_photo" SortExpression="flight_photo" />
                          <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                          <asp:BoundField DataField="from" HeaderText="from" SortExpression="from" />
                          <asp:BoundField DataField="to" HeaderText="to" SortExpression="to" />
                          <asp:BoundField DataField="takeoff_time" HeaderText="takeoff_time" SortExpression="takeoff_time" />
                          <asp:BoundField DataField="landing_time" HeaderText="landing_time" SortExpression="landing_time" />
                          <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                          <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                          <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                          <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" DeleteCommand="DELETE FROM [Flight] WHERE [Id] = @original_Id AND [flight_photo] = @original_flight_photo AND [company_name] = @original_company_name AND [from] = @original_from AND [to] = @original_to AND [takeoff_time] = @original_takeoff_time AND [landing_time] = @original_landing_time AND [price] = @original_price AND [class] = @original_class AND [status] = @original_status AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL))" InsertCommand="INSERT INTO [Flight] ([flight_photo], [company_name], [from], [to], [takeoff_time], [landing_time], [price], [class], [status], [duration]) VALUES (@flight_photo, @company_name, @from, @to, @takeoff_time, @landing_time, @price, @class, @status, @duration)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [Flight]" UpdateCommand="UPDATE [Flight] SET [flight_photo] = @flight_photo, [company_name] = @company_name, [from] = @from, [to] = @to, [takeoff_time] = @takeoff_time, [landing_time] = @landing_time, [price] = @price, [class] = @class, [status] = @status, [duration] = @duration WHERE [Id] = @original_Id AND [flight_photo] = @original_flight_photo AND [company_name] = @original_company_name AND [from] = @original_from AND [to] = @original_to AND [takeoff_time] = @original_takeoff_time AND [landing_time] = @original_landing_time AND [price] = @original_price AND [class] = @original_class AND [status] = @original_status AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL))">
                      <DeleteParameters>
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_flight_photo" Type="String" />
                          <asp:Parameter Name="original_company_name" Type="String" />
                          <asp:Parameter Name="original_from" Type="String" />
                          <asp:Parameter Name="original_to" Type="String" />
                          <asp:Parameter Name="original_takeoff_time" Type="String" />
                          <asp:Parameter Name="original_landing_time" Type="String" />
                          <asp:Parameter Name="original_price" Type="String" />
                          <asp:Parameter Name="original_class" Type="String" />
                          <asp:Parameter Name="original_status" Type="String" />
                          <asp:Parameter Name="original_duration" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="flight_photo" Type="String" />
                          <asp:Parameter Name="company_name" Type="String" />
                          <asp:Parameter Name="from" Type="String" />
                          <asp:Parameter Name="to" Type="String" />
                          <asp:Parameter Name="takeoff_time" Type="String" />
                          <asp:Parameter Name="landing_time" Type="String" />
                          <asp:Parameter Name="price" Type="String" />
                          <asp:Parameter Name="class" Type="String" />
                          <asp:Parameter Name="status" Type="String" />
                          <asp:Parameter Name="duration" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="flight_photo" Type="String" />
                          <asp:Parameter Name="company_name" Type="String" />
                          <asp:Parameter Name="from" Type="String" />
                          <asp:Parameter Name="to" Type="String" />
                          <asp:Parameter Name="takeoff_time" Type="String" />
                          <asp:Parameter Name="landing_time" Type="String" />
                          <asp:Parameter Name="price" Type="String" />
                          <asp:Parameter Name="class" Type="String" />
                          <asp:Parameter Name="status" Type="String" />
                          <asp:Parameter Name="duration" Type="String" />
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_flight_photo" Type="String" />
                          <asp:Parameter Name="original_company_name" Type="String" />
                          <asp:Parameter Name="original_from" Type="String" />
                          <asp:Parameter Name="original_to" Type="String" />
                          <asp:Parameter Name="original_takeoff_time" Type="String" />
                          <asp:Parameter Name="original_landing_time" Type="String" />
                          <asp:Parameter Name="original_price" Type="String" />
                          <asp:Parameter Name="original_class" Type="String" />
                          <asp:Parameter Name="original_status" Type="String" />
                          <asp:Parameter Name="original_duration" Type="String" />
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

