

<%@page import="com.entity.hostel.HostelFacilityEntity"%>
<%@page import="com.entity.hostel.HostelInventoryCategoryEntity"%>
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
							<input type='hidden' name="action" value="AddHostelFacility"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="hostel_Id">Hostel
										Type <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="hostel_Id">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
										List<HostelDetailEntity> hostelDetailList = (List<HostelDetailEntity>) request
										.getAttribute("hostelDetailList");
						
								for (HostelDetailEntity hostelEntity : hostelDetailList) {
										
								%>
								<option value="<%= hostelEntity.getHostel_Id() %>" ><%= hostelEntity.getHostel_Name() %></option>
<%} %>
									</select>

								</div>
								<%
								List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = (List<HostelInventoryCategoryEntity>) request
										.getAttribute("hostelInventoryCategoryList");
						
								for (HostelInventoryCategoryEntity hostelInventoryEntity : hostelInventoryCategoryList) {
										
								%>
										
								<div class="col-md-3 col-sm-3 col-xs-12">
											<label ><%=  hostelInventoryEntity.getCat_Name()%>
												
											</label>
											
												<div class="">
													<label> <input type="checkbox" class="js-switch"
														value="<%= hostelInventoryEntity.getCat_Id() %>" name="hostel_Facility" />YES
													</label>
												</div>
											
										</div>
								
								<%} %>
								
							
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
									<th>Facilities</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
						<%List<HostelFacilityEntity>hostelFacilityList = (List<HostelFacilityEntity>)request.getAttribute("hostelFacilityList");
						int count=0;	
						for(HostelFacilityEntity hostelfacility:hostelFacilityList){
						
						
						%>
								<tr>
							<td><%= ++count %></td>
								<td><% 	for (HostelDetailEntity hostelEntity : hostelDetailList) {if(hostelEntity.getHostel_Id() == hostelfacility.getHostel_Id() ){out.print(hostelEntity.getHostel_Name());}} %></td>
									<td>
									<%
											String hostel_Facility[] = hostelfacility.getHostel_Facility().split(",");
												for (String s : hostel_Facility) {
													for (HostelInventoryCategoryEntity hostelInventoryEntity : hostelInventoryCategoryList) {

														if (hostelInventoryEntity.getCat_Id() == Integer.parseInt(s)) {
										%>
										<table>
											<tbody>
												<tr>
												<td><%= hostelInventoryEntity.getCat_Name() %></td></tr>
											</tbody>
										</table>
									<%}}} %>
									
									</td>
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