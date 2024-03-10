<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.master" AutoEventWireup="true" CodeFile="Trips.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_USER_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style>
*
{
	margin: 0;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
body
{
	font-family: 'Open Sans', sans-serif;
	font-size: 14px;
	font-weight: 400;
	background: #FFFFFF;
	color: #a5a5a5;
}
div
{
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
ul
{
	list-style: none;
	margin-bottom: 0px;
}
p
{
	font-family: 'Open Sans', sans-serif;
	font-size: 14px;
	line-height: 2;
	font-weight: 400;
	color: #929191;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
p a
{
	display: inline;
	position: relative;
	color: inherit;
	border-bottom: solid 1px #ffa07f;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
a, a:hover, a:visited, a:active, a:link
{
	text-decoration: none;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
p a:active
{
	position: relative;
	color: #FF6347;
}
p a:hover
{
	color: #FFFFFF;
	background: #ffa07f;
}
p a:hover::after
{
	opacity: 0.2;
}
::selection
{
	
}
p::selection
{
	
}
h1{font-size: 48px;}
h2{font-size: 36px;}
h3{font-size: 24px;}
h4{font-size: 18px;}
h5{font-size: 14px;}
h1, h2, h3, h4, h5, h6
{
	font-family: 'Open Sans', sans-serif;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
h1::selection, 
h2::selection, 
h3::selection, 
h4::selection, 
h5::selection, 
h6::selection
{
	
}
.form-control
{
	color: #db5246;
}
section
{
	display: block;
	position: relative;
	box-sizing: border-box;
}
.clear
{
	clear: both;
}
.clearfix::before, .clearfix::after
{
	content: "";
	display: table;
}
.clearfix::after
{
	clear: both;
}
.clearfix
{
	zoom: 1;
}
.float_left
{
	float: left;
}
.float_right
{
	float: right;
}
.trans_200
{
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.trans_300
{
	-webkit-transition: all 300ms ease;
	-moz-transition: all 300ms ease;
	-ms-transition: all 300ms ease;
	-o-transition: all 300ms ease;
	transition: all 300ms ease;
}
.trans_400
{
	-webkit-transition: all 400ms ease;
	-moz-transition: all 400ms ease;
	-ms-transition: all 400ms ease;
	-o-transition: all 400ms ease;
	transition: all 400ms ease;
}
.trans_500
{
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
}
.fill_height
{
	height: 100%;
}
.super_container
{
	width: 100%;
	overflow: hidden;
}
.prlx_parent
{
	overflow: hidden;
}
.prlx
{
	height: 130% !important;
}
.nopadding
{
	padding: 0px !important;
}
.button
{
	display: inline-block;
	height: 53px;
	border-radius: 27px;
	overflow: hidden;
	z-index: 1;
}
.button_bcg
{
	position: absolute;
	top: 0;
	left: 0;
	width: 200%;
	height: 100%;
	background: linear-gradient(to right, #fa9e1b, #8d4fff, #fa9e1b);
	z-index: -1;
	-webkit-transition: all 400ms ease;
	-moz-transition: all 400ms ease;
	-ms-transition: all 400ms ease;
	-o-transition: all 400ms ease;
	transition: all 400ms ease;
}
.button:hover .button_bcg
{
	left: -100%;
}
.button a
{
	display: block;
	font-size: 13px;
	font-weight: 700;
	color: #fff;
	text-transform: uppercase;
	line-height: 53px;
	padding-left: 46px;
	padding-right: 46px;
	white-space: nowrap;
	z-index: 2;
}
.button span
{
	display: inline-block;
	vertical-align: middle;
	width: 5.75px;
	height: 5.63px;
	background: #FFFFFF;
	border-radius: 50%;
	margin-right: 2px;
}
.button span:first-child
{
	margin-left: 10px;
}
.button span:nth-child(2)
{*
{
	margin: 0;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
body
{
	font-family: 'Open Sans', sans-serif;
	font-size: 14px;
	font-weight: 400;
	background: #FFFFFF;
	color: #a5a5a5;
}
div
{
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
ul
{
	list-style: none;
	margin-bottom: 0px;
}
p
{
	font-family: 'Open Sans', sans-serif;
	font-size: 14px;
	line-height: 2;
	font-weight: 400;
	color: #929191;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
p a
{
	display: inline;
	position: relative;
	color: inherit;
	border-bottom: solid 1px #ffa07f;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
a, a:hover, a:visited, a:active, a:link
{
	text-decoration: none;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
p a:active
{
	position: relative;
	color: #FF6347;
}
p a:hover
{
	color: #FFFFFF;
	background: #ffa07f;
}
p a:hover::after
{
	opacity: 0.2;
}
::selection
{
	
}
p::selection
{
	
}
h1{font-size: 48px;}
h2{font-size: 36px;}
h3{font-size: 24px;}
h4{font-size: 18px;}
h5{font-size: 14px;}
h1, h2, h3, h4, h5, h6
{
	font-family: 'Open Sans', sans-serif;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
h1::selection, 
h2::selection, 
h3::selection, 
h4::selection, 
h5::selection, 
h6::selection
{
	
}
.form-control
{
	color: #db5246;
}
section
{
	display: block;
	position: relative;
	box-sizing: border-box;
}
.clear
{
	clear: both;
}
.clearfix::before, .clearfix::after
{
	content: "";
	display: table;
}
.clearfix::after
{
	clear: both;
}
.clearfix
{
	zoom: 1;
}
.float_left
{
	float: left;
}
.float_right
{
	float: right;
}
.trans_200
{
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.trans_300
{
	-webkit-transition: all 300ms ease;
	-moz-transition: all 300ms ease;
	-ms-transition: all 300ms ease;
	-o-transition: all 300ms ease;
	transition: all 300ms ease;
}
.trans_400
{
	-webkit-transition: all 400ms ease;
	-moz-transition: all 400ms ease;
	-ms-transition: all 400ms ease;
	-o-transition: all 400ms ease;
	transition: all 400ms ease;
}
.trans_500
{
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
}
.fill_height
{
	height: 100%;
}
.super_container
{
	width: 100%;
	overflow: hidden;
}
.prlx_parent
{
	overflow: hidden;
}
.prlx
{
	height: 130% !important;
}
.nopadding
{
	padding: 0px !important;
}
.button
{
	display: inline-block;
	height: 53px;
	border-radius: 27px;
	overflow: hidden;
	z-index: 1;
}
.button_bcg
{
	position: absolute;
	top: 0;
	left: 0;
	width: 200%;
	height: 100%;
	background: linear-gradient(to right, #fa9e1b, #8d4fff, #fa9e1b);
	z-index: -1;
	-webkit-transition: all 400ms ease;
	-moz-transition: all 400ms ease;
	-ms-transition: all 400ms ease;
	-o-transition: all 400ms ease;
	transition: all 400ms ease;
}
.button:hover .button_bcg
{
	left: -100%;
}
.button a
{
	display: block;
	font-size: 13px;
	font-weight: 700;
	color: #fff;
	text-transform: uppercase;
	line-height: 53px;
	padding-left: 46px;
	padding-right: 46px;
	white-space: nowrap;
	z-index: 2;
}
.button span
{
	display: inline-block;
	vertical-align: middle;
	width: 5.75px;
	height: 5.63px;
	background: #FFFFFF;
	border-radius: 50%;
	margin-right: 2px;
}
.button span:first-child
{
	margin-left: 10px;
}
.button span:nth-child(2)
{
	opacity: 0.6;
}
.button span:last-child
{
	opacity: 0.4;
	margin-right: 0px;
}
.parallax-window
{
    min-height: 400px;
    background: transparent;
}


/*********************************
7. Rating
*********************************/

.rating
{
	margin-top: 10px;
}
.rating i
{
	font-size: 19px;
	margin-right: 4px;
}
.rating i:last-child
{
	margin-right: 0px;
}
.rating_1 i:first-child{color: #ffeb8d;}
.rating_2 i:first-child{color: #ffeb8d;}
.rating_2 i:nth-child(2){color: #fed46b;}
.rating_3 i:first-child{color: #ffeb8d;}
.rating_3 i:nth-child(2){color: #fed46b;}
.rating_3 i:nth-child(3){color: #fbb53d;}
.rating_4 i:first-child{color: #ffeb8d;}
.rating_4 i:nth-child(2){color: #fed46b;}
.rating_4 i:nth-child(3){color: #fbb53d;}
.rating_4 i:nth-child(4){color: #fa9e1b;}
.rating_5 i:first-child{color: #ffeb8d;}
.rating_5 i:nth-child(2){color: #fed46b;}
.rating_5 i:nth-child(3){color: #fbb53d;}
.rating_5 i:nth-child(4){color: #fa9e1b;}
.rating_r i::before
{
	font-family: 'FontAwesome';
	content: "\f006";
	font-style: normal;
	font-size: 19px;
	margin-right: 4px;
}
.rating_r_1 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_2 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_2 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_3 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_3 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_3 i:nth-child(3)::before{color: #fbb53d; content: "\f005";}
.rating_r_4 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_4 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_4 i:nth-child(3)::before{color: #fbb53d; content: "\f005";}
.rating_r_4 i:nth-child(4)::before{color: #fa9e1b; content: "\f005";}
.rating_r_5 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_5 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_5 i:nth-child(3)::before{color: #fbb53d; content: "\f005";}
.rating_r_5 i:nth-child(4)::before{color: #fa9e1b; content: "\f005";}
.rating_r_5 i:nth-child(5)::before{color: #ef910a; content: "\f005";}

/*********************************
8. Search
*********************************/

.search
{

	position: absolute;
	top: 0;
	left: 0;
	width: 370px;
	height: 100%;
	background: #fa9e1b;
	z-index: 10;
}
.no-padding
{
	padding-left: 0px;
	padding-right: 0px;
}
.no-margin
{
	margin-left: 0px;
	margin-right: 0px;
}
.search_tabs_container
{
	position: relative;
	top: -94px;
	width: 100%;
}
.search_tabs
{
	height: auto;
	flex-wrap: wrap;
}
.search_tab
{
	font-size: 14px;
	font-weight: 700;
	color: #2d2c2c;
	text-transform: uppercase;
	text-align: center;
	height: 94px;
	width: 50%;
	flex-grow: 1;
	background: #FFFFFF;
	cursor: pointer;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.search_tab:not(:first-child):not(:nth-child(2))
{
	border: solid 1px #ededed;
	margin-right: -1px;
	margin-bottom: -1px;
}
.search_tab img
{
	margin-right: 10px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.search_tab:first-child
{
	border-top-left-radius: 94px;
	padding-left: 7px;
}
.search_tab:nth-child(2)
{
	border-top-right-radius: 94px;
	padding-right: 7px;
}
.search_tab.active
{
	background: #fa9e1b;
	color: #FFFFFF;
}
.search_tab.active img
{
	-webkit-filter: brightness(200%) grayscale(100%);
	-moz-filter: brightness(200%) grayscale(100%);
	-ms-filter: brightness(200%) grayscale(100%);
	-o-filter: brightness(200%) grayscale(100%);
  	filter: brightness(200%) grayscale(100%);
}
.search_tab:hover
{
	background: #fa9e1b;
	color: #FFFFFF;
}
.search_tab:hover img
{
	-webkit-filter: brightness(200%) grayscale(100%);
	-moz-filter: brightness(200%) grayscale(100%);
	/*-ms-filter: brightness(200%) grayscale(100%);*/
	-o-filter: brightness(200%) grayscale(100%);
  	filter: brightness(200%) grayscale(100%);
}
.search_panel
{
	display: none !important;
	width: 100%;
	height: 100%;
	-webkit-animation: fadeEffect 1s;
    animation: fadeEffect 1s;
    padding-left: 54px;
    padding-right: 47px;
    margin-top: -25px;
}
.search_panel.active
{
	display: flex!important;
}
/* Fade in tabs */
@-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}
.search_panel_content
{
	width: 100%;
	height: 100%;
	flex-wrap: wrap;
}
.search_input
{
	width: 100%;
	height: 46px;
	border: none;
	outline: none;
	padding-left: 15px;
	padding-right: 15px;
	font-size: 13px;
	font-weight: 600;
	color: #929191;
}
.search_item
{
	margin-bottom: 23px;
}
.search_item:first-child
{
	width: 100%;
}
.search_item:nth-child(2)
{
	width: 100%;
}
.search_item:nth-child(3)
{
	width: 100%;
}
.search_item:nth-child(4)
{
	width: calc(50% - 15px);
	margin-right: 30px;
}
.search_item:nth-child(5)
{
	width: calc(50% - 15px);
}
.search_item div
{
	font-size: 13px;
	font-weight: 700;
	color: #FFFFFF;
	text-transform: uppercase;
	margin-bottom: 14px;
}
.dropdown_item_select
{
	-webkit-appearance:none;
    -moz-appearance:none;
    -ms-appearance:none;
    -o-appearance:none;
    appearance:none;
	-webkit-box-shadow: 0px 0px 0px rgba(0, 0, 0, 0);
	-webkit-user-select: none;
	background-image: url(../images/dropdown.png);
	background-position: center right;
	background-repeat: no-repeat;
	border: solid 1px #FFFFFF;
	margin: 0;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	cursor: pointer;
}
.dropdown_item_select::-ms-expand
{
    display: none;
}
.dropdown_item_select:hover
{
	border: solid 1px #fa9e1c;
}
.dropdown_item_select:focus
{
	outline-color: #fa9e1c;
}
.search_button
{
	font-size: 13px;
	font-weight: 700;
	color: #fff;
	text-transform: uppercase;
	line-height: 53px;
	padding-left: 46px;
	padding-right: 46px;
	background: #31124b;
	-webkit-transform: translateY(15px);
	-moz-transform: translateY(15px);
	-ms-transform: translateY(15px);
	-o-transform: translateY(15px);
	transform: translateY(15px);
	border: none;
	outline: none;
	cursor: pointer;
	margin-top: 40px;
}
.search_button:hover
{
	opacity: 0.8;
}

/*********************************
8.1 Search Extras
*********************************/

.extras
{
	width: 100%;
	margin-top: 42px;
}
.search_extras_item
{
	width: 50%;
	float: left;
	margin-bottom: 10px;
}
.search_extras_item:nth-child(even)
{
	padding-left: 20px;
}
.search_extras_item div
{
	display: inline-block;
	cursor: pointer;
}
.search_extras_item div:hover .search_features_cb
{
	border: 1px solid #fd784f;
}
.search_extras_checkbox
{
	cursor: pointer;
}
.search_extras_cb
{
	display: block;
	position: relative;
	width: 12px;
	height: 12px;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
	background-color: #FFFFFF;
	border: 1px solid #FFFFFF;
	padding: 9px;
	margin-top: 2px;
	border-radius: 0px;
	display: inline-block;
	position: relative;
	cursor: pointer;
	float: left;
}
.search_extras_cb:focus
{
	outline: none;
	border: 1px solid #fd784f;
}
.search_extras_cb:checked::after
{
	display: block;
	position: absolute;
	top: 2px;
	left: 2px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	content: '';
	background: #fa9e1b;
}
.search_extras label
{
	display: block;
	position: relative;
	font-size: 12px;
	font-weight: 400;
	padding-left: 31px;
	margin-bottom: 0px;
	cursor: pointer;
	color: #FFFFFF;
}

/*********************************
8.2 Search More Options
*********************************/

.more_options
{
	margin-top: 41px;
}
.more_options_trigger
{
	display: inline-block;
	width: auto;
}
.more_options_trigger a
{
	font-size: 14px;
	font-weight: 700;
	color: #FFFFFF;
	text-transform: uppercase;
	padding-left: 18px;
}
.more_options_trigger a::before
{
	display: block;
	position: absolute;
	top: 7px;
	left: 0;
	width: 10px;
	height: 10px;
	content: '+';
	font-family: 'Open Sans', sans-serif;
	font-size: 13px;
	line-height: 8px;
	color: #FFFFFF;
	padding-left: 1px;
}
.more_options_trigger.active a::before
{
	content: '-';
	padding-left: 2px;
}
.more_options_list
{
	display: block;
	width: 100%;
	max-height: 0px;
	overflow: hidden;
	opacity: 0;
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
}
.more_options_list label
{
	display: block;
	position: relative;
	font-size: 12px;
	font-weight: 400;
	padding-left: 31px;
	margin-bottom: 0px;
	cursor: pointer;
	color: #FFFFFF;
}
.more_options_list li
{
	margin-bottom: 10px;
}
.more_options_list.active
{
	margin-top: 20px;
	opacity: 1;
}

/*********************************
9. Offers
*********************************/

.offers
{
	width: 100%;
	padding-top: 115px;
	padding-bottom: 115px;
}

/*********************************
9.1 Sorting
*********************************/

.offers_sorting
{
	display: inline-block;
}
.offers_sorting > li
{
	display: inline-block;
	position: relative;
	width: 166px;
	height: 50px;
	font-size: 12px;
	font-weight: 700;
	color: #2d2c2c;
	text-transform: uppercase;
	line-height: 50px;
	cursor: pointer;
	border: solid 2px #dadada;
	padding-left: 25px;
	padding-right: 14px;
	margin-right: 16px;
}
.distance_item
{
	width: 234px !important;
}
.offers_sorting li i
{
	float: right;
	line-height: 48px;
	color: #929191;
}
.offers_sorting li ul
{
	display: block;
	position: absolute;
	right: 0;
	top: 120%;
	margin: 0;
	width: 100%;
	background: #FFFFFF;
	visibility: hidden;
	opacity: 0;
	z-index: 1;
	box-shadow: 0 15px 25px rgba(63, 78, 100, 0.15);
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.offers_sorting > li:hover ul
{
	visibility: visible;
	opacity: 1;
	top: calc(100% + 1px);
}
.offers_sorting li ul li
{
	display: block;
	text-align: center;
	padding-left: 25px;
	padding-right: 25px;
}
.offers_sorting li ul li span
{
	display: block;
	height: 40px;
	line-height: 40px;
	border-bottom: solid 1px #dddddd;
	color: #51545f;
	text-align: left;
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.offers_sorting li ul li span:hover
{
	color: #b5aec4;
}
.offers_sorting li ul li:last-child span
{
	border-bottom: none;
}
.offers_sorting li span:nth-child(2)
{
	margin-left: 71px;
}

/*********************************
9.2 Offers Grid
*********************************/

.offers_grid
{
	width: 100%;
	margin-top: 66px;
}
.offers_item
{
	width: 100%;
	margin-bottom: 46px;
}
.offers_item:last-child
{
	margin-bottom: 0px;
}
.offers_image img
{
	width: 100%;
}
.offers_image_container
{
	width: 100%;
	height: 100%;
}
.offers_image_background
{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
}
.offer_name
{
	position: absolute;
	left: 0;
	bottom: 27px;
	width: 180px;
	height: 33px;
	background: #fa9e1b;
	overflow: hidden;
}
.offer_name a
{
	display: block;
	font-size: 16px;
	font-weight: 700;
	color: #FFFFFF;
	text-transform: uppercase;
	line-height: 35px;
	padding-left: 22px;
}
.offers_content
{
	
}
.offers_price
{
	display: inline-block;
	font-size: 36px;
	font-weight: 700;
	color: #eda84a;
	line-height: 25px;
}
.offers_price span
{
	font-size: 14px;
	font-weight: 400;
	color: #929191;
	margin-left: 12px;
}
.offers_rating
{

}
.offers_rating i::before
{
	font-size: 13px;
	margin-right: 2px;
}
.offers_text
{
	font-size: 14px;
	font-weight: 400;
	color: #929191;
	margin-top: 16px;
	margin-bottom: 0px;
}
.offers_icons
{
	margin-top: 21px;
}
.offers_icons_item
{
	display: inline-block;
	margin-right: 15px;
}
.offers_icons_item:last-child
{
	margin-right: 0px;
}
.book_button
{
	background: #31124b;
	margin-top: 39px;
	margin-bottom: -5px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.book_button:hover
{
	opacity: 0.8;
}
.offer_reviews
{
	position: absolute;
	top: 0;
	right: 0;
}
.offer_reviews_content
{
	display: inline-block;
	vertical-align: middle;
	margin-right: 7px;
}
.offer_reviews_title
{
	font-size: 12px;
	font-weight: 700;
	color: #2d2c2c;
	text-transform: uppercase;
}
.offer_reviews_subtitle
{
	font-size: 12px;
	font-weight: 600;
	color: #929191;
	margin-top: 1px;
}
.offer_reviews_rating
{
	display: inline-block;
	width: 62px;
	height: 57px;
	font-size: 28px;
	font-weight: 700;
	color: #FFFFFF;
	line-height: 57px;
	background: #fa9e1b;
	vertical-align: middle;
	border-radius: 45%;
	-webkit-transform: translateY(-4px);
	-moz-transform: translateY(-4px);
	-ms-transform: translateY(-4px);
	-o-transform: translateY(-4px);
	transform: translateY(-4px);
}

	opacity: 0.6;
}
.button span:last-child
{
	opacity: 0.4;
	margin-right: 0px;
}
.parallax-window
{
    min-height: 400px;
    background: transparent;
}


/*********************************
7. Rating
*********************************/

.rating
{
	margin-top: 10px;
}
.rating i
{
	font-size: 19px;
	margin-right: 4px;
}
.rating i:last-child
{
	margin-right: 0px;
}
.rating_1 i:first-child{color: #ffeb8d;}
.rating_2 i:first-child{color: #ffeb8d;}
.rating_2 i:nth-child(2){color: #fed46b;}
.rating_3 i:first-child{color: #ffeb8d;}
.rating_3 i:nth-child(2){color: #fed46b;}
.rating_3 i:nth-child(3){color: #fbb53d;}
.rating_4 i:first-child{color: #ffeb8d;}
.rating_4 i:nth-child(2){color: #fed46b;}
.rating_4 i:nth-child(3){color: #fbb53d;}
.rating_4 i:nth-child(4){color: #fa9e1b;}
.rating_5 i:first-child{color: #ffeb8d;}
.rating_5 i:nth-child(2){color: #fed46b;}
.rating_5 i:nth-child(3){color: #fbb53d;}
.rating_5 i:nth-child(4){color: #fa9e1b;}
.rating_r i::before
{
	font-family: 'FontAwesome';
	content: "\f006";
	font-style: normal;
	font-size: 19px;
	margin-right: 4px;
}
.rating_r_1 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_2 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_2 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_3 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_3 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_3 i:nth-child(3)::before{color: #fbb53d; content: "\f005";}
.rating_r_4 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_4 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_4 i:nth-child(3)::before{color: #fbb53d; content: "\f005";}
.rating_r_4 i:nth-child(4)::before{color: #fa9e1b; content: "\f005";}
.rating_r_5 i:first-child::before{color: #ffeb8d; content: "\f005";}
.rating_r_5 i:nth-child(2)::before{color: #fed46b; content: "\f005";}
.rating_r_5 i:nth-child(3)::before{color: #fbb53d; content: "\f005";}
.rating_r_5 i:nth-child(4)::before{color: #fa9e1b; content: "\f005";}
.rating_r_5 i:nth-child(5)::before{color: #ef910a; content: "\f005";}

/*********************************
8. Search
*********************************/

.search
{

	position: absolute;
	top: 0;
	left: 0;
	width: 370px;
	height: 100%;
	background: #fa9e1b;
	z-index: 10;
}
.no-padding
{
	padding-left: 0px;
	padding-right: 0px;
}
.no-margin
{
	margin-left: 0px;
	margin-right: 0px;
}
.search_tabs_container
{
	position: relative;
	top: -94px;
	width: 100%;
}
.search_tabs
{
	height: auto;
	flex-wrap: wrap;
}
.search_tab
{
	font-size: 14px;
	font-weight: 700;
	color: #2d2c2c;
	text-transform: uppercase;
	text-align: center;
	height: 94px;
	width: 50%;
	flex-grow: 1;
	background: #FFFFFF;
	cursor: pointer;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.search_tab:not(:first-child):not(:nth-child(2))
{
	border: solid 1px #ededed;
	margin-right: -1px;
	margin-bottom: -1px;
}
.search_tab img
{
	margin-right: 10px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.search_tab:first-child
{
	border-top-left-radius: 94px;
	padding-left: 7px;
}
.search_tab:nth-child(2)
{
	border-top-right-radius: 94px;
	padding-right: 7px;
}
.search_tab.active
{
	background: #fa9e1b;
	color: #FFFFFF;
}
.search_tab.active img
{
	-webkit-filter: brightness(200%) grayscale(100%);
	-moz-filter: brightness(200%) grayscale(100%);
	-ms-filter: brightness(200%) grayscale(100%);
	-o-filter: brightness(200%) grayscale(100%);
  	filter: brightness(200%) grayscale(100%);
}
.search_tab:hover
{
	background: #fa9e1b;
	color: #FFFFFF;
}
.search_tab:hover img
{
	-webkit-filter: brightness(200%) grayscale(100%);
	-moz-filter: brightness(200%) grayscale(100%);
	-ms-filter: brightness(200%) grayscale(100%);
	-o-filter: brightness(200%) grayscale(100%);
  	filter: brightness(200%) grayscale(100%);
}
.search_panel
{
	display: none !important;
	width: 100%;
	height: 100%;
	-webkit-animation: fadeEffect 1s;
    animation: fadeEffect 1s;
    padding-left: 54px;
    padding-right: 47px;
    margin-top: -25px;
}
.search_panel.active
{
	display: flex!important;
}
/* Fade in tabs */
@-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}
.search_panel_content
{
	width: 100%;
	height: 100%;
	flex-wrap: wrap;
}
.search_input
{
	width: 100%;
	height: 46px;
	border: none;
	outline: none;
	padding-left: 15px;
	padding-right: 15px;
	font-size: 13px;
	font-weight: 600;
	color: #929191;
}
.search_item
{
	margin-bottom: 23px;
}
.search_item:first-child
{
	width: 100%;
}
.search_item:nth-child(2)
{
	width: 100%;
}
.search_item:nth-child(3)
{
	width: 100%;
}
.search_item:nth-child(4)
{
	width: calc(50% - 15px);
	margin-right: 30px;
}
.search_item:nth-child(5)
{
	width: calc(50% - 15px);
}
.search_item div
{
	font-size: 13px;
	font-weight: 700;
	color: #FFFFFF;
	text-transform: uppercase;
	margin-bottom: 14px;
}
.dropdown_item_select
{
	-webkit-appearance:none;
    -moz-appearance:none;
    -ms-appearance:none;
    -o-appearance:none;
    appearance:none;
	-webkit-box-shadow: 0px 0px 0px rgba(0, 0, 0, 0);
	-webkit-user-select: none;
	background-image: url(../images/dropdown.png);
	background-position: center right;
	background-repeat: no-repeat;
	border: solid 1px #FFFFFF;
	margin: 0;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	cursor: pointer;
}
.dropdown_item_select::-ms-expand
{
    display: none;
}
.dropdown_item_select:hover
{
	border: solid 1px #fa9e1c;
}
.dropdown_item_select:focus
{
	outline-color: #fa9e1c;
}
.search_button
{
	font-size: 13px;
	font-weight: 700;
	color: #fff;
	text-transform: uppercase;
	line-height: 53px;
	padding-left: 46px;
	padding-right: 46px;
	background: #31124b;
	-webkit-transform: translateY(15px);
	-moz-transform: translateY(15px);
	-ms-transform: translateY(15px);
	-o-transform: translateY(15px);
	transform: translateY(15px);
	border: none;
	outline: none;
	cursor: pointer;
	margin-top: 40px;
}
.search_button:hover
{
	opacity: 0.8;
}

/*********************************
8.1 Search Extras
*********************************/

.extras
{
	width: 100%;
	margin-top: 42px;
}
.search_extras_item
{
	width: 50%;
	float: left;
	margin-bottom: 10px;
}
.search_extras_item:nth-child(even)
{
	padding-left: 20px;
}
.search_extras_item div
{
	display: inline-block;
	cursor: pointer;
}
.search_extras_item div:hover .search_features_cb
{
	border: 1px solid #fd784f;
}
.search_extras_checkbox
{
	cursor: pointer;
}
.search_extras_cb
{
	display: block;
	position: relative;
	width: 12px;
	height: 12px;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
	background-color: #FFFFFF;
	border: 1px solid #FFFFFF;
	padding: 9px;
	margin-top: 2px;
	border-radius: 0px;
	display: inline-block;
	position: relative;
	cursor: pointer;
	float: left;
}
.search_extras_cb:focus
{
	outline: none;
	border: 1px solid #fd784f;
}
.search_extras_cb:checked::after
{
	display: block;
	position: absolute;
	top: 2px;
	left: 2px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	content: '';
	background: #fa9e1b;
}
.search_extras label
{
	display: block;
	position: relative;
	font-size: 12px;
	font-weight: 400;
	padding-left: 31px;
	margin-bottom: 0px;
	cursor: pointer;
	color: #FFFFFF;
}

/*********************************
8.2 Search More Options
*********************************/

.more_options
{
	margin-top: 41px;
}
.more_options_trigger
{
	display: inline-block;
	width: auto;
}
.more_options_trigger a
{
	font-size: 14px;
	font-weight: 700;
	color: #FFFFFF;
	text-transform: uppercase;
	padding-left: 18px;
}
.more_options_trigger a::before
{
	display: block;
	position: absolute;
	top: 7px;
	left: 0;
	width: 10px;
	height: 10px;
	content: '+';
	font-family: 'Open Sans', sans-serif;
	font-size: 13px;
	line-height: 8px;
	color: #FFFFFF;
	padding-left: 1px;
}
.more_options_trigger.active a::before
{
	content: '-';
	padding-left: 2px;
}
.more_options_list
{
	display: block;
	width: 100%;
	max-height: 0px;
	overflow: hidden;
	opacity: 0;
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
}
.more_options_list label
{
	display: block;
	position: relative;
	font-size: 12px;
	font-weight: 400;
	padding-left: 31px;
	margin-bottom: 0px;
	cursor: pointer;
	color: #FFFFFF;
}
.more_options_list li
{
	margin-bottom: 10px;
}
.more_options_list.active
{
	margin-top: 20px;
	opacity: 1;
}

/*********************************
9. Offers
*********************************/

.offers
{
	width: 100%;
	padding-top: 115px;
	padding-bottom: 115px;
}

/*********************************
9.1 Sorting
*********************************/

.offers_sorting
{
	display: inline-block;
}
.offers_sorting > li
{
	display: inline-block;
	position: relative;
	width: 166px;
	height: 50px;
	font-size: 12px;
	font-weight: 700;
	color: #2d2c2c;
	text-transform: uppercase;
	line-height: 50px;
	cursor: pointer;
	border: solid 2px #dadada;
	padding-left: 25px;
	padding-right: 14px;
	margin-right: 16px;
}
.distance_item
{
	width: 234px !important;
}
.offers_sorting li i
{
	float: right;
	line-height: 48px;
	color: #929191;
}
.offers_sorting li ul
{
	display: block;
	position: absolute;
	right: 0;
	top: 120%;
	margin: 0;
	width: 100%;
	background: #FFFFFF;
	visibility: hidden;
	opacity: 0;
	z-index: 1;
	box-shadow: 0 15px 25px rgba(63, 78, 100, 0.15);
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.offers_sorting > li:hover ul
{
	visibility: visible;
	opacity: 1;
	top: calc(100% + 1px);
}
.offers_sorting li ul li
{
	display: block;
	text-align: center;
	padding-left: 25px;
	padding-right: 25px;
}
.offers_sorting li ul li span
{
	display: block;
	height: 40px;
	line-height: 40px;
	border-bottom: solid 1px #dddddd;
	color: #51545f;
	text-align: left;
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.offers_sorting li ul li span:hover
{
	color: #b5aec4;
}
.offers_sorting li ul li:last-child span
{
	border-bottom: none;
}
.offers_sorting li span:nth-child(2)
{
	margin-left: 71px;
}

/*********************************
9.2 Offers Grid
*********************************/

.offers_grid
{
	width: 100%;
	margin-top: 66px;
}
.offers_item
{
	width: 100%;
	margin-bottom: 46px;
}
.offers_item:last-child
{
	margin-bottom: 0px;
}
.offers_image img
{
	width: 100%;
}
.offers_image_container
{
	width: 100%;
	height: 100%;
}
.offers_image_background
{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
}
.offer_name
{
	position: absolute;
	left: 0;
	bottom: 27px;
	width: 180px;
	height: 33px;
	background: #fa9e1b;
	overflow: hidden;
}
.offer_name a
{
	display: block;
	font-size: 16px;
	font-weight: 700;
	color: #FFFFFF;
	text-transform: uppercase;
	line-height: 35px;
	padding-left: 22px;
}
.offers_content
{
	
}
.offers_price {
    display: inline-block;
    font-size: 30px;
    font-weight: 700;
    color: #eda84a;
    line-height: 25px;
    text-transform: uppercase;
}
.offers_price span
{
	font-size: 14px;
	font-weight: 400;
	color: #929191;
	margin-left: 12px;
}
.offers_rating
{

}
.offers_rating i::before
{
	font-size: 13px;
	margin-right: 2px;
}
.offers_text
{
	font-size: 14px;
	font-weight: 400;
	color: #929191;
	margin-top: 16px;
	margin-bottom: 0px;
}
.offers_icons
{
	margin-top: 21px;
}
.offers_icons_item
{
	display: inline-block;
	margin-right: 15px;
}
.offers_icons_item:last-child
{
	margin-right: 0px;
}
.book_button
{
	background: #31124b;
	margin-top: 39px;
	margin-bottom: -5px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.book_button:hover
{
	opacity: 0.8;
 
}
.offer_reviews
{
	position: absolute;
	top: 0;
	right: 0;
}
.offer_reviews_content
{
	display: inline-block;
	vertical-align: middle;
	margin-right: 7px;
}
.offer_reviews_title
{
	font-size: 12px;
	font-weight: 700;
	color: #2d2c2c;
	text-transform: uppercase;
}
.offer_reviews_subtitle
{
	font-size: 12px;
	font-weight: 600;
	color: #929191;
	margin-top: 1px;
}
.offer_reviews_rating
{
	display: inline-block;
	width: 62px;
	height: 57px;
	font-size: 28px;
	font-weight: 700;
	color: #FFFFFF;
	line-height: 57px;
	background: #fa9e1b;
	vertical-align: middle;
	border-radius: 45%;
	-webkit-transform: translateY(-4px);
	-moz-transform: translateY(-4px);
	-ms-transform: translateY(-4px);
	-o-transform: translateY(-4px);
	transform: translateY(-4px);
}

.box{
	/* background-color: #000;
	font-family: 'Hind', sans-serif;
	overflow: hidden;
	position: relative; */
	background-color: #000;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
	overflow: hidden;
}
.box:before{
	content: '';
	border: 1px solid #fff;
	transform: scaleY(0);
	/* position: absolute; */
	/* left: 12px; */
	/* top: 12px; */
	/* bottom: 27px; */
	/* right: 12px; */
	z-index: 1;
	transition: all 0.5s ease 0s;

	position: absolute;
	/* top: 0;
	left: 0; */
	left: 12px; 
	top: 12px;
	bottom: 27px;
	right: 12px;
	/* width: 100%;
	height: 100%; */
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
}
.box:hover:before{ transform: scaleY(1); }
.box img{
	/* width: 100%;
	height: auto; */
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
	transition: all 0.5s ease 0s;
}
.box:hover img{
	opacity: 0.2;
	transform: scale(1.1);
	transform-origin: left top;
}
.box .box-content{
	color: #fff;
	text-align: center;
	width: 90%;
	filter: blur(5px);
	opacity: 0;
	transform: translateX(-50%) translateY(50%);
	position: absolute;
	bottom: 50%;
	left: 50%;
	z-index: 2;
	transition: all 0.5s ease 0.2s;
}
.box:hover .box-content{
	filter: blur(0);
	opacity: 1;
}
.box .title{
	font-size: 25px;
	font-weight: 600;
	letter-spacing: 0.5px;
	text-transform: uppercase;
	margin: 0;
}
.box .post{
	color: #4cd137;
	font-size: 16px;
	font-style: italic;
	text-transform: capitalize;
	display: block;
}
.box .icon{
	padding: 0;
	margin: 0;
	list-style: none;
	opacity: 0;
	transform: translateX(-50%) scale(0);
	position: absolute;
	left: 50%;
	bottom: 10px;
	z-index: 1;
	transition: all 0.3s ease 0.3s;
}
.box:hover .icon{
	opacity: 1;
	transform: translateX(-50%) scale(1);
}
.box .icon li{
	margin: 0 3px;
	display: inline-block;
}
.box .icon li a{
	color: #000;
	background-color: #fff;
	font-size: 15px;
	text-align: center;
	line-height: 38px;
	height: 35px;
	width: 35px;
	display: block;
	transition: all 0.3s ease 0s;
}
.box .icon li a:hover{
	color: #000;
	background: #4cd137;
}
@media only screen and (max-width:990px){
	.box{ margin: 0 0 30px; }
}

.offers_distance
{
	font-size: 15px;
	color: rgb(170, 170, 170);
	font-weight: 500;
}

.offers_distance span
{
	font-size: 14px;
	font-weight: 400;
	color: #929191;
	/* margin-left: 12px; */
}

text-center {
    text-align: center!important;
}

.section_title {
    font-size: 30px;
    font-weight: 700;
    color: #2d2c2c;
    margin-top: 50px;
    text-transform: uppercase;
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
      <%--<link rel="stylesheet" type="text/css" href="styles/offers_styles.css">--%>
      <link rel="stylesheet" type="text/css" href="styles/offers_responsive.css">

     <!-- Offers -->

		<div class="container">
			<div class="row">

				<div class="col-lg-1 temp_col"></div>
				<div class="col-lg-11">
					<div class="col text-center">
						<h2 class="section_title">the best road trips you have to visit</h2>
					</div>
					<!-- Offers Sorting -->
				<%--	<div class="offers_sorting_container">
						<ul class="offers_sorting">
							<li>
								<span class="sorting_text">price</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".price_sorting"><span>show all</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>ascending</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">location</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>default</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>alphabetical</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">stars</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="filter_btn" data-filter="*"><span>show all</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "stars" }'><span>ascending</span></li>
									<li class="filter_btn" data-filter=".rating_3"><span>3</span></li>
									<li class="filter_btn" data-filter=".rating_4"><span>4</span></li>
									<li class="filter_btn" data-filter=".rating_5"><span>5</span></li>
								</ul>
							</li>
							<li class="distance_item">
								<span class="sorting_text">distance from center</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="num_sorting_btn"><span>distance</span></li>
									<li class="num_sorting_btn"><span>distance</span></li>
									<li class="num_sorting_btn"><span>distance</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">reviews</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="num_sorting_btn"><span>review</span></li>
									<li class="num_sorting_btn"><span>review</span></li>
									<li class="num_sorting_btn"><span>review</span></li>
								</ul>
							</li>
						</ul>
					</div>--%>
				</div>
        
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>
				<div class="col-lg-12">
					<!-- Offers Grid -->

					<div class="offers_grid">

						<!-- Offers Item -->
                        </HeaderTemplate>
                    <ItemTemplate>
						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										<!-- Image by https://unsplash.com/@kensuarez -->
										<div class="box">
                                            <div class="offers_image_background" style="background-image:url(../ADMIN/upload/<%#Eval("photo") %>)"></div>
											<%--<img src="C:\Users\Administrator\OneDrive\Desktop\Projet_Backup\6-1\trips\mumbai_to_pune.jpg">--%>
											<div class="box-content">
												<h3 class="title">VIEW TRIP</h3>
												<span class="post"><%#Eval("stating_place")%> to <%#Eval("ending_place")%></span>
											</div>
											<%--<ul class="icon">
												<li><a href="#"><i class="fa fa-search"></i></a></li>
												<li><a href="#"><i class="fa fa-link"></i></a></li>
											</ul>--%>
										</div>
										<!-- <div class="offers_image_background" style="background-image:url(trips/mumbai_to_pune.jpg)"></div> -->
										<!-- <div class="offer_name"><a href="single_listing.html">grand castle</a></div> -->
									</div>
								</div>
								<div class="col-lg-8">
									<div class="offers_content">
										<div class="offers_price"><%#Eval("stating_place")%> to <%#Eval("ending_place")%></div>
										<%--<div class="rating_r rating_r_4 offers_rating" data-rating="3">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div>
										--%>
                                        <br /><div class="offers_distance"><h3><b>Trip Stating Date:- <%#Eval("stating_date")%></b></h3></div><br />
										<div class="offers_distance"><h3><b>distance :- <%#Eval("distance")%></b></h3></div><br />
                                        <div class="offers_distance"><h3><b>Duration:- <%#Eval("duration")%></b></h3></div><br />
                                        <div class="offers_price">price:- <%#Eval("price")%></div>
                                        
										
										<%--<p class="offers_text">Price <%#Eval("price")%> </p>--%>
                                     <%--   <p class="offers_text">Price <%#Eval("discription")%> </p>--%>
										<div class="offers_icons">
											<%--<ul class="offers_icons_list">
												<li class="offers_icons_item"><img src="images/post.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
											</ul>--%>
										</div> 
										   <div class="button book_button"><a href="tripsbooking.aspx?id=<%#Eval("id") %>" ">view trip</a></div>
									<%--	<div class="offer_reviews">--%>
										<%--	<div class="offer_reviews_content">
												<%--<div class="offer_reviews_title">very good</div>
												<div class="offer_reviews_subtitle">100 reviews</div>--%>
											<%--</div>--%>
											<%--<div class="offer_reviews_rating text-center">8.1</div>--%>
										<%--</div>--%>
									</div>
								</div>
							</div>
						</div>
                    </ItemTemplate>
						<FooterTemplate>
					</div>
				</div>
    </FooterTemplate>
               </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [trips] WHERE (([stating_place] = @stating_place)  AND ([status] = @status))">
                    <SelectParameters>
                        <asp:SessionParameter Name="stating_place" SessionField="city" Type="String" />
                        <asp:SessionParameter SessionField="city" Name="stating_place2" Type="String"></asp:SessionParameter>
                        <asp:Parameter DefaultValue="on" Name="status" Type="String"></asp:Parameter>
                    </SelectParameters>
                </asp:SqlDataSource>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/offers_custom.js"></script>
       
      </div>
      </div>
      </div>
      </div>
</asp:Content>

