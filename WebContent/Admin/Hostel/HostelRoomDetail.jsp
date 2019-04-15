

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
						<%
							HostelDetailEntity hostelDetail = (HostelDetailEntity) request.getAttribute("hostelDetail");
						%>
						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/HostelController"
							method="post">
							<input type='hidden' name="action" value="AddHostelRoomDetail"
								class="form-control" /> <input type='hidden' name="hostel_Id"
								value="<%=hostelDetail.getHostel_Id()%>" class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="hostel_Type">Hostel
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="hostel_No" class="form-control"
										value=<%=hostelDetail.getHostel_Name()%> name="hostel_No"
										readonly="readonly" />
								</div>

								<div class="col-md-5">
									<label class="control-label" for="hostel_Type">No Of
										Rooms <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="hostel_Room" class="form-control"
										value=<%=hostelDetail.getHostel_No_Of_Room()%>
										name="hostel_Room" readonly="readonly" />
								</div>


								<div class="col-md-5">
									<label class="control-label" for="room_Name">Alais Name
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="room_Name"
										class="form-control" name="room_Name" required="required" />
								</div>

								<div class="col-md-5">
									<label class="control-label" for="no_Of_Beds">No Of
										Beds In Each Room <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="no_Of_Beds" class="form-control"
										name="no_Of_Beds" re />
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

								<tr>

									<td><button type="button" class="btn btn-info">
											<li class="fa fa-pencil fa-1x"></li>
										</button>
										<button type="button" class="btn btn-danger ">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>


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