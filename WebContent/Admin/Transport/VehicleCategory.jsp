
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
						width="35" height="35" /> Add Vehicle Category
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Transport</a></li>
					<li><a href="#"> Vehicle Category</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Vehicle Category</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/TransportController"
							method="post">
							<input type='hidden' name="action" value="AddVehicleCategory"
								class="form-control" />
							<div class="form-group">

								<label class="control-label col-md-3 col-sm-3 col-xs-12">Vehicle Category Name
									<span class="required" style="color: red">*</span>
								</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" name="vehicle_Category_Name" class="form-control"
										placeholder="Category Name">
								</div>
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Vehicle Category Code
									<span class="required" style="color: red">*</span>
								</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" name="vehicle_Category_Code" class="form-control"
										placeholder="Category Code">
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right" 
								 style="border-radius: 0px;">Submit</button>

						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Vehicle Category List</li>
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
									<th>Vehicle Category Name</th>
									<th>Vehicle Category Code</th>
									<th>Date</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
						<%  
											 List<VehicleCategoryEntity> list = (List<VehicleCategoryEntity>) request.getAttribute("vehicleCategoryList");
                      						int count=0;
											 for (VehicleCategoryEntity vehicle  : list) {
												count++;
												 %>

						<td><%= count %></td>
						<td><%= vehicle.getVehicle_Category_Name() %></td>
						<td><%= vehicle.getVehicle_Category_Code() %></td>
						<td><%= vehicle.getCreation_Date() %></td>
								<td><button type="button" class="btn btn-info">
										<li class="fa fa-pencil fa-1x"></li>
									</button>
									<button type="button" class="btn btn-danger ">
										<li class="fa fa-trash-o fa-1x"></li>
									</button></td>
								</tr>

<%} %>

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