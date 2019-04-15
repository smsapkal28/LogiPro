

<%@page import="com.entity.hostel.HostelDetailEntity"%>
<%@page import="com.entity.hostel.HostelCategoryEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/bed.png"
						width="35" height="35" /> Add Hostel Category
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Hostel</a></li>
					<li><a href="#"> Hostel Category</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Hostel Category</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/HostelController"
							method="post">
							<input type='hidden' name="action" value="AddHostelDetail"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="hostel_Type">Hostel
										Type <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="hostel_Type">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
									List<HostelCategoryEntity> hostelCategoryList = (List<HostelCategoryEntity>) request
											.getAttribute("hostelCategoryList");
								
									for (HostelCategoryEntity hostelCategoryEntity : hostelCategoryList) {
										
								%>
								<option value="<%= hostelCategoryEntity.getHostel_Id() %>" ><%= hostelCategoryEntity.getHostel_Cat_Name() %></option>
<%} %>
									</select>

								</div>
								<div class="col-md-5">
									<label class="control-label" for="hostel_For">Hostel
										For <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="hostel_For">
										<option value="0" selected="true" disabled>--Select--</option>
										<option   >Male</option>
										<option   >Female</option>
									</select>

								</div>
								
								<div class="col-md-5">
									<label class="control-label" for="hostel_No">Hostel
										No <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="hostel_No" class="form-control"
										name="hostel_No" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="hostel_Name">Hostel
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="hostel_Name" class="form-control"
										name="hostel_Name" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="hostel_Contact">Hostel
										Contact No: <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="hostel_Contact" class="form-control"
										name="hostel_Contact" required />

								</div>
								
								
								<div class="col-md-5">
									<label class="control-label" for="No_Of_Floor">No Of Floors
										 <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="No_Of_Floor" class="form-control"
										name="No_Of_Floor" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="No_Of_Room">No Of Rooms
										: <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="No_Of_Room" class="form-control"
										name="No_Of_Room" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="warden_Name">Warden
										Name  <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="warden_Name" class="form-control"
										name="warden_Name" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="warden_Contact">Warden
										Contact No: <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="warden_Contact" class="form-control"
										name="warden_Contact" required />

								</div>
									<div class="col-md-5">
									<label class="control-label" for="owner_Name">Owner
										Name  <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="owner_Name" class="form-control"
										name="owner_Name" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="owner_Contact">Owner
										Contact No: <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="owner_Contact" class="form-control"
										name="owner_Contact" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="hostel_Address">Hostel
										Address: <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label>  <textarea class="form-control" rows="3" name="hostel_Address" id="hostel_Address"></textarea>

								</div>
								<div class="col-md-5">
									<label class="control-label" for="warden_Address">Warden
										Address: <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <textarea class="form-control" rows="3" name="warden_Address" id="warden_Address"></textarea>

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
							<li class="fa fa-reorder">Hostel Category List</li>
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
									<th>Hostel Type</th>
									<th>Hostel No</th>
									<th>Hostel For</th>
									<th>Hostel Name</th>
									<th>Hostel Contact</th>
									<th>No Of Floor</th>
									<th>No Of Room</th>
									<th>Warden Name</th>
									<th>Warden Contact</th>
									<th>Owner Name</th>
									<th>Owner Contact</th>
									<th>Hostel Address</th>
									<th>Warden Address</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
							<%
									List<HostelDetailEntity> hostelDetailList = (List<HostelDetailEntity>) request
											.getAttribute("hostelDetailList");
								int count = 0;
									for (HostelDetailEntity hostelEntity : hostelDetailList) {
										
								%>
								<tr>
								<td><%= ++count %></td>
								<td><% for (HostelCategoryEntity hostelCategoryEntity : hostelCategoryList) {if(hostelEntity.getHostel_Type() ==hostelCategoryEntity.getHostel_Id()){out.print(hostelCategoryEntity.getHostel_Cat_Name());} }%></td>
								
								<td><%= hostelEntity.getHostel_No()%></td>
								<td><%= hostelEntity.getHostel_For()%></td>
								<td><%= hostelEntity.getHostel_Name()%></td>
								<td><%= hostelEntity.getHostel_Contact()%></td>
								<td><%= hostelEntity.getHostel_No_Of_Floor()%></td>
								<td><%= hostelEntity.getHostel_No_Of_Room()%></td>
								<td><%= hostelEntity.getWarden_Name()%></td>
								<td><%= hostelEntity.getWarden_Contact()%></td>
								<td><%= hostelEntity.getOwner_Name()%></td>
								<td><%= hostelEntity.getOwner_Contact()%></td>
								
								<td><%= hostelEntity.getHostel_Address()%></td>
								<td><%= hostelEntity.getWarden_Address()%></td>
								
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