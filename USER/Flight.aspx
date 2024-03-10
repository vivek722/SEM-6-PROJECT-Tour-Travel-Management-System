<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Flight.aspx.cs" Inherits="USER_Flight" %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- <title>Travelix</title> -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" type="text/css" href="styles/style.css">
<style>
    input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
  }
  
  /* Set a style for all buttons */
  .button1 {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
  }
  
  .button1:hover {
	opacity: 0.8;
  }
  
  /* Extra styles for the cancel button */
  .cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
  }
  
  /* Center the image and position the close button */
  .imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
  }
  
  img.avatar {
	width: 40%;
	border-radius: 50%;
  }
  
  /*.container {
	padding: 16px;
  }*/
  
  span.psw {
	float: right;
	padding-top: 16px;
  }
  
  /* The Modal (background) */
  .modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0,0,0); /* Fallback color */
	background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	padding-top: 60px;
  }
  
  /* Modal Content/Box */
  .modal-content {
	background-color: black;
	margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 40%; /* Could be more or less, depending on screen size */
  }
  
  /* The Close Button (x) */
  .close {
	position: absolute;
	right: 25px;
	top: 0;
	color: white;
	font-size: 35px;
	font-weight: bold;
  }
  
  .close:hover,
  .close:focus {
	color: red;
	cursor: pointer;
  }
  
  /* Add Zoom Animation */
  .animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
  }
  
  @-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)} 
	to {-webkit-transform: scale(1)}
  }
	
  @keyframes animatezoom {
	from {transform: scale(0)} 
	to {transform: scale(1)}
  }
  
  /* Change styles for span and cancel button on extra small screens */
  @media screen and (max-width: 300px) {
	span.psw {
	   display: block;
	   float: none;
	}
	.cancelbtn {
	   width: 100%;
	}
  }
	.row{
	    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: nowrap;
    margin-right: -15px;
    margin-left: -15px;
}
.row1{
margin-right: -15px;
    margin-left: -15px;
}
.city {
  background-color: rgb(255, 253, 253);
  color: rgb(0, 0, 0);
  padding: 10px;
  width: 80%;
  height: 70px;
  margin-top: 20px;
}
</style>
<!-- <link rel="stylesheet" type="text/css" href="styles/bootstrap.css"> -->
<script>/* Open when someone clicks on the span element */
    function openNav() {
        document.getElementById("myNav").style.width = "100%";
    }

    /* Close when someone clicks on the "x" symbol inside the overlay */
    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }

    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    // Get the modal
    var modal = document.getElementById('id02');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>


</head>

<body>

<div class="super_container">

	<!-- Header -->

	<header class="header">

		<!-- Top Bar -->

		<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
						<!-- <div class="phone">+45 345 3324 56789</div> -->
						<div class="social" style="margin-top: -12px;">
							<ul class="social_list">
								<li class="social_list_item"><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
								<li class="social_list_item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="user_box ml-auto">
							<div class="user_box_login user_box_link" onclick="document.getElementById('id01').style.display='block'"><a href="#">login</a></div>
							<div id="id01" class="modal">
  
								<form id="Form1" runat="server"   class="modal-content animate">
								  <div class="imgcontainer">
									<h3 style=""> login</h3>
									<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
									
									<!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
								  </div>
							    
								  <div class="container">
									<label for="uname"><b>Email ID</b></label>
									<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
							  
									<label for="psw"><b>Password</b></label>
									<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
									  
									<asp:Button ID="Button8" class="button1" runat="server" Text="Submit"  />
                                      
									<label>
									  <input type="checkbox" checked="checked" name="remember"> Remember me
									</label>
								  </div>
							  <%--</form>--%>
								  <div class="container" style="background-color:#f1f1f1">
								
									<span class="psw">Forgot <a href="#">password?</a></span>
								  </div>
								
							  </div>
							

							<div class="user_box_register user_box_link" onclick="document.getElementById('id02').style.display='block'"><a href="#">Sign Up</a></div>
							<div id="id02" class="modal">
  
								<%--<form class="modal-content animate" action="/action_page.php" method="post">--%>
                                <div class="modal-content animate">
								  <div class="imgcontainer">
									<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
									<h3>Signup</h3>
									<!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
								  </div>
							  
								  <div class="container">
									<label for="uname"><b>first name</b></label>
									<%--<input type="text" placeholder="Enter Username" name="uname" required>--%>
                                      <asp:TextBox ID="txt_fist" runat="server"></asp:TextBox>


                                      <label for="uname"><b>last name</b></label>
									<%--<input type="text" placeholder="Enter Username" name="uname" required>--%>
                                      <asp:TextBox ID="txt_last" runat="server"></asp:TextBox>


                                      <label for="uname"><b>address</b></label>
									<%--<input type="text" placeholder="Enter Username" name="uname" required>--%>
                                      <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>



                                      <label for="uname"><b>contact</b></label>
									<%--<input type="text" placeholder="Enter Username" name="uname" required>--%>
                                      <asp:TextBox ID="txt_contact" runat="server"></asp:TextBox>

							  
                                      <label for="uname"><b>email</b></label>
									<%--<input type="text" placeholder="Enter Username" name="uname" required>--%>
                                      <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>


									<label for="psw"><b>Password</b></label>
									<%--<input type="password" placeholder="Enter Password" name="psw" required>--%>
                                          <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
									
                                      <asp:Button ID="Button7" class="button1" runat="server" Text="Submit"  />
                                      <asp:Label ID="encrypt" runat="server" Text="Label"></asp:Label> <!-- <button type="submit">Login</button> -->
                                     <%-- <asp:Button ID="Button11" class="button1" runat="server" Text="decrypt" OnClick="Button11_Click" /> 
                                      <asp:Label ID="decryption" runat="server" Text="Label"></asp:Label>
                                     --%>

                                       <%--<asp:Button ID="Button12" class="button1" runat="server" Text="Submit" OnClick="Button12_Click" />--%>
                                      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <!-- <button type="submit">Login</button> -->
                                     


									<label>
									  <input type="checkbox" checked="checked" name="remember"> Remember me
									</label>
								  </div>
							  
								  <div class="container" style="background-color:#f1f1f1">
                                     <asp:Button ID="Button6" Class="cancelbtn" runat="server" Text="Cancel" />
									<span class="psw">Forgot <a href="#">password?</a></span>
								  </div>
                                    </div>
								<%--</form>--%>
							  </div>
						</div>
					</div>
				</div>
			</div>		
		</div>

		<!-- Main Navigation -->

		<nav class="main_nav">
			<div class="container">
				<div class="row">
					<div class="col main_nav_col d-flex flex-row align-items-center justify-content-start">
						<div class="logo_container">
							<div class="logo"><a href="#"><img src="images/logo.png" alt="">Musafir</a></div>
						</div>
					<div class="main_nav_container ml-auto">
							<ul class="main_nav_list">
								<li class="main_nav_item"><a href="Home.aspx">home</a></li>
								<li class="main_nav_item"><a href="#"><span onclick="openNav()">packages</span></a></li>
								 <div id="myNav" class="overlay">

								<!-- Button to close the overlay navigation -->
								<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
							  
								<!-- Overlay content -->
								<div class="overlay-content">
									<ul >
										<li style="margin-right: 600px;"><a href="Package.aspx?mid=domestic">Domestic</a></li>
										<li style="margin-right: 600px;"><a href="Package.aspx?mid=international">International</a></li>
										<li style="margin-right: 600px;"><a href="Package.aspx?mid=holiday">Holiday</a></li>
										<li style="margin-right: 600px;"><a href="Package.aspx?mid=Honeymoon">Honeymoon</a></li>
	    							    <li style="margin-top:-280px;"> <a href="Package.aspx?mid=Picnic">Picnic</a></li>
										<li> <a href="Package.aspx?mid=group">Group</a></li>
										<li> <a href="Package.aspx?mid=solo">Solo</a></li>
									    <li> <a href="Package.aspx?mid=family">Family</a></li>
										<li style="margin-left: 600px; margin-top: -280px;"> <a href="Package.aspx?mid=beaches">Beaches</a></li>
										<li style="margin-left: 600px;"> <a href="Package.aspx?mid=winter">Winter</a></li>
										<li style="margin-left: 600px;"> <a href="Package.aspx?mid=summer">Summer</a></li>
										<li style="margin-left: 600px;"> <a href="Package.aspx?mid=monsoon">Monsoon</a></li>
									</ul>
								 								  
								</div>
							  
							</div>
                                <li class="main_nav_item"><a href="gallary.aspx">gallary</a></li>
								<%--<li class="main_nav_item"><a href="offers.html">offers</a></li>--%>
                                <li class="main_nav_item"><a href="Blog.aspx">blog</a></li>
								<li class="main_nav_item"><a href="About.aspx">about us</a></li>						
								<li class="main_nav_item"><a href="Contact.aspx">contact us</a></li>
							</ul>
						</div>
						
						<div class="content_search ml-lg-0 ml-auto">
							<!-- <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							width="17px" height="17px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
								<g>
									<g>
										<g>
											<path class="mag_glass" fill="#FFFFFF" d="M78.438,216.78c0,57.906,22.55,112.343,63.493,153.287c40.945,40.944,95.383,63.494,153.287,63.494
											s112.344-22.55,153.287-63.494C489.451,329.123,512,274.686,512,216.78c0-57.904-22.549-112.342-63.494-153.286
											C407.563,22.549,353.124,0,295.219,0c-57.904,0-112.342,22.549-153.287,63.494C100.988,104.438,78.439,158.876,78.438,216.78z
											M119.804,216.78c0-96.725,78.69-175.416,175.415-175.416s175.418,78.691,175.418,175.416
											c0,96.725-78.691,175.416-175.416,175.416C198.495,392.195,119.804,313.505,119.804,216.78z"/>
										</g>
									</g>
									<g>
										<g>
											<path class="mag_glass" fill="#FFFFFF" d="M6.057,505.942c4.038,4.039,9.332,6.058,14.625,6.058s10.587-2.019,14.625-6.058L171.268,369.98
											c8.076-8.076,8.076-21.172,0-29.248c-8.076-8.078-21.172-8.078-29.249,0L6.057,476.693
											C-2.019,484.77-2.019,497.865,6.057,505.942z"/>
										</g>
									</g>
								</g>
							</svg> -->
						</div>
						<%--<form id="search_form" class="search_form bez_1">
							<input type="search" class="search_content_input bez_1">
						</form>--%>
						

						<div class="hamburger">
							<i class="fa fa-bars trans_200"></i>
						</div>
					</div>
				</div>
			</div>	
		</nav>

	</header>

	<div class="menu trans_500">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
			<div class="menu_close_container"><div class="menu_close"></div></div>
			<div class="logo menu_logo"><a href="#"><img src="images/logo.png" alt=""></a></div>
			<ul>
				<li class="menu_item"><a href="#">home</a></li>
				<li class="menu_item"><a href="#">packages</a></li>
				<li class="menu_item"><a href="offers.html">offers</a></li>
				<li class="menu_item"><a href="about.html">about us</a></li>
				<li class="menu_item"><a href="blog.html">news</a></li>
				<li class="menu_item"><a href="contact.html">contact</a></li>
			</ul>
		</div>
	</div>


	
	</div>

	
	<!-- Intro -->
    
        

            <div class="intro" style="margin-top: 100px">
       <%--<form id="Form1" runat="server">--%>
            <div class="row">
                <div class="booking-form">
                    
                        <div class="row no-margin">

                            <div class="col-md-3" style="width: 18%; margin-left: 60px;">
                                <div class="form-group">
                                    <span class="form-label">From</span>

                                    <%--<span class="form-label1" style="margin-top: 10px;">Surat</span>--%>
                                    <asp:Label ID="lbl_from" runat="server" Text="Label" class="form-label1" Style="margin-top: 10px;"></asp:Label>

                                </div>
                            </div>


                            <div class="col-md-3" style="width: 18%;">
                                <div class="form-group">
                                    <span class="form-label">To</span>
                                    <%--  <span class="form-label1" style="margin-top: 10px;">Goa</span>--%>
                                    <asp:Label ID="Label1" runat="server" Text="Label" class="form-label1" Style="margin-top: 10px;"></asp:Label>

                                </div>
                            </div>


                            <div class="col-md-5" style="width: 50%;">
                                <div class="form-group">
                                    <span class="form-label">Check In</span>
                                    <input class="form-control" type="date" required>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <span class="form-label">Adults</span>
                                    <select class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                    <span class="select-arrow"></span>
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <span class="form-label">Children</span>
                                    <select class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                    <span class="select-arrow"></span>
                                </div>
                            </div>

                        </div>
                </div>

            </div>

            <div class="col-md-10" style="margin-left: 70px;">


                <span class="form-label">Class Type</span><div id="paymentContainer" name="paymentContainer" class="paymentOptions" style="margin-top: 5px;">
                

                   

                  <div id="payCC" class="floatBlock"> 
                         <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="class" Text="Economy" value="economy" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged1"   />

                        
                        <%--<label for="paymentCC">
                            <input id="paymentCC" name="paymentType" type="radio" value="CREDIT_CARD" />
                            Economy  </label>--%>
                    </div>

                    <div id="payInvoice" class="floatBlock"> <asp:RadioButton ID="RadioButton2" runat="server" GroupName="class" AutoPostBack="True" Text=" Premium Economy" OnCheckedChanged="RadioButton2_CheckedChanged" />
                         
                       <%-- <label for="paymentInv">
                            <input id="paymentInv" name="paymentType" type="radio" value="INVOICE" />
                            Premium Economy </label>--%>
                    </div>

                    <div id="pay3rdParty" class="floatBlock"> <asp:RadioButton ID="RadioButton3" runat="server" GroupName="class" AutoPostBack="True" Text=" Business" OnCheckedChanged="RadioButton3_CheckedChanged" />
                        
                       <%-- <label for="payment3rd">
                            <input id="payment3rd" name="paymentType" type="radio" />
                            Business </label>--%>
                    </div>

                    <div id="Div1" class="floatBlock"><asp:RadioButton ID="RadioButton4" runat="server" GroupName="class"  Text=" First"  AutoPostBack="True" OnCheckedChanged="RadioButton4_CheckedChanged" />
                         
                      <%--  <label for="payment3rd">
                            <input id="Radio1" name="paymentType" type="radio" />
                            First </label>--%>
                    </div>
                </div>


            </div>

        
            
			  </form>
		
			<!-- </div>
			</div> -->
            <!-- </div> -->
            <!-- </div> -->
            <!-- </div> -->
               
               



                        <div style="background-color: rgb(211, 210, 210);">
                        <br />
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                                <HeaderTemplate>
                                    <div class="row1" align="center" style="margin-right: -15px; margin-left: -15px;">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="city">
                                        <table style="width: 100%; margin-top: 5px;">
                                            <tr>
                                                <td style="margin-left: 100px; margin-top: 15px;">

                                                    <img src="../ADMIN/upload/<%#Eval("flight_photo")%>"></td>

                                                <td style="margin-top: 15px; font-weight: 50px;"><%#Eval("company_name")%></td>
                                                <td style="margin-left: 10px; margin-top: 7px;"><%#Eval("takeoff_time")%><br>
                                                    <%#Eval("from")%>
                                                </td>

                                                <td style="margin-left: 10px; margin-top: 15px;"><%#Eval("landing_time")%></td>
                                                <td style="margin-left: 10px; margin-top: 7px;"><%#Eval("duration")%><br>
                                                    <%#Eval("to")%></td>
                                                <td style="margin-left: 10px; margin-top: 7px;"><%#Eval("class")%><br>
                                                    <td style="margin-left: 10px; margin-top: 15px;"><%#Eval("price")%></td>

                                               <td><a href="flightbook.aspx?id=<%#Eval("id") %>" "><h3>Book Now</h3></a></td>
                                            </tr>


                                        </table>

                                    </div>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </div>
                                </FooterTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:connectionstring1 %>' ProviderName='<%$ ConnectionStrings:connectionstring1.ProviderName %>' SelectCommand="SELECT * FROM [Flight] WHERE (([from] = @from) AND ([to] = @to) AND ([class] = @class))">
                                <SelectParameters>
                                    <asp:SessionParameter SessionField="from" Name="from" Type="String"></asp:SessionParameter>
                                    <asp:SessionParameter SessionField="to" Name="to" Type="String"></asp:SessionParameter>
                                    <asp:Parameter DefaultValue="first" Name="class" Type="String"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [Flight] WHERE (([from] = @from) AND ([to] = @to) AND ([class] = @class))">
                                <SelectParameters>
                                    <asp:SessionParameter Name="from" SessionField="from" Type="String" />
                                    <asp:SessionParameter Name="to" SessionField="to" Type="String" />
                                    <asp:Parameter DefaultValue="buissness" Name="class" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionstring1 %>' ProviderName='<%$ ConnectionStrings:connectionstring1.ProviderName %>' SelectCommand="SELECT * FROM [Flight] WHERE (([from] = @from) AND ([to] = @to))">
                                <SelectParameters>
                                    <asp:SessionParameter Name="from" SessionField="from" Type="String" />
                                    <asp:SessionParameter Name="to" SessionField="to" Type="String" />

                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:connectionstring1 %>' ProviderName='<%$ ConnectionStrings:connectionstring1.ProviderName %>' SelectCommand="SELECT * FROM [Flight] WHERE (([from] = @from) AND ([to] = @to) AND ([class] = @class))">
                                <SelectParameters>
                                    <asp:SessionParameter SessionField="from" Name="from" Type="String"></asp:SessionParameter>
                                    <asp:SessionParameter SessionField="to" Name="to" Type="String"></asp:SessionParameter>
                                    <asp:Parameter DefaultValue="economy" Name="class" Type="String"></asp:Parameter>

                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:connectionstring1 %>' ProviderName='<%$ ConnectionStrings:connectionstring1.ProviderName %>' SelectCommand="SELECT * FROM [Flight] WHERE (([from] = @from) AND ([to] = @to) AND ([class] = @class))">
                                <SelectParameters>
                                    <asp:SessionParameter SessionField="from" Name="from" Type="String"></asp:SessionParameter>
                                    <asp:SessionParameter SessionField="to" Name="to" Type="String"></asp:SessionParameter>
                                    <asp:Parameter DefaultValue="premuim economy" Name="class" Type="String"></asp:Parameter>
                                </SelectParameters>              
                            </asp:SqlDataSource>
                           
                        </div>
            </div>
               
                <%--<div class="row1" align="center" style="margin-right: -15px; margin-left: -15px;">
			<div class="city" >
				<table style="width: 100%;margin-top: 5px;">
					<tr>
						<td style="margin-left: 100px; margin-top: 15px;"><img src="images\airindia.png"></td>
						<td style="margin-top: 15px; font-weight: 50px;">Airindia</td>
						<td style="margin-left: 10px; margin-top: 7px;">8:00AM<br>Surat</td>
						<td style="margin-left: 10px; margin-top: 15px;">9h10m</td>
						<td style="margin-left: 10px; margin-top: 7px;">10:00am<br>Goa</td>
						<td style="margin-left: 10px; margin-top: 15px;">$2,700</td>
					</tr>
				</table>
	
			</div>
			</div>
                --%>

               
    <br>
		</div>
	</div>	
	<!-- </div> -->

	

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_content footer_about">
							<div class="logo_container footer_logo">
								<div class="logo"><a href="#"><img src="images/logo.png" alt="">Musafir</a></div>
							</div>
							<p class="footer_about_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis vu lputate eros, iaculis consequat nisl. Nunc et suscipit urna. Integer eleme ntum orci eu vehicula pretium.</p>
							<ul class="footer_social_list">
								<li class="footer_social_item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
								<li class="footer_social_item"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
								<li class="footer_social_item"><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li class="footer_social_item"><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li class="footer_social_item"><a href="#"><i class="fa fa-behance"></i></a></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_title">blog posts</div>
						<div class="footer_content footer_blog">
							
							<!-- Footer blog item -->
							<div class="footer_blog_item clearfix">
								<div class="footer_blog_image"><img src="images/footer_blog_1.jpg" alt="https://unsplash.com/@avidenov"></div>
								<div class="footer_blog_content">
									<div class="footer_blog_title"><a href="blog.html">Travel with us this year</a></div>
									<div class="footer_blog_date">Nov 29, 2017</div>
								</div>
							</div>
							
							<!-- Footer blog item -->
							<div class="footer_blog_item clearfix">
								<div class="footer_blog_image"><img src="images/footer_blog_2.jpg" alt="https://unsplash.com/@deannaritchie"></div>
								<div class="footer_blog_content">
									<div class="footer_blog_title"><a href="blog.html">New destinations for you</a></div>
									<div class="footer_blog_date">Nov 29, 2017</div>
								</div>
							</div>

							<!-- Footer blog item -->
							<div class="footer_blog_item clearfix">
								<div class="footer_blog_image"><img src="images/footer_blog_3.jpg" alt="https://unsplash.com/@bergeryap87"></div>
								<div class="footer_blog_content">
									<div class="footer_blog_title"><a href="blog.html">Travel with us this year</a></div>
									<div class="footer_blog_date">Nov 29, 2017</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_title">tags</div>
						<div class="footer_content footer_tags">
							<ul class="tags_list clearfix">
								<li class="tag_item"><a href="#">design</a></li>
								<li class="tag_item"><a href="#">fashion</a></li>
								<li class="tag_item"><a href="#">music</a></li>
								<li class="tag_item"><a href="#">video</a></li>
								<li class="tag_item"><a href="#">party</a></li>
								<li class="tag_item"><a href="#">photography</a></li>
								<li class="tag_item"><a href="#">adventure</a></li>
								<li class="tag_item"><a href="#">travel</a></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_title">contact info</div>
						<div class="footer_content footer_contact">
							<ul class="contact_info_list">
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="images/placeholder.svg" alt=""></div></div>
									<div class="contact_info_text">4127 Raoul Wallenber 45b-c Gibraltar</div>
								</li>
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="images/phone-call.svg" alt=""></div></div>
									<div class="contact_info_text">2556-808-8613</div>
								</li>
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="images/message.svg" alt=""></div></div>
									<div class="contact_info_text"><a href="mailto:contactme@gmail.com?Subject=Hello" target="_top">contactme@gmail.com</a></div>
								</li>
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="images/planet-earth.svg" alt=""></div></div>
									<div class="contact_info_text"><a href="https://colorlib.com">www.colorlib.com</a></div>
								</li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
	</footer>

	<!-- Copyright -->

	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-lg-1 order-2  ">
					<!-- <div class="copyright_content d-flex flex-row align-items-center"> -->
					<!--	<div> Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	<!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. </div>-->
					</div>
				</div>
				<div class="col-lg-9 order-lg-2 order-1">
					<div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
						<div class="footer_nav">
							<ul class="footer_nav_list">
								<li class="footer_nav_item"><a href="#">home</a></li>
								<li class="footer_nav_item"><a href="about.html">about us</a></li>
								<li class="footer_nav_item"><a href="offers.html">offers</a></li>
								<li class="footer_nav_item"><a href="blog.html">news</a></li>
								<li class="footer_nav_item"><a href="contact.html">contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>

</body>

</html>
