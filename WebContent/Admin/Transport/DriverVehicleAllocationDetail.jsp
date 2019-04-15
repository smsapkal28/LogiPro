
<%@page import="com.entity.transport.DriverVehicleAlloactionEntity"%>
<%@page import="com.entity.transport.VehicleDetailEntity"%>
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
						<h2 style="color: #fff;">Allocate Driver To Vehicle</h2>
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
							<input type='hidden' name="action"
								value="addDriverVehicleAllocation" class="form-control" />
							<div class="form-group row">
								<div class="col-md-6">
									<label class="control-label" for="driver_Id">Driver
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="driver_Id" class="form-control" name="driver_Id"
										required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<DriverDetailEntity> list1 = (List<DriverDetailEntity>) request.getAttribute("driverList");

											for (DriverDetailEntity driver : list1) {
												if (driver.getAllocation_Status() == 0) {
										%>
										<option value=<%=driver.getDriver_Id()%>><%=driver.getDriver_Name()%></option>
										<%
											}
											}
										%>
									</select>
								</div>





								<div class="col-md-6">
									<label for="vehicle_Id" class="control-label">Contact
										Number <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="vehicle_Id" class="form-control" name="vehicle_Id"
										required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<VehicleDetailEntity> list2 = (List<VehicleDetailEntity>) request.getAttribute("vehicleList");

											for (VehicleDetailEntity vehicle : list2) {
												if (vehicle.getAllocation_Status() == 0) {
										%>
										<option value=<%=vehicle.getVehicle_Id()%>><%=vehicle.getVehicle_No()%></option>
										<%
											}
											}
										%>
									</select>
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
									<th>Vehicle No</th>

									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<DriverVehicleAlloactionEntity> list = (List<DriverVehicleAlloactionEntity>) request
											.getAttribute("driverVehicleAllocationList");
									int count = 0;
									for (DriverVehicleAlloactionEntity driver : list) {
										count++;
								%>
								<tr>
									<td><%=count%></td>
									<td>
										<%
											for (DriverDetailEntity driver2 : list1) {
													if ((driver.getDriver_Id()) == (driver2.getDriver_Id())) {
														out.print(driver2.getDriver_Name());
													}
												}
										%>
									</td>
									<td>
										<%
											for (VehicleDetailEntity vehicle2 : list2) {
													if ((vehicle2.getVehicle_Id()) == (driver.getVehicle_Id())) {
														out.print(vehicle2.getVehicle_No());
													}
												}
										%>
									</td>


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
