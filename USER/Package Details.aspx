<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Package Details.aspx.cs" Inherits="USER_Package_Details" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Single Listing</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/single_listing_styles.css">
<link rel="stylesheet" type="text/css" href="styles/single_listing_responsive.css">
</head>

<script>/* Open when someone clicks on the span element */
    function openNav() {
        document.getElementById("myNav").style.width = "100%";
    }

    /* Close when someone clicks on the "x" symbol inside the overlay */
    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }
</script>
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
							<div class="user_box_login user_box_link"><a href="#myModal" data-toggle="modal" >login</a></div>
							<div class="user_box_register user_box_link"><a href="#myModal" data-toggle="modal">register</a></div>
						</div>
						<div id="myModal" class="modal fade">
							<div class="modal-dialog modal-login">
								<div class="modal-content">
									<div class="modal-header">				
										<h4 class="modal-title">Member Login</h4>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									</div>
									<div class="modal-body">
										<form action="/examples/actions/confirmation.php" method="post">
											<div class="form-group">
												<i class="fa fa-user"></i>
												<input type="text" class="form-control" placeholder="Username" required="required">
											</div>
											<div class="form-group">
												<i class="fa fa-lock"></i>
												<input type="password" class="form-control" placeholder="Password" required="required">					
											</div>
											<div class="form-group">
												<input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<a href="#">Forgot Password?</a>
									</div>
								</div>
							</div>
						</div>     
					</div>
				</div>
			</div>		
		</div>

		<!-- <div id="myModal" class="modal fade">
			<div class="modal-dialog modal-login">
				<div class="modal-content">
					<div class="modal-header">				
						<h4 class="modal-title">Member Login</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<form action="/examples/actions/confirmation.php" method="post">
							<div class="form-group">
								<i class="fa fa-user"></i>
								<input type="text" class="form-control" placeholder="Username" required="required">
							</div>
							<div class="form-group">
								<i class="fa fa-lock"></i>
								<input type="password" class="form-control" placeholder="Password" required="required">					
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<a href="#">Forgot Password?</a>
					</div>
				</div>
			</div>
		</div>      -->
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
								<li class="main_nav_item"><a href="#">home</a></li>
								<li class="main_nav_item"><a href="#"><span onclick="openNav()">packages</span></a></li>
								 <div id="myNav" class="overlay">

								<!-- Button to close the overlay navigation -->
								<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
							  
								<!-- Overlay content -->
								<div class="overlay-content">
									<ul >
										<li style="margin-right: 600px;"><a href="#">Domestic</a></li>
										<li style="margin-right: 600px;"><a href="#">International</a></li>
										<li style="margin-right: 600px;"><a href="#">Holiday</a></li>
										<li style="margin-right: 600px;"><a href="#">Honeymoon</a></li>
	    							    <li style="margin-top:-280px;"> <a href="#">Picnic</a></li>
										<li> <a href="#">Group</a></li>
										<li> <a href="#">Solo</a></li>
									    <li> <a href="#">Family</a></li>
										<li style="margin-left: 600px; margin-top: -280px;"> <a href="#">Beaches</a></li>
										<li style="margin-left: 600px;"> <a href="#">Winter</a></li>
										<li style="margin-left: 600px;"> <a href="#">Summer</a></li>
										<li style="margin-left: 600px;"> <a href="#">Monsoon</a></li>
									</ul>
								 								  
								</div>
							  
							</div>
								<li class="main_nav_item"><a href="offers.html">offers</a></li>
								<li class="main_nav_item"><a href="about.html">about us</a></li>
								<li class="main_nav_item"><a href="blog.html">news</a></li>
								<li class="main_nav_item"><a href="contact.html">contact</a></li>
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
						<form id="search_form" class="search_form bez_1">
							<input type="search" class="search_content_input bez_1">
						</form>
						

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


	<!-- Offers -->

	<div class="listing">

		
		<!-- Single Listing -->

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="single_listing">
						
						<!-- Hotel Info -->

						<div class="hotel_info">

							<!-- Title -->
							
							</div>

							<!-- Listing Image -->
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="hotel_image">
                                            <img src= "../ADMIN/upload/<%#Eval("package_photo") %>" height="300px" width="300px" >
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="package_details1"><%#Eval("package_name") %></div>     
                                        <div class="package_details2"><%#Eval("package_datelis") %></div>
                                         
                                        <div class="hotel_info_tags">
                                            <ul class="hotel_icons_list">
                                                <li class="hotel_icons_item">
                                                    <img src="images/post.png" alt=""></li>
                                                <li class="hotel_icons_item">
                                                    <img src="images/compass.png" alt=""></li>
                                                <li class="hotel_icons_item">
                                                    <img src="images/bicycle.png" alt=""></li>
                                                <li class="hotel_icons_item">
                                                    <img src="images/sailboat.png" alt=""></li>
                                            </ul>
                                        </div>

                                        <div class="package_details3"><span><%#Eval("package_description") %></span></div>
                                        <br>
                                        
                                        <br>
                                        <!-- Hotel Info Tags -->
                                        <div class="button book_button"><a href="packagebooking.aspx?id=<%#Eval("id")%>">Book Now</a></div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                            </FooterTemplate>
                        </asp:DataList>

                        <!-- Hotel Gallery -->



                        <!-- Hotel Info Text -->

                        <!-- <div class="package_details1">Goa</div>
							<div class="package_details2">4 Days/3 Nights</div>
							
							<div class="hotel_info_tags">
								<ul class="hotel_icons_list">
									<li class="hotel_icons_item"><img src="images/post.png" alt=""></li>
									<li class="hotel_icons_item"><img src="images/compass.png" alt=""></li>
									<li class="hotel_icons_item"><img src="images/bicycle.png" alt=""></li>
									<li class="hotel_icons_item"><img src="images/sailboat.png" alt=""></li>
								</ul>
							</div> -->

                        <!-- <div class="package_details3">DAY 1:<span>North Goa</span></div><br>
							<div class="package_details3">DAY 2:<span>South Goa</span></div><br>
							<div class="package_details3">DAY 3:<span>Old Goa</span></div><br>
							<div class="package_details3">DAY 4:<span>Sunrise Point</span></div><br> -->
                        <!-- Hotel Info Tags -->
                        <!-- <div class="button book_button"><a href="#">Book Now</a></div> -->

                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connectionstring1 %>' ProviderName='<%$ ConnectionStrings:connectionstring1.ProviderName %>' SelectCommand="SELECT * FROM [package] WHERE ([Id] = @Id)">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="pid" Name="Id" Type="Int32"></asp:QueryStringParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    
						</div>
			

                  <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="8">
                            <HeaderTemplate>
                                <div class="hotel_gallery">
                                    <div class="hotel_slider_container">


                                        <div class="owl-carousel owl-theme hotel_slider">
                            </HeaderTemplate>

                            <ItemTemplate>
                                <div class="owl-item">
                                    <a class="colorbox cboxElement" href="../ADMIN/upload/<%#Eval("g_photo") %>">
                                        <img src="../ADMIN/upload/<%#Eval("g_photo") %>" alt="https://unsplash.com/@jbriscoe">
                                    </a>

                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                                            
                                        
                                 
                                    
                                    <div class="hotel_slider_nav hotel_slider_prev">
                                       
                                    </div>

                                <!-- Hotel Slider Nav - Next -->
                                <div class="hotel_slider_nav hotel_slider_next">
                                   
                                </div>

                                </div>
                            </FooterTemplate>
                        </asp:DataList>
                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connectionstring1 %>' ProviderName='<%$ ConnectionStrings:connectionstring1.ProviderName %>' SelectCommand="SELECT * FROM [gallary] WHERE ([place] = @place)">
                    <SelectParameters>
                        <asp:SessionParameter Name="place" SessionField="pname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    </div>
                    
		</div>
		
	</div>		
             <br />
             <br />

             <br />

    	
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
                            <li class="footer_nav_item"><a href="Home.aspx">home</a></li>
                             <li class="footer_nav_item"><a href="Package.aspx">packages</a></li>
                            <li class="footer_nav_item"><a href="About.aspx">about us</a></li>                        
                            <li class="footer_nav_item"><a href="Blog.aspx">blog</a></li>
                            <li class="footer_nav_item"><a href="Contact.aspx">contact us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

            
        </div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/single_listing_custom.js"></script>

</body>

</html>
