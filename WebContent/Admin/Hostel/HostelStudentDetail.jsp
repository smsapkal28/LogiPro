

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
						width="35" height="35" /> Add Hostel Student
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Hostel</a></li>
					<li><a href="#"> Hostel Student</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Hostel Student</h2>
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
							<input type='hidden' name="action" value="AddHostelStudentDetail"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="stud_Id">Student Academic Enroll No
										 <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="stud_Id">
										<option value="0" selected="true" disabled>--Select--</option>
									<%
											List<StudentEnrolPersonalDetailEntity> list = (List<StudentEnrolPersonalDetailEntity>) request
													.getAttribute("studentEnrolledRecord");

											for (StudentEnrolPersonalDetailEntity std : list) {
										%>
										<option value="<%=std.getStudId()%>"><%=std.getStudEnrolNo()%></option>
										<%
											}
										%>
									</select>

								</div>
																
								<div class="col-md-5">
									<label class="control-label" for="stud_Name">Student Name
										 <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="stud_Name" class="form-control"
										name="stud_Name" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="stud_Contact">Student Contact
										 <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="stud_Contact" class="form-control"
										name="stud_Contact" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="gaurdian_Name">Gaurdian Name
										 <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="gaurdian_Name" class="form-control"
										name="gaurdian_Name" required />

								</div>
								
								
								<div class="col-md-5">
									<label class="control-label" for="gaurdian_Contact">Gaurdian Contact
										 <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="gaurdian_Contact" class="form-control"
										name="gaurdian_Contact" required />

								</div>
								
								<div class="col-md-5">
								<label class="control-label"
									for="enroll_Date">Enroll Date<span class="required"
									style="color: red; font-size: 17px;">*</span></label>
								
									<div class='input-group date' id='myDatepicker2'>
										<input type='text' class="form-control" name="enroll_Date" id="enroll_Date" />
										<span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								
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
									<th>Student Academic Enroll No</th>
									<th>Student Name</th>
									<th>Student Contact</th>
									<th>Gaurdian Name</th>
									<th>Gaurdian Contact</th>
									<th>Enroll Date</th>
									<th>Leaving /Renewal Date</th>
									
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
							<%
											List<HostelStudentDetailEntity> hostelStudentList = (List<HostelStudentDetailEntity>) request
													.getAttribute("hostelStudentList");
											int count =0;
											for (HostelStudentDetailEntity hostelStudent : hostelStudentList) {
										%>
								<tr>
								<td><%= ++count %></td>
								<td><% for (StudentEnrolPersonalDetailEntity std : list) {if(std.getStudId() == hostelStudent.getStud_Id()){out.print(std.getStudEnrolNo());}} %></td>
								<td><%= hostelStudent.getStud_Name() %></td>
								<td><%= hostelStudent.getStud_Contact() %></td>
								<td><%= hostelStudent.getGaurdian_Name() %></td>
								<td><%= hostelStudent.getGaurdian_Contact() %></td>
								<td><%= hostelStudent.getEnroll_Date() %></td>
								<td><%= hostelStudent.getRenewal_Date() %></td>
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
</script>
