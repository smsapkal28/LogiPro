
<%@page import="com.entity.transport.VehicleDestinationAllocationEntity"%>
<%@page import="com.entity.transport.TransportDestinationDetailEntity"%>
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
								value="addVehicleDestinationAllocation" class="form-control" />
							<div class="form-group row">
								<div class="col-md-6">
									<label class="control-label" for="vehicle_Id">Vehicle
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="vehicle_Id" class="form-control" name="vehicle_Id"
										required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<VehicleDetailEntity> vehicleList = (List<VehicleDetailEntity>) request.getAttribute("vehicleList");

											for (VehicleDetailEntity vehicle : vehicleList) {
										%>
										<option value=<%=vehicle.getVehicle_Id()%>><%=vehicle.getVehicle_No()%></option>
										<%
											}
										%>
									</select>
								</div>





								<div class="col-md-6">
									<label for="dest_Id" class="control-label">Destination
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="dest_Id" class="form-control" name="dest_Id"
										multiple size=2 required>
										<!-- <option value="0" selected="true" disabled>--Select--</option> -->
										<%
											List<TransportDestinationDetailEntity> transportDestinationDetailList = (List<TransportDestinationDetailEntity>) request
													.getAttribute("transportDestinationDetailList");

											for (TransportDestinationDetailEntity transportDestinationDetail : transportDestinationDetailList) {
										%>
										<option value=<%=transportDestinationDetail.getDest_Id()%>><%=transportDestinationDetail.getDest_Name()%></option>
										<%
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
									<th>Vehicle Name</th>
									<th>Destination</th>

									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<VehicleDestinationAllocationEntity> vehicleDestinationAllocationList = (List<VehicleDestinationAllocationEntity>) request
											.getAttribute("vehicleDestinationAllocationList");
									int count = 0;
									for (VehicleDestinationAllocationEntity vehicleDestinationAllocation : vehicleDestinationAllocationList) {
								%>
								<tr>
									<td><%=++count%></td>
									<td>
										<%
											for (VehicleDetailEntity vehicle : vehicleList) {
													if (vehicle.getVehicle_Id() == vehicleDestinationAllocation.getVehicle_Id()) {
														out.print(vehicle.getVehicle_No());
													}
												}
										%>
									</td>
									<td>
										<%
											String dest_Id[] = vehicleDestinationAllocation.getDest_Id().split(",");
												for (String s : dest_Id) {
													for (TransportDestinationDetailEntity transportDestinationDetail : transportDestinationDetailList) {

														if (transportDestinationDetail.getDest_Id() == Integer.parseInt(s)) {
										%>
										<table>
											<tbody>
												<tr>
												<td><%= transportDestinationDetail.getDest_Name() %></td></tr>
											</tbody>
										</table> <%
 	}

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
