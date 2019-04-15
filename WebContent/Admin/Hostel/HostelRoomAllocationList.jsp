<%@page import="com.entity.hostel.HostelDetailEntity"%>
<%@page import="com.entity.hostel.HostelRoomDetailEntity"%>
<%@page import="com.entity.employee.EmployeeDetailsEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/bed.png"
						width="35" height="35" />Room Allocation List
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Hostel</a></li>
					<li><a href="#"> Hostel Room List </a></li>
				</ol>
			</div>
		</div>

		<div class="clearfix"></div>

		<%
			List<HostelRoomDetailEntity> hostelRoomDetailList = (List<HostelRoomDetailEntity>) request
					.getAttribute("hostelRoomDetailList");
			List<HostelDetailEntity> hostelDetailList = (List<HostelDetailEntity>) request
					.getAttribute("hostelDetailList");
		%>

		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title" style="background-color: #1ABB9C;">
					<h2 style="color: #fff;">Room List</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

					</ul>
					<div class="clearfix"></div>
				</div>

				<div class="clearfix"></div>
				<div class="x_content">

					<div class="clearfix"></div>
					<br />
					<table id="" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Sr.no</th>
								<th>Hostel Name</th>

								<th>Rooms</th>
								<th>Action</th>

							</tr>
						</thead>
						<tbody>
							<%
								int count = 0;
								for (HostelDetailEntity hostel : hostelDetailList) {
									int count2 = 0;
							%>
							<tr>
								<td><%=++count%></td>
								<td><%=hostel.getHostel_Name()%></td>
								<td>

									<table id="table<%=count%>"
										class="table table-striped table-bordered clickTable">
										<thead>
											<tr>
												<th>Sr.no</th>
												<th>Room Name</th>
												<th>Total Beds</th>
												<th>Allocated Beds</th>
												<th>Vacant Beds</th>


											</tr>
										</thead>
										<tbody class="collapse">
											<%
												for (HostelRoomDetailEntity room : hostelRoomDetailList) {
														if (room.getHostel_Id() == hostel.getHostel_Id()) {
											%>
											<tr>
												<td><%=++count2%></td>
												<td><%=room.getRoom_Name()%></td>
												<td><%=room.getNo_Of_Beds()%></td>
												<td><%=room.getAllocated_Beds()%></td>
												<td><%=room.getNo_Of_Beds() - room.getAllocated_Beds()%></td>
											</tr>

											<%
												}
													}
											%>
										</tbody>
									</table>



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
<!-- /page content -->

<jsp:include page="../Footer.jsp" />
<script>
	$(document).ready(function() {
		$(".clickTable").click(function() {

			$(this).find( "tbody" ).collapse('toggle');
			//$('#'$(this).attr("id")).collapse('toggle');
		});

	});
</script>