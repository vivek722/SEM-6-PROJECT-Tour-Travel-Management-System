<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about1.aspx.cs" Inherits="USER_about1" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>About Us</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/about_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/main_styles.css">

<link rel="stylesheet" type="text/css" href="styles/about_responsive.css">

    <script>/* Open when someone clicks on the span element */
        function openNav() {
            document.getElementById("myNav").style.width = "100%";
        }

        /* Close when someone clicks on the "x" symbol inside the overlay */
        function closeNav() {
            document.getElementById("myNav").style.width = "0%";
        }
</script>


    <style>
         body, table, input, select, textarea {

}


.graph {
	margin-bottom:1em;
  font:normal 100%/150% arial,helvetica,sans-serif;
            height: 425px;
            width: 101%;
        }

.graph caption {
	font:bold 150%/120% arial,helvetica,sans-serif;
	padding-bottom:0.33em;
}

.graph tbody th {
	text-align:right;
}

@supports (display:grid) {

	@media (min-width:32em) {

		.graph {
			display:block;
      width:600px;
      height:300px;
		}

		.graph caption {
			display:block;
		}

		.graph thead {
			display:none;
		}

		.graph tbody {
			position:relative;
			display:grid;
			grid-template-columns:repeat(auto-fit, minmax(2em, 1fr));
			column-gap:2.5%;
			align-items:end;
			height:100%;
			margin:3em 0 1em 2.8em;
			padding:0 1em;
			border-bottom:2px solid rgba(0,0,0,0.5);
			background:repeating-linear-gradient(
				180deg,
				rgba(170,170,170,0.7) 0,
				rgba(170,170,170,0.7) 1px,
				transparent 1px,
				transparent 20%
			);
		}

		.graph tbody:before,
		.graph tbody:after {
			position:absolute;
			left:-3.2em;
			width:2.8em;
			text-align:right;
			font:bold 80%/120% arial,helvetica,sans-serif;
		}

		.graph tbody:before {
			content:"100%";
			top:-0.6em;
		}

		.graph tbody:after {
			content:"0%";
			bottom:-0.6em;
		}

		.graph tr {
			position:relative;
			display:block;
		}

		.graph tr:hover {
			z-index:999;
		}

		.graph th,
		.graph td {
			display:block;
			text-align:center;
		}

		.graph tbody th {
			position:absolute;
			top:-3em;
			left:0;
			width:100%;
			font-weight:normal;
			text-align:center;
      white-space:nowrap;
			text-indent:0;
			transform:rotate(-45deg);
		}

		.graph tbody th:after {
			content:"";
		}

		.graph td {
			width:100%;
			height:100%;
			background:#F63;
			border-radius:0.5em 0.5em 0 0;
			transition:background 0.5s;
		}

		.graph tr:hover td {
			opacity:0.7;
		}

		.graph td span {
			overflow:hidden;
			position:absolute;
			left:50%;
			top:50%;
			width:0;
			padding:0.5em 0;
			margin:-1em 0 0;
			font:normal 85%/120% arial,helvetica,sans-serif;
/* 			background:white; */
/* 			box-shadow:0 0 0.25em rgba(0,0,0,0.6); */
			font-weight:bold;
			opacity:0;
			transition:opacity 0.5s;
      color:white;
		}

		.toggleGraph:checked + table td span,
		.graph tr:hover td span {
			width:4em;
			margin-left:-2em; /* 1/2 the declared width */
			opacity:1;
		}



    


	} /* min-width:32em */

} /* grid only */
    </style>

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
							<div class="user_box_login user_box_link"><a href="#">login</a></div>
							<div class="user_box_register user_box_link"><a href="#">register</a></div>
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
                                <li class="main_nav_item"><a href="blog1.aspx">blog</a></li>
								<li class="main_nav_item"><a href="about1.aspx">about us</a></li>						
								<li class="main_nav_item"><a href="contact1.aspx">contact us</a></li>
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
						</form>
						--%>

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
				<li class="menu_item"><a href="blog.html">blog</a></li>
				<li class="menu_item"><a href="contact.html">contact</a></li>
			</ul>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/about_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">contact</div>
		</div>
	</div>

	<!-- Intro -->

	<div class="intro">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="intro_image"><img src="images/intro.png" alt=""></div>
				</div>
				<div class="col-lg-5">
					<div class="intro_content">
						<div class="intro_title">we have the best tours</div>
						<p class="intro_text">“Travel is the main thing you purchase that makes you more extravagant”. We, at ‘Organization Name’, swear by this and put stock in satisfying travel dreams that make you perpetually rich constantly.<br />

We have been moving excellent encounters for a considerable length of time through our cutting-edge planned occasion bundles and other fundamental travel administrations. We rouse our clients to carry on with a rich life, brimming with extraordinary travel encounters.<br />

Through our exceptionally curated occasion bundles, we need to take you on an adventure where you personally enjoy the stunning magnificence of America and far-off terrains. We need you to observe sensational scenes that are a long way past your creative ability.</p><br />
						<%--<div class="button intro_button"><a href="#">explore now</a></div>--%>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Stats -->
    <div align="center" >
     <table  style="width:80%;height:500px" class="graph" align="center">
	<h2 align="center"><b> Our Satisfied Clints In Our Facility</b></h2>

     
	<thead>
		<tr>
			<th scope="col">Item</th>
			<th scope="col">Percent</th>
		</tr>
	</thead><tbody>
		<tr style="height:65%">
			<th scope="row">Packages</th>
			<td><span>65%</span></td>
		</tr>
		<tr style="height:23%">
			<th scope="row">Trips</th>
			<td><span>23%</span></td>
		</tr>
		<tr style="height:57%">
			<th scope="row"> Hotels</th>
			<td><span>57%</span></td>
		</tr>
		<tr style="height:38%">
			<th scope="row">Flight</th>
			<td><span>38%</span></td>
		</tr>
		<tr style="height:35%">
			<th scope="row">Activity</th>
			<td><span>35%</span></td>
		</tr>
		<tr style="height:30%">
			<th scope="row">Car Rent</th>
			<td><span>30%</span></td>
		</tr>
		<tr style="height:5%">
			<th scope="row">Cruise</th>
			<td><span>5%</span></td>
		</tr>
		<tr style="height:20%">
			<th scope="row">Other</th>
			<td><span>20%</span></td>
		</tr>
	</tbody>
</table>
    </div>

    <br />
    <br />


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
	<!-- Add -->

	
	<!-- Milestones -->

	<div class="milestones">
		<div class="container">
			<div class="row">
				
				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="images/milestone_1.png" alt=""></div>
						<div class="milestone_counter" data-end-value="255">0</div>
						<div class="milestone_text"><b>Our Clients</b></div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="images/milestone_2.png" alt=""></div>
						<div class="milestone_counter" data-end-value="1176">0</div>
						<div class="milestone_text"><b>Our Activities</b></div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="images/milestone_3.png" alt=""></div>
						<div class="milestone_counter" data-end-value="39">0</div>
						<div class="milestone_text"><b>Our Cities</b></div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="images/milestone_4.png" alt=""></div>
						<div class="milestone_counter" data-end-value="127">0</div>
						<div class="milestone_text"><b>Our Packages</b></div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Footer -->
    <br /><br /><br />
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

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/about_custom.js"></script>

</body>

</html>