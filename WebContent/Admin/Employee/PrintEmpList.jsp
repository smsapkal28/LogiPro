
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>| Employee List</title>
<%@include file="../admin-index.jsp"%>
<!-- Bootstrap -->
<link href="../../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link href="../../vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<!-- bootstrap-datetimepicker -->
<link
	href="../../vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
<!-- Ion.RangeSlider -->
<link href="../../vendors/normalize-css/normalize.css" rel="stylesheet">
<link href="../../vendors/ion.rangeSlider/css/ion.rangeSlider.css"
	rel="stylesheet">
<link
	href="../../vendors/ion.rangeSlider/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet">
<!-- Bootstrap Colorpicker -->
<link
	href="../../vendors/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">

<link href="../../vendors/cropper/dist/cropper.min.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="../../build/css/custom.min.css" rel="stylesheet">
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
								<img src="../images/academc.png" width="35" height="35" /> |
								Employee List
							</h3>
						</div>

						<div class="title_right">
							<ol class="breadcrumb pull-right">
								<li><a href="#"><img src="../images/d1.png" width="25"
										height="25" /> Dashboard</a></li>
								<li><a href="#"> Employee MGT</a></li>
								<li><a href="#"> Employee List</a></li>
							</ol>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title" style="background-color: #1ABB9C;">
									<h2 style="color: #fff;">Employee List</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<!--                       <li><a class="close-link"><i class="fa fa-close"></i></a> -->
										<!--                       </li> -->
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form>
										<div class="form-group row">
											<div class="col-md-4">
												<label for="text" class="control-label">Select
													Category<span class="required"
													style="color: red; font-size: 17px;"><b>*</b></span>
												</label> <select id="Category" class="form-control" name="report"
													required>
													<option value="">Please Select</option>
													<option value="dept">Department Wise</option>
													<option value="desig">Designation Wise</option>
													<option value="quali">Qualification Wise</option>
												</select>
											</diV>
											<div id="dept" class="hello" style="display: none;">
												<div class="col-md-4">
													<label for="text" class="control-label">Department
														<span class="required"
														style="color: red; font-size: 17px;"><b>*</b></span>
													</label> <select id="" class="form-control" name="dept_wise"
														required>
														<option value="">Select Department</option>

													
													</select>
												</diV>

											</div>

											<div id="desig" class="hello" style="display: none;">
												<div class="col-md-4">
													<label for="text" class="control-label">Designation
														<span class="required"
														style="color: red; font-size: 17px;"><b>*</b></span>
													</label> <select id="" class="form-control" name="desig_wise"
														required>
														<option value="">Select Designation</option>


														
													</select>
												</diV>

											</div>


											<div id="quali" class="hello" style="display: none;">
												<div class="col-md-4">
													<label for="text" class="control-label">Qualification
														<span class="required"
														style="color: red; font-size: 17px;"><b>*</b></span>
													</label> <select id="" class="form-control" name="user_wise"
														required>
														<option value="">Select Qulification</option>

													

													</select>
												</diV>

											</div>
											<div class="col-md-4">
												<button type="button" class="btn btn-danger pull-left"
													style="border-radius: 0px; margin-top: 29px;">Print</button>
												<button type="button" class="btn btn-info "
													style="border-radius: 0px; margin-top: 29px; margin-left: 15px;">Export
													To Excel</button>
											</diV>
										</div>
										<div class="clearfix"></div>
										<br />
									</form>
									<br />
								</div>
							</div>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title" style="background-color: #1ABB9C;">
									<h2 style="color: #fff;">Employee List</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>Sr. No</th>
													<th>Employee Code</th>
													<th>Employee Name</th>
													<th>DOB</th>
													<th>Gender</th>
													<th>Email</th>
													<th>Contact</th>
													<th>Address</th>
													<th>Qualification</th>
													<th>Date Of Joining</th>
													<th>Deppartment</th>
													<th>Designation</th>
												</tr>
											</thead>
											<tbody>
											

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!-- /page content -->

			<!-- footer -->
			<footer class="footer"> © 2018 All rights reserved. Template
			designed by <a href="https://colorlib.com">Colorlib</a></footer>
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


	<!-- Custom Theme Scripts -->
	<script src="../../build/js/custom.min.js"></script>

	<script type="text/javascript">
   $(function() {
	   $('.hello').hide();
       $('#Category').change(function(){
           $('.hello').hide();
           $('#' + $(this).val()).show();
       });
   });
   </script>
</body>
</html>