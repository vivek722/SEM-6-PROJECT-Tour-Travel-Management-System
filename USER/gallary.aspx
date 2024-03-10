<!DOCTYPE html>
<html lang="en">
<head>
<title>Gallary</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">

<style>
/*

All grid code is placed in a 'supports' rule (feature query) at the bottom of the CSS (Line 77). 
        
The 'supports' rule will only run if your browser supports CSS grid.

Flexbox is used as a fallback so that browsers which don't support grid will still recieve an identical layout.

*/

@import url(https://fonts.googleapis.com/css?family=Montserrat:500);

/*:root {
	
	font-size: 10px;
}

*,
*::before,
*::after {
	box-sizing: border-box;
}

body {
	min-height: 100vh;
	background-color: #fafafa;
}

.container {
	max-width: 100rem;
	margin: 0 auto;
	padding: 0 2rem 2rem;
}*/


.heading {
	font-family: "Montserrat", Arial, sans-serif;
	font-size: 4rem;
	font-weight: 500;
	line-height: 1.5;
	text-align: center;
	padding: 3.5rem 0;
	color: #1a1a1a;
}

.heading span {
	display: block;
}
.gallery {
	display: flex;
	flex-wrap: wrap;
	/* Compensate for excess margin on outer gallery flex items */
	margin: -1rem -1rem;
}

.gallery-item {
	/* Minimum width of 24rem and grow to fit available space */
	flex: 1 0 24rem;
	/* Margin value should be half of grid-gap value as margins on flex items don't collapse */
	margin: 1rem;
	box-shadow: 0.3rem 0.4rem 0.4rem rgba(0, 0, 0, 0.4);
	overflow: hidden;
}

.gallery-image {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
	transition: transform 400ms ease-out;
}

.gallery-image:hover {
	transform: scale(1.15);
}

/*

The following rule will only run if your browser supports CSS grid.

Remove or comment-out the code block below to see how the browser will fall-back to flexbox styling. 

*/

@supports (display: grid) {
	.gallery {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(24rem, 1fr));
		grid-gap: 2rem;
	}

	.gallery,
	.gallery-item {
		margin: 0;
	}
}
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
	background-color: #fefefe;
	margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 40%; /* Could be more or less, depending on screen size */
  }
  
  /* The Close Button (x) */
  .close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
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
</style>

    
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
							<div class="phone">+45 345 3324 56789</div>
							<div class="social">
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
									<h3> login</h3>
									<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
									
									<!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
								  </div>
							    
								  <div class="container">
									<label for="uname"><b>Username</b></label>
									<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
							  
									<label for="psw"><b>Password</b></label>
									<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
									  
									<asp:Button ID="Button8" class="button1" runat="server" Text="Submit" />
									<label>
									  <input type="checkbox" checked="checked" name="remember"> Remember me
									</label>
								  </div>
							  <%--</form>--%>
								  <div class="container" style="background-color:#f1f1f1">
								 <asp:Button ID="Button9" Class="cancelbtn" runat="server" Text="Cancel" />
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
									<!-- <button type="submit">Login</button> -->
                                       

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
										<li style="margin-right: 600px;"><a href="Package.aspx?mid=oliday">Holiday</a></li>
										<li style="margin-right: 600px;"><a href="Package.aspx">Honeymoon</a></li>
	    							    <li style="margin-top:-280px;"> <a href="Package.aspx">Picnic</a></li>
										<li> <a href="Package.aspx">Group</a></li>
										<li> <a href="Package.aspx">Solo</a></li>
									    <li> <a href="Package.aspx">Family</a></li>
										<li style="margin-left: 600px; margin-top: -280px;"> <a href="Package.aspx">Beaches</a></li>
										<li style="margin-left: 600px;"> <a href="Package.aspx">Winter</a></li>
										<li style="margin-left: 600px;"> <a href="Package.aspx">Summer</a></li>
										<li style="margin-left: 600px;"> <a href="Package.aspx">Monsoon</a></li>
									</ul>
								 								  
								</div>
							  
							</div>
                                <li class="main_nav_item"><a href="gallary.aspx">gallary</a></li>
								<%--<li class="main_nav_item"><a href="offers.html">offers</a></li>--%>
								
								<li class="main_nav_item"><a href="blog1.aspx">blog</a></li>
                                    <li class="main_nav_item"><a href="about1.aspx">about us</a></li>
								<li class="main_nav_item"><a href="contact1.aspx">contact us</a></li>
							</ul>
							</div>
							<div class="content_search ml-lg-0 ml-auto">
								<%--<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
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
								</svg>--%>
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
					<li class="menu_item"><a href="index.html">home</a></li>
					<li class="menu_item"><a href="about.html">about us</a></li>
					<li class="menu_item"><a href="offers.html">offers</a></li>
					<li class="menu_item"><a href="#">news</a></li>
					<li class="menu_item"><a href="contact.html">contact</a></li>
				</ul>
			</div>
		</div>
	
		<!-- Home -->
	
		<%--<div class="home">
			<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/blog_background.jpg"></div>
			<div class="home_content">
				<div class="home_title"> Our Gallery</div>
			</div>
		</div>--%>

      
        
	
	<div class="container">

		<h1 class="heading" style="margin-top:200px"> Our Best Tours Gallery</h1>

          
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <HeaderTemplate>
                <div class="gallery">
            </HeaderTemplate>
            <ItemTemplate>
                <div class="gallery-item" style="margin-top:20px;margin-right:20px;height:370px;width:370px;">
                <div  height="1000px" width="1000px">    <img  class="gallery-image" src="../ADMIN/upload/<%#Eval("g_photo") %>" /></div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:DataList>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionstring1 %>' ProviderName='<%$ ConnectionStrings:connectionstring1.ProviderName %>' SelectCommand="SELECT top 9 * FROM [gallary]"></asp:SqlDataSource>
    </div>
        </form>
        <br />
        <br />
   
		<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_content footer_about">
							<div class="logo_container footer_logo">
								<div class="logo"><a href="#"><img src="images/logo.png" alt="">travelix</a></div>
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
					<div class="copyright_content d-flex flex-row align-items-center">
						<div><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
					</div>
				</div>
				<div class="col-lg-9 order-lg-2 order-1">
					<div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
						<div class="footer_nav">
							<ul class="footer_nav_list">
								<li class="footer_nav_item"><a href="index.html">home</a></li>
								<li class="footer_nav_item"><a href="about.html">about us</a></li>
								<li class="footer_nav_item"><a href="offers.html">offers</a></li>
								<li class="footer_nav_item"><a href="#">news</a></li>
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
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/blog_custom.js"></script>

</body>

</html>
		
				