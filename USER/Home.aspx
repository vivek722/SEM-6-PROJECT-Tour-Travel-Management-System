<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="USER_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <%--<link rel="stylesheet" type="text/css" href="styles/offers_responsive.css">--%>
  <%--  <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">--%>
    
    <div class="intro">
    <div class="container">
        <div class="row">
            <div class="col">
                <h2 class="intro_title text-center">WE HAVE THE BEST TOURS</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="intro_text text-center">
                    <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec. </p> -->
                </div>
            </div>
        </div>
        <div class="row intro_items">

            <!-- Intro Item -->

            <div class="col-lg-4 intro_col">
                <div class="intro_item">
                    <!-- <div class="intro_item_overlay"></div> -->
                    <!-- Image by https://unsplash.com/@dnevozhai -->
                    
                    <div class="card" style="background-image:url(images/singapore.jpg)">
                        
                        <div class="content">
                        <h1>Singapore</h1>
                        <div class="intro_price">Starting From ₹1,25,000</div>
                        <div class="rating rating_4">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="button intro_button"><div class="button_bcg"></div><a href="#">see package</a></div>
                        
                          </div>
                    
                </div>
                    
                </div>
            </div>

            

        <div class="col-lg-4 intro_col">
                <div class="intro_item">
                    <!-- <div class="intro_item_overlay"></div> -->
                    <!-- Image by https://unsplash.com/@dnevozhai -->
                    
                    <div class="card" style="background-image:url(images/goa.jpg)">
                        
                        <div class="content">
                        <h1>Goa</h1>
                        <div class="intro_price">Starting From ₹7500</div>
                        <div class="rating rating_4">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="button intro_button"><div class="button_bcg"></div><a href="#">see package</a></div>
                        
                          </div>
                    
                </div>
                    
                </div>
            </div>

            <!-- Intro Item -->

            <div class="col-lg-4 intro_col">
                <div class="intro_item">
                    <!-- <div class="intro_item_overlay"></div> -->
                    <!-- Image by https://unsplash.com/@dnevozhai -->
                    
                    <div class="card" style="background-image:url(images/disneyland.jpg)">
                        
                        <div class="content">
                        <h1>Disneyland</h1>
                        <div class="intro_price">Starting From ₹1,25,000</div>
                        <div class="rating rating_4">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="button intro_button"><div class="button_bcg"></div><a href="#">see package</a></div>
                        
                          </div>
                    
                </div>
                    
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Slider -->
<div class="cta">
    <!-- Image by https://unsplash.com/@thanni -->
    <div class="cta_background" style="background-image:url(images/cta.jpg)"></div>
    
    <div class="container">
        <div class="row">
            <div class="col">

                <!-- CTA Slider -->

                <div class="cta_slider_container">
                    <div class="owl-carousel owl-theme cta_slider">

                        <!-- CTA Slider Item -->
                        <div class="owl-item cta_item text-center">
                            
                                <div id="slider">
                                <figure> 
                                    <img src="images\ooty.jpg" alt="">
                                    <img src="images\shimla_manali.jpg" alt="">
                                    <img src="images\ladakh.jpg" alt="">
                                    <!-- <img src="C:\Users\DELL\Desktop\Projet Backup\3-1\images\about_background.jpg" alt=""> -->
                                </figure>
                                
                            </div>

                            
                        
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
                
</div>

<!-- Offers -->

<div class="offers">
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <h2 class="section_title">the best paackages with offers</h2>
            </div>
        </div>
        <div class="row offers_items">

            <!-- Offers Item -->
            <div class="col-lg-6 offers_col">
                <div class="offers_item">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="offers_image_container" >
                                    <div class="parent">
                                      <div class="child bg-one">
                                        <div class="offers_image_background"  style="background-image:url(images/paris.jpg)"></div>  
                                         
                                        <div class="offer_name"><a href="#">paris</a></div>
                                      </div>
                                    </div>
                                <!-- </div> -->
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="offers_content">
                                <div class="offers_price">₹27,700<span>PP</span></div>
                               <%-- <div class="rating_r rating_r_4 offers_rating">
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                </div>--%>
                                <p class="offers_text">The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.</p>
                                <div class="offers_icons">
                                    <ul class="offers_icons_list">
                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                    </ul>
                                </div>
                                <div class="offers_link"><a href="offers.html">read more</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Offers Item -->
            <div class="col-lg-6 offers_col">
                <div class="offers_item">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="offers_image_container" >
                                    <div class="parent">
                                      <div class="child bg-one">
                                        <div class="offers_image_background"  style="background-image:url(images/london.jpg)"></div>  
                                         
                                        <div class="offer_name"><a href="#">london</a></div>
                                      </div>
                                    </div>
                                <!-- </div> -->
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="offers_content">
                                <div class="offers_price">₹21,000<span>PP</span></div>
                                <%--<div class="rating_r rating_r_4 offers_rating">
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                </div>--%>
                                <p class="offers_text">London is the capital and largest city of England and the United Kingdom. It stands on the River Thames in south-east England at the head of a 50-mile (80 km) estuary down to the North Sea.</p>
                                <div class="offers_icons">
                                    <ul class="offers_icons_list">
                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                    </ul>
                                </div>
                                <div class="offers_link" ><a href="offers.html">read more</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offers Item -->
            <div class="col-lg-6 offers_col">
                <div class="offers_item">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="offers_image_container" >
                                    <div class="parent">
                                      <div class="child bg-one">
                                        <div class="offers_image_background"  style="background-image:url(images/hawa\ mahal.jpg)"></div>  -->
                                         
                                        <div class="offer_name"><a href="#">jaipur</a></div>
                                      </div>
                                    </div>
                                <!-- </div> -->
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="offers_content">
                                <div class="offers_price">₹5,100<span>PP</span></div>
                                <div class="rating_r rating_r_4 offers_rating">
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                </div>
                                <p class="offers_text">The Hawa Mahal is a palace in the city of Jaipur, India. Built from red and pink sandstone, the palace sits on the edge of the City Palace, Jaipur, and extends to the Zenana, or women's chambers.</p>
                                <div class="offers_icons">
                                    <ul class="offers_icons_list">
                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                    </ul>
                                </div>
                                <div class="offers_link"><a href="offers.html">read more</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

            <div class="col-lg-6 offers_col">
                <div class="offers_item">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="offers_image_container" >
                                    <div class="parent">
                                      <div class="child bg-one">
                                        <div class="offers_image_background"  style="background-image:url(images/taj.jfif)"></div>  -->
                                         
                                        <div class="offer_name"><a href="#">taj mahal</a></div>
                                      </div>
                                    </div>
                                <!-- </div> -->
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="offers_content">
                                <div class="offers_price">₹4,800<span>PP</span></div>
                                <div class="rating_r rating_r_4 offers_rating">
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                </div>
                                <p class="offers_text">The Taj Mahal, is an ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra.It is named after the engineer Gustave Eiffel, whose company designed.</p>
                                <div class="offers_icons">
                                    <ul class="offers_icons_list">
                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                    </ul>
                                </div>
                                <div class="offers_link"><a href="offers.html">read more</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

        </div>
    </div>
</div>

<!-- Testimonials -->

<div class="testimonials">
    <div class="test_border"></div>
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <h2 class="section_title">what our clients say about us</h2>
            </div>
        </div>
        <div class="row">
            <div class="col">
                
                <!-- Testimonials Slider -->

                <div class="test_slider_container">
                    <div class="owl-carousel owl-theme test_slider">

                        <!-- Testimonial Item -->
                        <div class="owl-item">
                            <div class="test_item">
                                <div class="test_image"><img src="images/test_1.jpg" alt="https://unsplash.com/@anniegray"></div>
                                <div class="test_icon"><img src="images/backpack.png" alt=""></div>
                                <div class="test_content_container">
                                    <div class="test_content">
                                        <div class="test_item_info">
                                            <div class="test_name">carla smith</div>
                                            <div class="test_date">May 24, 2017</div>
                                        </div>
                                        <div class="test_quote_title">" Best holliday ever "</div>
                                        <p class="test_quote_text">Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Testimonial Item -->
                        <div class="owl-item">
                            <div class="test_item">
                                <div class="test_image"><img src="images/test_2.jpg" alt="https://unsplash.com/@tschax"></div>
                                <div class="test_icon"><img src="images/island_t.png" alt=""></div>
                                <div class="test_content_container">
                                    <div class="test_content">
                                        <div class="test_item_info">
                                            <div class="test_name">carla smith</div>
                                            <div class="test_date">May 24, 2017</div>
                                        </div>
                                        <div class="test_quote_title">" Best holliday ever "</div>
                                        <p class="test_quote_text">Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Testimonial Item -->
                        <div class="owl-item">
                            <div class="test_item">
                                <div class="test_image"><img src="images/test_3.jpg" alt="https://unsplash.com/@seefromthesky"></div>
                                <div class="test_icon"><img src="images/kayak.png" alt=""></div>
                                <div class="test_content_container">
                                    <div class="test_content">
                                        <div class="test_item_info">
                                            <div class="test_name">carla smith</div>
                                            <div class="test_date">May 24, 2017</div>
                                        </div>
                                        <div class="test_quote_title">" Best holliday ever "</div>
                                        <p class="test_quote_text">Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Testimonial Item -->
                        <div class="owl-item">
                            <div class="test_item">
                                <div class="test_image"><img src="images/test_2.jpg" alt=""></div>
                                <div class="test_icon"><img src="images/island_t.png" alt=""></div>
                                <div class="test_content_container">
                                    <div class="test_content">
                                        <div class="test_item_info">
                                            <div class="test_name">carla smith</div>
                                            <div class="test_date">May 24, 2017</div>
                                        </div>
                                        <div class="test_quote_title">" Best holliday ever "</div>
                                        <p class="test_quote_text">Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Testimonial Item -->
                        <div class="owl-item">
                            <div class="test_item">
                                <div class="test_image"><img src="images/test_1.jpg" alt=""></div>
                                <div class="test_icon"><img src="images/backpack.png" alt=""></div>
                                <div class="test_content_container">
                                    <div class="test_content">
                                        <div class="test_item_info">
                                            <div class="test_name">carla smith</div>
                                            <div class="test_date">May 24, 2017</div>
                                        </div>
                                        <div class="test_quote_title">" Best holliday ever "</div>
                                        <p class="test_quote_text">Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Testimonial Item -->
                        <div class="owl-item">
                            <div class="test_item">
                                <div class="test_image"><img src="images/test_3.jpg" alt=""></div>
                                <div class="test_icon"><img src="images/kayak.png" alt=""></div>
                                <div class="test_content_container">
                                    <div class="test_content">
                                        <div class="test_item_info">
                                            <div class="test_name">carla smith</div>
                                            <div class="test_date">May 24, 2017</div>
                                        </div>
                                        <div class="test_quote_title">" Best holliday ever "</div>
                                        <p class="test_quote_text">Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Testimonials Slider Nav - Prev -->
                    <div class="test_slider_nav test_slider_prev">
                        <svg version="1.1" id="Layer_6" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                            <defs>
                                <linearGradient id='test_grad_prev'>
                                    <stop offset='0%' stop-color='#fa9e1b'/>
                                    <stop offset='100%' stop-color='#8d4fff'/>
                                </linearGradient>
                            </defs>
                            <path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
                            M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
                            C22.545,2,26,5.541,26,9.909V23.091z"/>
                            <polygon class="nav_arrow" fill="#F3F6F9" points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219 
                            11.042,18.219 "/>
                        </svg>
                    </div>
                    
                    <!-- Testimonials Slider Nav - Next -->
                    <div class="test_slider_nav test_slider_next">
                        <svg version="1.1" id="Layer_7" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                            <defs>
                                <linearGradient id='test_grad_next'>
                                    <stop offset='0%' stop-color='#fa9e1b'/>
                                    <stop offset='100%' stop-color='#8d4fff'/>
                                </linearGradient>
                            </defs>
                        <path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
                        M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
                        C22.545,2,26,5.541,26,9.909V23.091z"/>
                        <polygon class="nav_arrow" fill="#F3F6F9" points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554 
                        17.046,15.554 "/>
                        </svg>
                    </div>

                </div>
                
            </div>
        </div>

    </div>
</div>

<div class="trending">
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <h2 class="section_title">trending now</h2>
            </div>
        </div>
        <div class="row trending_container">

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_1.png" alt="https://unsplash.com/@fransaraco"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">grand hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_2.png" alt="https://unsplash.com/@grovemade"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">mars hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_3.png" alt="https://unsplash.com/@jbriscoe"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">queen hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_4.png" alt="https://unsplash.com/@oowgnuj"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">mars hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_5.png" alt="https://unsplash.com/@mindaugas"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">grand hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_6.png" alt="https://unsplash.com/@itsnwa"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">mars hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_7.png" alt="https://unsplash.com/@rktkn"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">queen hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
                <div class="trending_item clearfix">
                    <div class="trending_image"><img src="images/trend_8.png" alt="https://unsplash.com/@thoughtcatalog"></div>
                    <div class="trending_content">
                        <div class="trending_title"><a href="#">mars hotel</a></div>
                        <div class="trending_price">From ₹182</div>
                        <div class="trending_location">madrid, spain</div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

 <div class="contact">
    <div class="contact_background" style="background-image:url(images/contact.png)"></div>

    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="contact_image">
                    
                </div>
            </div>
            <div class="col-lg-7">
                <div class="contact_form_container">
                    <div class="contact_title">get in touch</div>
                   
                    <div id="contact_form" class="contact_form">
                        <%--<asp:TextBox ID="TextBox1" class="contact_form_name input_field" runat="server"></asp:TextBox>--%>
                        <input type="text" id="contact_form_name" class="contact_form_name input_field" placeholder="Name" required="required" data-error="Name is required.">
                        <input type="text" id="contact_form_email" class="contact_form_email input_field" placeholder="E-mail" required="required" data-error="Email is required.">
                        <input type="text" id="contact_form_subject" class="contact_form_subject input_field" placeholder="Subject" required="required" data-error="Subject is required.">
                        <textarea id="contact_form_message" class="text_field contact_form_message" name="message" rows="4" placeholder="Message" required="required" data-error="Please, write us a message."></textarea>
                        <button type="submit" id="form_submit_button" class="form_submit_button button">send message</button>
                    </div>
                  </div>
            </div>
        </div>
    </div>
</div> 

</asp:Content>

