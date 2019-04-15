

<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.hostel.HostelStudentFacilityAllocationEntity"%>
<%@page import="com.entity.hostel.HostelInventoryCategoryEntity"%>
<%@page import="com.entity.hostel.HostelDetailEntity"%>
<%@page import="com.entity.hostel.HostelRoomDetailEntity"%>
<%@page
	import="com.entity.hostel.HostelStudentRoomAllocationDetailEntity"%>
<%@page import="com.entity.hostel.HostelStudentDetailEntity"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/bed.png"
						width="35" height="35" />Hostel Student Facility Allocation
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Hostel</a></li>
					<li><a href="#"> Hostel Student Facility Allocation</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Hostel Student Facility Allication</h2>
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
							<input type='hidden' name="action"
								value="AddHostelStudentFacilityAllocationDetail"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="stud_Id">Student Name
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="stud_Id" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="stud_Id">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<HostelStudentDetailEntity> hostelStudentList = (List<HostelStudentDetailEntity>) request
													.getAttribute("hostelStudentList");

											for (HostelStudentDetailEntity std : hostelStudentList) {
												if (std.getRoom_Allocation_Status() == 1) {
										%>
										<option value="<%=std.getStud_Hostel_Id()%>"><%=std.getStud_Name()%></option>
										<%
											}
											}
										%>
									</select>

								</div>

								<%
									List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = (List<HostelInventoryCategoryEntity>) request
											.getAttribute("hostelInventoryCategoryList");

									for (HostelInventoryCategoryEntity hostelInventoryEntity : hostelInventoryCategoryList) {
										if (hostelInventoryEntity.getFacility_For_Student().equals("YES")) {
								%>

								<div class="col-md-3 col-sm-3 col-xs-12">
									<label><%=hostelInventoryEntity.getCat_Name()%> </label>

									<div class="">
										<label> <input type="checkbox" class="js-switch"
											value="<%=hostelInventoryEntity.getCat_Id()%>"
											name="hostel_Facility" />YES
										</label>
									</div>

								</div>

								<%
									}
									}
								%>


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
								<th>Student Name</th>
								<th>Facilities</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<%
								List<HostelStudentFacilityAllocationEntity> hostelStudentFacilityAllocationList = (List<HostelStudentFacilityAllocationEntity>) request
										.getAttribute("hostelStudentFacilityAllocationList");

								int count = 0;

								for (HostelStudentDetailEntity std : hostelStudentList) {
									if (std.getRoom_Allocation_Status() == 1) {
							%>

							<tr>
								<Td><%=++count%></Td>
								<td><%=std.getStud_Name()%></td>
								<td>
									<%
										for (HostelStudentFacilityAllocationEntity roomAlloc : hostelStudentFacilityAllocationList) {
													if (std.getStud_Hostel_Id() == roomAlloc.getStud_Id()) {
														String hostel_Facility[] = roomAlloc.getFacility_Id().split(",");
														for (String s : hostel_Facility) {
															for (HostelInventoryCategoryEntity hostelInventoryEntity : hostelInventoryCategoryList) {

																if (hostelInventoryEntity.getCat_Id() == Integer.parseInt(s)) {
									%>
									<table>
										<tbody>
											<tr>
												<td><%=hostelInventoryEntity.getCat_Name()%></td>
											</tr>
										</tbody>
									</table> <%
 	}
 						}
 					}
 				}
 			}
 %>
								</td>
								<td></td>
								<td><button type="button" class="btn btn-info">
										<li class="fa fa-pencil fa-1x"></li>
									</button>
									<button type="button" class="btn btn-danger ">
										<li class="fa fa-trash-o fa-1x"></li>
									</button></td>
							</tr>
							<%
								}
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

<script>
	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'DD/MM/YYYY'
	});
	$("#datetimepicker6").on("dp.change", function(e) {
		$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
	});

	$("#datetimepicker7").on("dp.change", function(e) {
		$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
	});

	function student_Name_Change() {
		var stud_Id = $("#stud_Id").val();

		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/Admin/Universal/getHostelDetailBasedOnGender.jsp",
					data : "hostel_Stud_Id=" + stud_Id,
					cache : false,
					success : function(response) {
						$("#hostel_Name").html(response);
						$('.selectpicker').selectpicker('refresh');
					}
				});
	}

	function hostel_Name_Change() {
		var hostel_Id = $("#hostel_Name").val();

		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/Admin/Universal/getHostelRoomDetailBasedOnHostel.jsp",
					data : "hostel_Id=" + hostel_Id,
					cache : false,
					success : function(response) {
						$("#room_Id").html(response);
						$('.selectpicker').selectpicker('refresh');
					}
				});

	}
</script>
