<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.master" AutoEventWireup="true" CodeFile="package.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_USER_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <style>
    .gallery {
	/* border: 2px ridge #777; */
	border: solid 1px;
	height: 450px;
	width: 302px;
  }
  
  /* div.gallery:hover {
	
	border: 1px solid rgb(0, 0, 0);
  } */
  
  /* div.gallery img {
	width: 100%;
	height: auto;
  } */
  
  .desc {
	/* padding: 8px; */
	margin-top: 10px;
	text-align: center;
	/* color: #000000; */
	font-size: 20px;
    font-weight: 700;
    color: #eda84a;
    /* line-height: 25px; */
    text-transform: uppercase;
  }

  .desc1{
	padding: 12px;
	text-align: center;
	/* margin-top: -20px; */
	/* font-weight: 1000; */
	color: #707070;
	font-size: 13px;
    font-weight: 700;
    /* color: #eda84a; */
    line-height: 1px;
    text-transform: uppercase;
  }

  .desc2{
	/* display: inline-block; */
	text-align: center;
    font-size: 20px;
    font-weight: 700;
    color: #707070;
    /* line-height: 25px; */
  }

  .desc2 span{
	font-size: 13px;
    font-weight: 700;
    color: #929191;
    margin-left: 5px;
	text-transform: uppercase;
  }
  
    
  /* .responsive {
	padding: 0 6px;
	float: left;
	width: 24.99999%;
  } */
  
  /* @media only screen and (max-width: 700px) {
	.responsive {
	  width: 49.99999%;
	  margin: 6px 0;
	}
  } */
  
  @media only screen and (max-width: 500px) {
	.responsive {
	  width: 100%;
	}
  }
  
  .clearfix:after {
	content: "";
	display: table;
	clear: both;
  }

</style>
    
    <div class="intro">
    <div class="container">
        <div class="row">
            <div class="col">
                <h2 class="intro_title text-center">WE HAVE THE BEST TOURS</h2>
            </div>
        </div>

       <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" >
        <%--<asp:Repeater ID="Repeater1"  runat="server" DataSourceID="SqlDataSource1" >--%>
            <HeaderTemplate>
        <div class="row intro_items">

            <!-- Intro Item -->
            
            <div class="col-lg-4 intro_col">
                </HeaderTemplate>
            <ItemTemplate>
                 <div class="intro_item"> 
                    <!-- <div class="intro_item_overlay"></div> -->
                    <!-- Image by https://unsplash.com/@dnevozhai -->
                    
                   <%--<div class="card" style="background-image:url(../ADMIN/upload/<%#Eval("package_photo") %>)">--%>
                        <div class="responsive">
                            <div class="gallery" style="margin-left:50px;margin-top:100px ">
                               <%-- <img src= (../ADMIN/upload/<%#Eval("package_photo") %>)>--%>

                              <a target="_blank" href="img_5terre.jpg">
                                <img src= "../ADMIN/upload/<%#Eval("package_photo") %>" height="300px" width="300px" >
                              </a>
                              &nbsp;&nbsp;<div class="desc"><%#Eval("package_name") %></div>
                              <div class="desc1"><%#Eval("package_datelis") %></div>
                              <div class="desc2">₹<%#Eval("package_price") %><span>Pp</span></div>
                             
                              <%--   <div class="button search_button"> <button>search</button></div>
                               <asp:Button ID="Button1" class="button search_button" runat="server" Text="search" />--%>
                               
                                  <div class="button search_button" style="width:60%;padding-left:0px;margin-left:50px"><a href="Package Details.aspx?pid=<%#Eval("Id") %>">View Details</a></div>
                                
                                <%--<asp:Button class="button search_button" style="width:60%;padding-left:0px;margin-left:50px" ID="Button1" runat="server" Text="Button" />--%>
                            </div>
                          </div>
                     </div>
                        
                    </ItemTemplate>
            <FooterTemplate>
                <!-- </div> -->
                    
                <!-- </div> -->
            </div>
            </div>
              
            </FooterTemplate>
      
        <%--</asp:Repeater>--%>
    </asp:DataList>


        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT top 9 * FROM [package] WHERE ([package_category] = @package_category)">
            <SelectParameters>
                <asp:QueryStringParameter Name="package_category" QueryStringField="mid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       

        
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>

  



    </div>
    </div>
</asp:Content>

