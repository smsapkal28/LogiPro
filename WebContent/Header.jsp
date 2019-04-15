<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String userName = "null";
String location = "null";
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("username")) userName = cookie.getValue();
	if(cookie.getName().equals("location")) location = cookie.getValue();

}
}
System.out.println(location+"======userName       =="+userName);
if(userName.equals("null") || userName == null) 
	{
	System.out.println(request.getContextPath() +"==1111======userName    iff   =="+userName);
	request.setAttribute("message", "Session Expired....!");
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Login.jsp");
	dispatcher.forward(request, response);
	//response.sendRedirect(request.getContextPath() +"/LoginController?action=Logout");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width" />
<title>Project || Page</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/layout.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/themes.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/typography.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/shCore.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/jquery.jqplot.css"
	rel="stylesheet" type="text/css" media="screen">
<link
	href="${pageContext.request.contextPath}/css/jquery-ui-1.8.18.custom.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/data-table.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/form.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/ui-elements.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/wizard.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/sprite.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="${pageContext.request.contextPath}/css/gradient.css"
	rel="stylesheet" type="text/css" media="screen">
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ie/ie7.css" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ie/ie8.css" />
<![endif]-->
<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ie/ie9.css" />
<![endif]-->
<!-- Jquery -->


<script src="${pageContext.request.contextPath}/js/jquery-1.7.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery-ui-1.8.18.custom.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>
<script src="${pageContext.request.contextPath}/js/chosen.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/uniform.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.blockUI.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap-dropdown.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap-colorpicker.js"></script>
<script src="${pageContext.request.contextPath}/js/sticky.full.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.noty.js"></script>
<script
	src="${pageContext.request.contextPath}/js/selectToUISlider.jQuery.js"></script>
<script src="${pageContext.request.contextPath}/js/fg.menu.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.tagsinput.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cleditor.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.tipsy.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.peity.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.simplemodal.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.jBreadCrumb.1.1.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.colorbox-min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.idTabs.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.multiFieldExtender.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.confirm.js"></script>
<script src="${pageContext.request.contextPath}/js/elfinder.min.js"></script>
<script src="${pageContext.request.contextPath}/js/accordion.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/autogrow.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/check-all.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/data-table.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/ZeroClipboard.js"></script>
<script src="${pageContext.request.contextPath}/js/TableTools.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jeditable.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/duallist.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/easing.jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/js/full-calendar.jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/js/input-limiter.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/inputmask.jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/js/iphone-style-checkbox.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/meta-data.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/quicksand.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/raty.jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/js/smart-wizard.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/stepy.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/treeview.jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/js/ui-accordion.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/vaidation.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/mosaic.1.0.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.collapse.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.autocomplete.min.js"></script>
<script src="${pageContext.request.contextPath}/js/localdata.js"></script>
<script src="${pageContext.request.contextPath}/js/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.jqplot.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.dateAxisRenderer.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.cursor.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.logAxisRenderer.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.canvasTextRenderer.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.canvasAxisTickRenderer.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.highlighter.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.pieRenderer.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.barRenderer.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.pointLabels.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/chart-plugins/jqplot.meterGaugeRenderer.min.js"></script>
<script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
<script src="${pageContext.request.contextPath}/js/ColVis.min.js"></script>

<style>
.sidebar1 {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: gainsboro;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 0px;
}

.sidebar1 .closebtn {
	position: absolute;
	top: 15px;
	right: 20px;
	font-size: 24px;
	/*margin-left: 50px;*/
}

.openbtn {
	font-size: 14px;
	cursor: pointer;
	background-color: #aa2c00;
	color: white;
	padding: 0px 5px;
	border: none;
}

.openbtn:hover {
	background-color: #135f85;
}

#main {
	transition: margin-left .5s;
	padding: 5px;
}

.page_title ul {
	padding: 5px 10px;
	list-style: none;
	background: #f2f2f2;
}

.page_title ul li {
	display: inline-block;
	position: relative;
	line-height: 21px;
	text-align: left;
}

.page_title ul li a {
	display: block;
	padding: 5px 20px;
	color: #333;
	text-decoration: none;
}

.page_title ul li a:hover {
	color: #fff;
	background: #939393;
}

.page_title ul li ul.dropdown-menu {
	min-width: 100%; /* Set width of the dropdown */
	background: #f2f2f2;
	display: none;
	position: absolute;
	z-index: 999;
	left: 0;
	padding: 5px 0px;
}

.page_title ul li ul.dropdown-menu li {
	display: block;
}

.treeheader {
	height: 35px;
	font-size: 12px;
	text-align: center;
}

#sidetree {
	border-bottom: #ccc 1px solid;
}

.table_top {
	padding: 5px 5px;
}

.table_bottom {
	padding: 5px 15px;
}

table.display thead th {
	padding: 5px 10px 5px 10px;
}

table.display td {
	padding: 5px 5px;
	border-right: #A0A0AE 1px solid;
}

div.DTTT_container {
	margin: 5px;
}

.ColVis {
	margin: 5px 12px;
}

.widget_class {
	padding: 0px 5px;
}
</style>
<script>
	function openNav() {
		document.getElementById("mySidebar").style.width = "250px";
		document.getElementById("main").style.marginLeft = "0px";
	}

	function closeNav() {
		document.getElementById("mySidebar").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		// Show hide popover
		$(".dropdown").click(function() {
			$(this).find(".dropdown-menu").slideToggle("fast");
		});
	});
	$(document).on("click", function(event) {
		var $trigger = $(".dropdown");
		if ($trigger !== event.target && !$trigger.has(event.target).length) {
			$(".dropdown-menu").slideUp("fast");
		}
	});
</script>


</head>
<body id="theme-default" class="full_block">
	<div id="container">
		<div id="header" class="blue_gel">
			<div class="header_left">
				<div class="logo">
					<img src="" width="125" height="60" alt="">
				</div>
			</div>
			<div class="header_right">
				<div id="top_notification"></div>
				<div id="user_nav">
					<ul>
						<li class="user_thumb"><a href="#"><span class="icon"><img
									src="${pageContext.request.contextPath}/images/user_thumb.png"
									width="30" height="30" alt="User"></span></a></li>
						<li class="user_info"><span class="user_name"><%=userName%></span><span><a
								href="#">Profile</a> &#124; <a href="#">Help&#63;</a></span></li>
						<li class="logout"><a href="${pageContext.request.contextPath}/Logout.jsp"><span class="icon"></span>Logout</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="page_title"
			style="height: 42px; clear: both; z-index: 99999; position: fixed; width: 100%;">
			<ul>
				<li>
					<div id="main">
						<button class="openbtn" onclick="openNav()">
							<i class="material-icons" style="font-size: 14px;"> reorder </i>
						</button>
					</div>
				</li>
				<li><a
					href="${pageContext.request.contextPath}/Masters/MasterDashboard.jsp">
						MASTER </a></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> SEA EXPORT &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a
									href="${pageContext.request.contextPath}/Export/CFS/CFSDashboard.jsp">CFS
										/ OPERATIONS</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Export/EXDOC/ExportDocDashboard.jsp">DOCUMENTATION</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Export/EXACC/ExportAccDashboard.jsp">ACCOUNTS</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Export/EXREPORT/ExportReportDashboard.jsp">REPORTS</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> SEA IMPORT &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a href="${pageContext.request.contextPath}/Import/IMOPERATION/ImportOperationDashboard.jsp">OPERATIONS</a></li>
								<li><a href="${pageContext.request.contextPath}/Import/IMDOC/ImportDocDashboard.jsp">DOCUMENTATION</a></li>
								<li><a href="${pageContext.request.contextPath}/Import/IMACC/ImportAccDashboard.jsp">ACCOUNTS</a></li>
								<li><a href="${pageContext.request.contextPath}/Import/IMREPORT/ImportReportDashboard.jsp">REPORTS</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> AIR &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a href="${pageContext.request.contextPath}/Air/AIREXPORT/AirExportDashboard.jsp">AIR EXPORT</a></li>
								<li><a href="${pageContext.request.contextPath}/Air/AIRIMPORT/AirImportDashboard.jsp">AIR IMPORT</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> ACCOUNTS &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a href="${pageContext.request.contextPath}/Accounts/ACCMASTERS/AccMasterDashboard.jsp">MASTERS</a></li>
								<li><a href="${pageContext.request.contextPath}/Accounts/ACCDATA/AccDataDashboard.jsp">DATA</a></li>
								<li><a href="${pageContext.request.contextPath}/Accounts/ACCREPORTS/AccReportDashboard.jsp">REPORTS</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> ADMIN &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a href="${pageContext.request.contextPath}/Admin/USER/AdminUserDashboard.jsp">USER MANAGEMENT</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> HRMS &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a href="${pageContext.request.contextPath}/Hrms/EMP/HrmsEmpDashboard.jsp">EMPOLYEE MANAGEMENT</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> SERVICE CONTRACT &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a href="#">MASTERS</a></li>
								<li><a href="#">LINE</a></li>
								<li><a href="#">CUSTOMER</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle"> CRM &#9662; </a>
					<div class="notification_list dropdown-menu blue_d">
						<div class="white_lin nlist_block">
							<ul style="padding: 5px 0px;">
								<li><a href="#">OPERATIONS</a></li>
								<li><a href="#">ACCOUNTS</a></li>
							</ul>
						</div>
					</div></li>
			</ul>
			</element>
		</div>