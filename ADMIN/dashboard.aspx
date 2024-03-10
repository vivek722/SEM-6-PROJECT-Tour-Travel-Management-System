<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_ADMIN_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!DOCTYPE html>
<html>
    
  <head>
      <style>
         body, table, input, select, textarea {

}


.graph {
	margin-bottom:1em;
  font:normal 100%/150% arial,helvetica,sans-serif;
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
     
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Widgets</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
    <
  <body class="skin-blue">
    <div class="wrapper">   

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header" >
          <h1>
            
          <b><i>  Welcome <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></i></b>
          </h1>
          <ol class="breadcrumb">
              <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Black" BorderStyle="Solid" Font-Size="Medium" ForeColor="White" Height="30px" NavigateUrl="~/ADMIN/login/login.aspx" Width="60px">Logout</asp:HyperLink>
               <%--<asp:Button ID="Button1"  runat="server" Text="Logout" Height="40px" Width="104px" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"   /> <i class="fa fa-sign-out" style="font-size:36px;margin-top:10px"></i>--%>
            <%--<li><a href="#"><i class="fa fa-dashboard"></i></a></li>--%>
            <li class="active"></li>
          </ol>
        </section>                              
          <br />
          <br />
        <!-- Main content -->
        <section class="content">

            <table  style="width:70%;height:400px" class="graph"  align="center">
	<h2 align="center"><b>Musafir Tour & Travels Mangement Booking System Chart</b> </h2>

     
	<thead>
		<tr>
			<th scope="col">Item</th>
			<th scope="col">Percent</th>
		</tr>
	</thead><tbody>
		<tr style="height:65%">
			<th scope="row">Book Packages</th>
			<td><span>65%</span></td>
		</tr>
		<tr style="height:23%">
			<th scope="row">Book Trips</th>
			<td><span>23%</span></td>
		</tr>
		<tr style="height:57%">
			<th scope="row">Book Hotels</th>
			<td><span>57%</span></td>
		</tr>
		<tr style="height:38%">
			<th scope="row">Book Flight</th>
			<td><span>38%</span></td>
		</tr>
		<%--<tr style="height:35%">
			<th scope="row">Youtube</th>
			<td><span>35%</span></td>
		</tr>
		<tr style="height:30%">
			<th scope="row">LinkedIn</th>
			<td><span>30%</span></td>
		</tr>
		<tr style="height:5%">
			<th scope="row">Twitter</th>
			<td><span>5%</span></td>
		</tr>
		<tr style="height:20%">
			<th scope="row">Other</th>
			<td><span>20%</span></td>
		</tr>--%>
	</tbody>
</table>

           
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />

            


          <h4 class="page-header" align="center">
           <b> Admin DeshBord </b>
            <small> <code></code></small>
          </h4>
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                    Our Cruise
                  </p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                     
                </div>
                <a href="cruise.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>
                     <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                    Our Activity
                  </p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="activity.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>
                       <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                    User Registrations
                  </p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="registar.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                    Our Rental Cars
                  </p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="car.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->

          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-blue">
                <div class="inner">
                  <h3>
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                    Hotel Booking    Details
                  </p>
                </div>
                <div class="icon">
                  <i class="ion ion-ios-pricetag-outline"></i>
                </div>
                <a href="hotelbooking.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-purple">
                <div class="inner">
                  <h3>
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                  Package Booking Details
                  </p>
                </div>
                <div class="icon">
                   <i class="ion ion-ios-pricetag-outline"></i>
                </div>
                <a href="packagebooking.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-teal">
                <div class="inner">
                  <h3>
                   <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                   Trips Booking Detail
                  </p>
                </div>
                <div class="icon">
                <i class="ion ion-ios-pricetag-outline"></i>
                </div>
                <a href="tripbooking.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-maroon">
                <div class="inner">
                  <h3>
                    <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                  </h3>
                  <p>
                    Flight Booking Details
                  </p>
                </div>
                <div class="icon">
                  <i class="ion ion-ios-pricetag-outline"></i>
                </div>
                <a href="flightbooking.aspx" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->

          <!-- Widgets as boxes -->
          
            </div><!-- /.col -->
          </div><!-- /.row -->


      

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      
    </div><!-- ./wrapper -->
      



      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
      </footer>
    <!-- jQuery 2.1.3 -->
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js" type="text/javascript"></script>
  </body>
</html>

</asp:Content>

