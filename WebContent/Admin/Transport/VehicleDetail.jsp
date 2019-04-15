
<%@page import="com.entity.transport.VehicleDetailEntity"%>
<%@page import="com.entity.transport.VehicleCategoryEntity"%>
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
						width="35" height="35" /> Add Vehicle
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Transport</a></li>
					<li><a href="#"> Add Vehicle</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Vehicle Details</h2>
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
							<input type='hidden' name="action" value="AddVehicle"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-12">
									<label for="vehicle_No" class="control-label">Vehicle
										No. <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="vehicle_No" class="form-control"
										name="vehicle_No" />
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="no_Of_Seats" class="control-label">No.Of
										Seats <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="no_Of_Seats" class="form-control"
										name="no_Of_Seats" />
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="max_Allowed" class="control-label">Maximum
										Allowed <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="max_Allowed" class="form-control"
										name="max_Allowed" />
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="vehicle_Category" class="control-label">Vehicle
										Type <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="vehicle_Category" class="form-control"
										name="vehicle_Category" required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<VehicleCategoryEntity> list = (List<VehicleCategoryEntity>) request
													.getAttribute("vehicleCategoryList");

											for (VehicleCategoryEntity vehicle : list) {
										%>
										<option value=<%=vehicle.getVehicle_Cat_Id()%>><%=vehicle.getVehicle_Category_Name()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="contact_Person_Name" class="control-label">Contact
										Person Name<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="contact_Person_Name"
										class="form-control" name="contact_Person_Name" />
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="contact_Person_No" class="control-label">Contact
										Person No<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="contact_Person_No" class="form-control"
										name="contact_Person_No" />
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="insurance_Date" class="control-label">Insurance
										Renewal Date <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label>
									<div class='input-group date' id='myDatepicker2'>
										<input type='text' id="insurance_Date" class="form-control"
											name="insurance_Date" placeholder="Select Date" /> <span
											class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="track_Id" class="control-label">Track Id <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="track_Id" class="form-control"
										name="track_Id" />
								</diV>
							</div>

							<div class="clearfix"></div>
							<br />
							<button type="submit" name="transport" value="addTransport"
								class="btn btn-info pull-left" style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Vehicle List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>


					<div class="x_content">
						<table id="" class="table table-bordered">
							<thead>
								<tr>
									<th>Sr.no</th>
									<th>Vehicle No.</th>
									<th>No. Of Seats</th>
									<th>Max Allowed</th>
									<th>Vehicle Type</th>
									<th>Contact Person Name</th>
									<th>Contact Person Name</th>
									<th>Insurance Renewal Date</th>
									<th>Track Id</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<VehicleDetailEntity> list2 = (List<VehicleDetailEntity>) request.getAttribute("vehicleList");
									int count = 0;
									for (VehicleDetailEntity vehicle : list2) {
										
								%>
								<tr>
									<td><%= ++count %></td>
									<td><%= vehicle.getVehicle_No() %></td>
									<td><%= vehicle.getNo_Of_Seats() %></td>
									<td><%= vehicle.getMax_Allowed() %></td>
									<td>
										<% for (VehicleCategoryEntity vehicle2 : list) {if((vehicle.getVehicle_Cat_Id())==(vehicle2.getVehicle_Cat_Id())){out.print(vehicle2.getVehicle_Category_Name());}} %>
									</td>
									<td><%= vehicle.getContact_Person_Name() %></td>
									<td><%= vehicle.getContact_Person_No() %></td>
									<td><%= vehicle.getInsurance_Renewal_Date() %></td>
									<td><%= vehicle.getTrack_Id() %></td>
									<td><button type="button" class="btn btn-info">
											<li class="fa fa-pencil fa-1x"></li>
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

