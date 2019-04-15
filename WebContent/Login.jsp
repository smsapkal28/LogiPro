<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width" />
<title>LogiPro</title>
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/layout.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/themes.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/typography.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/shCore.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/jquery.jqplot.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/css/jquery-ui-1.8.18.custom.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/data-table.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/form.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/ui-elements.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/wizard.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/sprite.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/gradient.css"
	rel="stylesheet" type="text/css">
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
<script type="text/javascript">
	$(function() {
		$(window).resize(
				function() {
					$('.login_container').css(
							{
								position : 'absolute',
								left : ($(window).width() - $(
										'.login_container').outerWidth()) / 2,
								top : ($(window).height() - $(
										'.login_container').outerHeight()) / 2
							});
				});
		// To initially run the function:
		$(window).resize();
	});
</script>
<%
	String message = (String) request.getAttribute("message");
	System.out.println("message==" + message);
%>
<script>
        <%if (message == null || message.equals("") || message.equals("null")) {
			} else {%>
                var mes="<%=message%>";
				alert(mes);
<%}%>
	
</script>
<script>
	function chkUser() {
		
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		
		if (username == "") {
			alert("Please Enter User Name..!");
			document.forms[0].username.focus();
			return false;
		}
		if (password == "") {
			alert("Please Enter Password...!");
			document.forms[0].password.focus();
			return false;
		}
		return true;
	}
</script>

</head>
<body id="theme-default" class="full_block">
	<div id="login_page">
		<div class="login_container">
			<div class="login_header blue_lgel">
				<ul class="login_branding">
					<li>
						<div class="logo_small">
							<img
								src="${pageContext.request.contextPath}/images/logo-logipro.jpg"
								width="110" height="55" alt="LogiPro">
						</div>
					</li>
					<li class="right go_to"><a href="#" title="Go to Main Site"
						class="home">Go To Main Site</a></li>
				</ul>
			</div>
			<form action="${pageContext.request.contextPath }/LoginController"
				method="post">
				<input type='hidden' name="action" value="CheckUser" />
				<div class="login_form">
					<h3 class="blue_d">Login</h3>
					<ul>
						<li class="login_user"><input name="username" id="username" type="text"></li>
						<li class="login_pass"><input name="password" id="password" type="password"></li>
					</ul>
				</div>
				<input class="login_btn blue_lgel" name="" value="Login" 
					type="submit" onclick="return chkUser();">
				<ul class="login_opt_link">
					<!--<li><a href="forgot-pass.html">Forgot Password?</a></li>-->
					<li class="remember_me right"><input name="apdiv"
						class="rem_me" type="checkbox" value="checked"> Remember
						Me</li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>