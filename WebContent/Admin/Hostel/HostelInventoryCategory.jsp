
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
							<input type='hidden' name="action" value="AddInventoryCategory"
								class="form-control" />
							<div class="form-group">

								<label class="control-label col-md-3 col-sm-3 col-xs-12">Inventory
									Category Name <span class="required" style="color: red">*</span>
								</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" name="inventory_Category_Name"
										class="form-control" placeholder="Category Name">
								</div>
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Inventory
									Category Code <span class="required" style="color: red">*</span>
								</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" name="inventory_Category_Code"
										class="form-control" placeholder="Category Code">
								</div>
								
								
							</div>
							<div class="clearfix"></div>
							<br />
							<label class="control-label col-md-3 col-sm-3 col-xs-12">Facility For Student
												
											</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
											
											
												<div class="">
													<label> <input type="checkbox" class="js-switch"
														value="YES" name="facility_For_Student" />YES
													</label>
												</div>
											
										</div>
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
									<th>Category Code</th>
									<th>Category Name</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = (List<HostelInventoryCategoryEntity>) request
											.getAttribute("hostelInventoryCategoryList");
								int count =0;
								for(HostelInventoryCategoryEntity hostelInventoryCategory:hostelInventoryCategoryList){
								%>
								<tr>
								<td><%=  ++count%></td>
								<td><%=  hostelInventoryCategory.getCat_Name()%></td>
								<td><%= hostelInventoryCategory.getCat_Code()%></td>
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