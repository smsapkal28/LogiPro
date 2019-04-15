<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>| Impor Attendance</title>
<%@include file="../admin-index.jsp"%>
<!-- Bootstrap -->
<link href="../../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="../../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->
<link
	href="../../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">
<!-- Datatables -->

<!-- Custom Theme Style -->
<link href="../../build/css/custom.min.css" rel="stylesheet">
<link href="../../build/css/style.css" rel="stylesheet">
<style type="text/css">
.download {
	padding: 10px;
	border: 1px solid #F5B041;
	background-color: #FADBD8;
	border-radius: 4px;
}

.download p {
	padding: 5px;
	font-size: 12px;
	color: #EC7063;
}

.icon {
	padding: 1px;
	margin: 1px;
	border-radius: 40px;
	background-color: #FADBD8;
	color: #fff;
	font-size: 12px;
}
</style>
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="container">
					<div class="page-title">
						<div class="title_left">
							<h3>
								<img src="../images/subject.png" width="35" height="35" />
								Import Employee Attendance
							</h3>
						</div>

						<div class="title_right">
							<ol class="breadcrumb pull-right">
								<li><a href="#"><img src="../images/d1.png" width="25"
										height="25" /> Dashboard</a></li>
								<li><a href="#"> Course MGT</a></li>
								<li><a href="#"> Assign Subject</a></li>
							</ol>
						</div>
					</div>


					<div class="clearfix"></div>

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Employee Attendance Import</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>

										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form>
										<div class="form-group row">
											<div class="col-md-4">
												<label for="year" class="control-label">Choose
													Student Allocation File <span class="required"
													style="color: red; font-size: 17px;"><b>*</b></span>
												</label> <select id="" class="form-control" name="year" required>
													<option value="">Please Select</option>
													<option value="">2017</option>
													<option value="">2018</option>
													<option value="">2019</option>
													<option value="">2020</option>
													<option value="">2021</option>
												</select>
											</diV>
											<div class="col-md-4">
												<label for="month" class="control-label">Choose
													Student Allocation File <span class="required"
													style="color: red; font-size: 17px;"><b>*</b></span>
												</label> <select id="" class="form-control" name="month" required>
													<option value="">Please Select</option>
													<option value="">January</option>
													<option value="">February</option>
													<option value="">March</option>
													<option value="">April</option>
													<option value="">May</option>
												</select>
											</diV>
										</div>
										<br />
										<div class="form-group row">
											<div class="col-md-4">
												<label for="file" class="control-label">Browse File
													<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
												</label>
												<div class="file_upload">
													<input type="file" name="attend" accept="image/*">
												</div>
												<br />
												<button type="submit" class="btn btn-info pull-left"
													style="border-radius: 0px;">Upload</button>
											</diV>
										</div>
										<div class="clearfix"></div>
									</form>
									<br /> <br />
									<div class="download">
										<p>
											<span
												style="padding: 5px; margin: 7px; border: 1px solid #EB984E; border-radius: 50%; background-color: #D35400; color: #fff; font-size: 10px; font-family: Bradley Hand ITC;"><b>
													i </b> </span>Download the excel file format from below link, mark Y
											for present and N for absent while filling excel sheet
										</p>
										<p>
											<a href="../Excel_file/Book1.xlsx" download><img
												src="../images/downloading.png" width="19" height="19"
												style="padding: 0px; margin: 7px;" /> Subject Allocation
												Format</a>
										</p>
									</div>
									<div class="clearfix"></div>
									<br />
									<br />
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!-- /page content -->

			<!-- footer -->
			<footer class="footer"> © 2018 All rights reserved. System
			designed by <a href="https://indiatechsoft.com">IndiaTechSoft</a></footer>
			<!-- End footer -->
		</div>
	</div>
	<!-- jQuery -->
	<script src="../../vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="../../vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../../vendors/nprogress/nprogress.js"></script>
	<!-- iCheck -->
	<script src="../../vendors/iCheck/icheck.min.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="../../build/js/custom.min.js"></script>

</body>
</html>