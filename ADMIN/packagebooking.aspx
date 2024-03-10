<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="packagebooking.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <style>
              
              
    /* Add padding to containers */
.container {
padding: 16px;
background-color: white
}


table { 
	border-collapse: collapse; 
	margin:50px 0px 50px auto;
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
/*@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {*/

	/*table { 
	  	width: 100%;*/ 
	/*}*/

	/* Force table to not be like tables anymore */
	/*table, thead, tbody, th, td, tr { 
		display: block; 
	}*/
	
	/* Hide table headers (but not display: none;, for accessibility) */
	/*thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}*/
	
	/*tr { border: 1px solid #ccc; }
	
	td {*/ 
		/* Behave  like a "row" */
		/*border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}

	td:before {*/ 
		/* Now like a table header */
		/*position: absolute;*/
		/* Top/left values mimic padding */
		/*top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;*/
		/* Label the data */
		/*content: attr(data-column);*/

		/*color: #000;
		font-weight: bold;
	}*/
        

/*}*/
        

    </style>
     <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Package Booking Details
            
          </h1>
          <ol class="breadcrumb">
            
            <li class="active">  Package Booking Details</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
           <!-- <form action="/action_page.php" style="max-width:500px;margin:auto"> -->
            <form id="Form1" runat="server">
              <div class="container" style="text-align: center;max-height:100%">
                <h1>  Package Booking Details</h1>
                <!-- <p>Please fill in this form to create an account.</p> -->
                <hr>

              

             
  

                
                
                
                  <br />
                  <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="package_category" HeaderText="package_category" SortExpression="package_category" />
                          <asp:BoundField DataField="package_name" HeaderText="package_name" SortExpression="package_name" />
                          <asp:BoundField DataField="package_price" HeaderText="package_price" SortExpression="package_price" />
                          <asp:BoundField DataField="f_name" HeaderText="f_name" SortExpression="f_name" />
                          <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                          <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                          <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                          <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                          <asp:BoundField DataField="person" HeaderText="person" SortExpression="person" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" DeleteCommand="DELETE FROM [pbooking] WHERE [Id] = @original_Id AND [package_category] = @original_package_category AND [package_name] = @original_package_name AND [package_price] = @original_package_price AND [f_name] = @original_f_name AND [email] = @original_email AND [address] = @original_address AND [contact] = @original_contact AND [city] = @original_city AND [person] = @original_person" InsertCommand="INSERT INTO [pbooking] ([package_category], [package_name], [package_price], [f_name], [email], [address], [contact], [city], [person]) VALUES (@package_category, @package_name, @package_price, @f_name, @email, @address, @contact, @city, @person)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [pbooking]" UpdateCommand="UPDATE [pbooking] SET [package_category] = @package_category, [package_name] = @package_name, [package_price] = @package_price, [f_name] = @f_name, [email] = @email, [address] = @address, [contact] = @contact, [city] = @city, [person] = @person WHERE [Id] = @original_Id AND [package_category] = @original_package_category AND [package_name] = @original_package_name AND [package_price] = @original_package_price AND [f_name] = @original_f_name AND [email] = @original_email AND [address] = @original_address AND [contact] = @original_contact AND [city] = @original_city AND [person] = @original_person">
                      <DeleteParameters>
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_package_category" Type="String" />
                          <asp:Parameter Name="original_package_name" Type="String" />
                          <asp:Parameter Name="original_package_price" Type="String" />
                          <asp:Parameter Name="original_f_name" Type="String" />
                          <asp:Parameter Name="original_email" Type="String" />
                          <asp:Parameter Name="original_address" Type="String" />
                          <asp:Parameter Name="original_contact" Type="String" />
                          <asp:Parameter Name="original_city" Type="String" />
                          <asp:Parameter Name="original_person" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="package_category" Type="String" />
                          <asp:Parameter Name="package_name" Type="String" />
                          <asp:Parameter Name="package_price" Type="String" />
                          <asp:Parameter Name="f_name" Type="String" />
                          <asp:Parameter Name="email" Type="String" />
                          <asp:Parameter Name="address" Type="String" />
                          <asp:Parameter Name="contact" Type="String" />
                          <asp:Parameter Name="city" Type="String" />
                          <asp:Parameter Name="person" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="package_category" Type="String" />
                          <asp:Parameter Name="package_name" Type="String" />
                          <asp:Parameter Name="package_price" Type="String" />
                          <asp:Parameter Name="f_name" Type="String" />
                          <asp:Parameter Name="email" Type="String" />
                          <asp:Parameter Name="address" Type="String" />
                          <asp:Parameter Name="contact" Type="String" />
                          <asp:Parameter Name="city" Type="String" />
                          <asp:Parameter Name="person" Type="String" />
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_package_category" Type="String" />
                          <asp:Parameter Name="original_package_name" Type="String" />
                          <asp:Parameter Name="original_package_price" Type="String" />
                          <asp:Parameter Name="original_f_name" Type="String" />
                          <asp:Parameter Name="original_email" Type="String" />
                          <asp:Parameter Name="original_address" Type="String" />
                          <asp:Parameter Name="original_contact" Type="String" />
                          <asp:Parameter Name="original_city" Type="String" />
                          <asp:Parameter Name="original_person" Type="String" />
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

