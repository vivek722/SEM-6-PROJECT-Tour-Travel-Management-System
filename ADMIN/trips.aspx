<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="trips.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_ADMIN_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
              
              
    /* Add padding to containers */
.container {
padding: 16px;
background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=file] {
width: 30%;
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
            Trips Details
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">  Trips Details</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
           <!-- <form action="/action_page.php" style="max-width:500px;margin:auto"> -->
            
            <div class="row">
            <form  runat="server">
            
                <div class="col-md-6">    
              <div class="container">
            <h1>  Trips Details</h1>    
                <!-- <p>Please fill in this form to create an account.</p> -->
                
                  <hr>

            
                <label for="email" style="margin-right: 490px;" ><b>Starting Date</b></label><br>
                  <%--<button type="submit" class="registerbtn" style="margin-top:100px;margin-left:-1spx;margin-right:50px" ><b>Add</b></button>--%>
                   <asp:TextBox ID="txt_stat" runat="server" placeholder="Enter Trip Starting Date" name="email"></asp:TextBox><br />
            
            

                <label for="email" style="margin-right: 480px;" ><b>Duration</b></label><br>
                  <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                   <asp:TextBox ID="txt_end" runat="server" placeholder="Enter Trip Endind Date" name="email"></asp:TextBox><br />
            

                <label for="email" style="margin-right: 490px;" ><b>Distance</b></label><br>
                  <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                   <asp:TextBox ID="txt_contact" runat="server" placeholder="Enter Contact No" name="email"></asp:TextBox><br />
            

                <label for="email" style="margin-right: 480px;" ><b>Starting Place</b></label><br>
                  <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                   <asp:DropDownList ID="DropDownList2" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_name"  ></asp:DropDownList><br />
              
            
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT [city_name] FROM [city]"></asp:SqlDataSource>
              
            
                <label for="email" style="margin-right: 480px;" ><b>Ending Place</b></label><br>
                  <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                   <asp:DropDownList ID="DropDownList3" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_name">
                  </asp:DropDownList>
                  <br />
            

                   
              </div>
                    </div>

                  <div class="col-md-6">
                   <div class="container" style="margin-top:100px;">
                       
                <label for="psw" style="margin-right: 520px;" ><b>Price</b></label><br>
                       <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                        <asp:TextBox ID="txt_price" runat="server" placeholder="Enter Trip Price" name="email"></asp:TextBox><br />
            
                 
            
                 
                <label for="psw-repeat" style="margin-right: 490px;"><b>Eqiupment</b></label><br>
                       <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                        <asp:TextBox ID="txt_equipment" runat="server" placeholder="Enter Equipments" name="email"></asp:TextBox><br />
            

                <label for="psw-repeat" style="margin-right: 520px;" ><b>Photo</b></label><br>
                       <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                       <asp:FileUpload ID="FileUpload1" runat="server" />     <br />
            

                  
                       <asp:Label ID="Label1" runat="server"></asp:Label><br />
                       
                       
            

               <label for="psw-repeat" style="margin-right: 500px;" ><b>description</b></label><br>
                       <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                        <asp:TextBox ID="txt_description" runat="server" placeholder="Enter Description" name="email"></asp:TextBox><br />
            


                <label for="email" style="margin-right: 520px;"><b>Status</b></label><br>
                       <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%><%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
            <asp:DropDownList ID="DropDownList1" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;">
                     <asp:ListItem>On</asp:ListItem>
                     <asp:ListItem>Off</asp:ListItem>
                 </asp:DropDownList>
  

                <hr>

                
      </div>
                       </div>
    
                <!-- <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p> -->
            <div class="container">
                <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                <asp:Button ID="Button1" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Add" OnClick="Button1_Click" />
                <%--<button type="submit" class="registerbtn1" ><b>Re-Set</b></button>--%>
                <asp:Button ID="Button2" class="registerbtn" style="margin-right: 100px;" runat="server" Text="Re-Set" />

                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" AllowPaging="True" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="stating_date" HeaderText="stating_date" SortExpression="stating_date" />
                        <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                        <asp:BoundField DataField="distance" HeaderText="distance" SortExpression="distance" />
                        <asp:BoundField DataField="stating_place" HeaderText="stating_place" SortExpression="stating_place" />
                        <asp:BoundField DataField="ending_place" HeaderText="ending_place" SortExpression="ending_place" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="equpment" HeaderText="equpment" SortExpression="equpment" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" DeleteCommand="DELETE FROM [trips] WHERE [Id] = @original_Id AND [stating_date] = @original_stating_date AND [duration] = @original_duration AND [distance] = @original_distance AND [stating_place] = @original_stating_place AND [ending_place] = @original_ending_place AND [price] = @original_price AND [equpment] = @original_equpment AND [photo] = @original_photo AND [description] = @original_description AND [status] = @original_status" InsertCommand="INSERT INTO [trips] ([stating_date], [duration], [distance], [stating_place], [ending_place], [price], [equpment], [photo], [description], [status]) VALUES (@stating_date, @duration, @distance, @stating_place, @ending_place, @price, @equpment, @photo, @description, @status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [trips]" UpdateCommand="UPDATE [trips] SET [stating_date] = @stating_date, [duration] = @duration, [distance] = @distance, [stating_place] = @stating_place, [ending_place] = @ending_place, [price] = @price, [equpment] = @equpment, [photo] = @photo, [description] = @description, [status] = @status WHERE [Id] = @original_Id AND [stating_date] = @original_stating_date AND [duration] = @original_duration AND [distance] = @original_distance AND [stating_place] = @original_stating_place AND [ending_place] = @original_ending_place AND [price] = @original_price AND [equpment] = @original_equpment AND [photo] = @original_photo AND [description] = @original_description AND [status] = @original_status" OnSelecting="SqlDataSource2_Selecting">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_stating_date" Type="String" />
                        <asp:Parameter Name="original_duration" Type="String" />
                        <asp:Parameter Name="original_distance" Type="String" />
                        <asp:Parameter Name="original_stating_place" Type="String" />
                        <asp:Parameter Name="original_ending_place" Type="String" />
                        <asp:Parameter Name="original_price" Type="String" />
                        <asp:Parameter Name="original_equpment" Type="String" />
                        <asp:Parameter Name="original_photo" Type="String" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_status" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="stating_date" Type="String" />
                        <asp:Parameter Name="duration" Type="String" />
                        <asp:Parameter Name="distance" Type="String" />
                        <asp:Parameter Name="stating_place" Type="String" />
                        <asp:Parameter Name="ending_place" Type="String" />
                        <asp:Parameter Name="price" Type="String" />
                        <asp:Parameter Name="equpment" Type="String" />
                        <asp:Parameter Name="photo" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="stating_date" Type="String" />
                        <asp:Parameter Name="duration" Type="String" />
                        <asp:Parameter Name="distance" Type="String" />
                        <asp:Parameter Name="stating_place" Type="String" />
                        <asp:Parameter Name="ending_place" Type="String" />
                        <asp:Parameter Name="price" Type="String" />
                        <asp:Parameter Name="equpment" Type="String" />
                        <asp:Parameter Name="photo" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_stating_date" Type="String" />
                        <asp:Parameter Name="original_duration" Type="String" />
                        <asp:Parameter Name="original_distance" Type="String" />
                        <asp:Parameter Name="original_stating_place" Type="String" />
                        <asp:Parameter Name="original_ending_place" Type="String" />
                        <asp:Parameter Name="original_price" Type="String" />
                        <asp:Parameter Name="original_equpment" Type="String" />
                        <asp:Parameter Name="original_photo" Type="String" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_status" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>
                
             
              
              <!-- <div class="container signin">
                <p>Already have an account? <a href="#">Sign in</a>.</p>
              </div> -->
            </form>
            </div>
            </section><!-- /.content -->
      </div>
    </div><!-- ./wrapper -->

</asp:Content>

