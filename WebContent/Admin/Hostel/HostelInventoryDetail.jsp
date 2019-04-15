
<%@page import="com.entity.hostel.HostelInventoryDetailEntity"%>
<%@page import="com.entity.hostel.HostelInventoryCategoryEntity"%>

<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/bed.png"
						width="35" height="35" /> Add Inventory Category
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Hostel</a></li>
					<li><a href="#"> Hostel Inventory Category</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Hostel Inventory Category</h2>
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
							<input type='hidden' name="action" value="AddInventoryDetail"
								class="form-control" />
							<div class="form-group">

								<div class="col-md-5">
									<label class="control-label" for="inv_Cat">Inventory
										Category <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="inv_Cat">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = (List<HostelInventoryCategoryEntity>) request
													.getAttribute("hostelInventoryCategoryList");

											for (HostelInventoryCategoryEntity hostelInventoryCategory : hostelInventoryCategoryList) {
										%>
										<option value="<%=hostelInventoryCategory.getCat_Id()%>"><%=hostelInventoryCategory.getCat_Name()%></option>
										<%
											}
										%>
									</select>

								</div>
								<div class="col-md-5">
									<label class="control-label" for="quality">Quality No <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="quality" class="form-control"
										name="quality" required />

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
							<li class="fa fa-reorder">Hostel Inventory Category List</li>
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
									<th>Item Name</th>
									<th>Item Quantity</th>
									<th>Item Allocation</th>
									<th>Item Remaining</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<HostelInventoryDetailEntity> hostelInventoryDetailList = (List<HostelInventoryDetailEntity>) request
											.getAttribute("hostelInventoryDetailList");
									int count =0;
									for (HostelInventoryDetailEntity hostelInventoryDetailEntity : hostelInventoryDetailList) {
								%>
								<tr>
									<td><%= ++count %></td>
									<td><% for (HostelInventoryCategoryEntity hostelInventoryCategory : hostelInventoryCategoryList) { if(hostelInventoryDetailEntity.getInv_Cat_Id() == hostelInventoryCategory.getCat_Id())out.print(hostelInventoryCategory.getCat_Name());}%></td>
									<td><%= hostelInventoryDetailEntity.getInv_Quantity() %></td>
									<td><%= hostelInventoryDetailEntity.getInv_Allocated() %></td>
									<td><%= hostelInventoryDetailEntity.getInv_Quantity() - hostelInventoryDetailEntity.getInv_Allocated() %></td>
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