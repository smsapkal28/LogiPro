
<%@page import="com.entity.transport.DriverDetailEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/bus.png"
						width="35" height="35" /> Add Driver
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Transport</a></li>
					<li><a href="#"> Add Driver</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Add Driver</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form
							action="${pageContext.request.contextPath }/TransportController"
							method="post">
							<input type='hidden' name="action" value="AddDriver"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-6">
									<label class="control-label" for="driver_Name">Driver
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="driver_Name" class="form-control"
										name="driver_Name" required />
								</div>

								<div class="col-md-6">
									<label for="dob" class="control-label">Date Of Birth <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<div class='input-group date' id='myDatepicker2'>
										<input type='text' class="form-control" name="dob" id="dob"
											placeholder="Select Date" /> <span class="input-group-addon">
											<span class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>


								<div class="col-md-6">
									<label for="contact_no" class="control-label">Gender <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label>

									<p>
										Male: <input type="radio" class="flat" name="gender"
											id="genderM" value="Male" checked="" required /> Female: <input
											type="radio" class="flat" name="gender" id="genderF"
											value="Female" />
									</p>

								</div>

								<div class="col-md-6">
									<label for="contact_No" class="control-label">Contact
										Number <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" class="form-control" name="contact_No"
										id="contact_No" />
								</div>

								<div class="col-md-6">
									<label for="license_No" class="control-label">License
										Number <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" class="form-control" name="license_No"
										id="license_No" />
								</div>
								<div class="col-md-6">
									<label for="aadhar_No" class="control-label">Aadhar
										Number <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" class="form-control" name="aadhar_No"
										id="aadhar_No" />
								</div>


								<div class="col-md-6">
									<label for="present_Add" class="control-label">Present
										Address <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label>
									<textarea class="form-control" id="present_Add"
										name="present_Add"></textarea>
								</div>
								<div class="col-md-6">
									<label for="permanent_Add" class="control-label">Permanent
										Address <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label>
									<textarea class="form-control" id="permanent_Add"
										name="permanent_Add"></textarea>
								</div>

								<div class="clearfix"></div>
								<br />
								<button type="submit" class="btn btn-info pull-right"
									style="border-radius: 0px;">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Driver List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">

						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Sr.No.</th>
									<th>Driver Name</th>
									<th>Date Of Birth</th>
									<th>Gender</th>
									<th>Contact No</th>
									<th>DL. No</th>
									<th>Aadhar No</th>
									<th>Present Address</th>
									<th>Permanent Address</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<DriverDetailEntity> list = (List<DriverDetailEntity>) request.getAttribute("driverList");
									int count = 0;
									for (DriverDetailEntity driver : list) {
										count++;
								%>
								<tr>
									<td><%=count%></td>
									<td><%= driver.getDriver_Name()%></td>
									<td><%= driver.getBirth_Date()%></td>
									<td><%= driver.getGender()%></td>
									<td><%= driver.getContact_No()%></td>
									<td><%= driver.getLicense_No()%></td>
									<td><%= driver.getAadhar_No()%></td>
									<td><%= driver.getPresent_Add()%></td>
									<td><%= driver.getPermanent_Add()%></td>
									
									<td><li class="fa fa-pencil fa-1x"></li>
										</button>
										<button type="button" class="btn btn-danger ">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>

								<%
									}
								%>

							</tbody>
						</table>

					</div>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />
<script src="../../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-datetimepicker -->
<script
	src="../../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<!-- Initialize datetimepicker -->
<script>
	$('#myDatepicker').datetimepicker();

	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'DD/MM/YYYY'
	});
	/*  $('#myDatepicker3').datetimepicker({
	     format: 'hh:mm A'
	 }); */

	$('#myDatepicker4').datetimepicker({
		ignoreReadonly : true,
		allowInputToggle : true
	});

	$('#datetimepicker6').datetimepicker();

	$('#datetimepicker7').datetimepicker({
		useCurrent : false
	});

	$("#datetimepicker6").on("dp.change", function(e) {
		$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
	});

	$("#datetimepicker7").on("dp.change", function(e) {
		$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
	});
</script>
