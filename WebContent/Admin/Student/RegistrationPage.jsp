<%@page import="com.dao.academicsetting.AcademicYearDao"%>
<%@page import="com.entity.student.StudentRegistrationEntity"%>
<%@page import="com.entity.academicsetting.AcademicYearEntity"%>
<%@page import="com.entity.course.CourseEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img
						src="${pageContext.request.contextPath}/Images/registration.png"
						width="35" height="35" />| New Student Registration
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Student</li>
					<li class="active">Student Registration</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Student Registration</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/StudentController"
							method="post">
							<input type='hidden' name="action"
								value="addStudentRegistrationRecord" class="form-control" />
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="field-1" style="color: #0B99F5;"><b>For
										Session</b></label>
								<div class="col-sm-4">
									<select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="academicYear">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<AcademicYearEntity> list = (List<AcademicYearEntity>) request.getAttribute("academicrecord");

											for (AcademicYearEntity academicYearDao : list) {
										%>
										<option value="<%=academicYearDao.getId()%>"><%=academicYearDao.getAcademicYearName()%></option>


										<%
											}
										%>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="studName">Student Name<span class="required"
									style="color: red">*</span></label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="studName"
										id="studName" placeholder="Student name">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="fatherName">Father Name<span class="required"
									style="color: red">*</span></label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="fatherName"
										id="fatherName" placeholder="Father Name">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="motherName">Mother Name<span class="required"
									style="color: red">*</span></label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="motherName"
										id="motherName" placeholder="Mother Name">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="contact">Mobile<span class="required"
									style="color: red">*</span></label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="contact"
										id="contact" placeholder="Enter mobile no.">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Select
									Course<span class="required" style="color: red">*</span>
								</label>
								<div class="col-sm-4">
									<select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="course">
										<option value="0" selected="true" disabled>--Select--</option>

										<%
											List<CourseEntity> list2 = (List<CourseEntity>) request.getAttribute("courseRecord");
											for (CourseEntity ce : list2) {
										%>
										<option value="<%=ce.getId()%>"><%=ce.getcName()%></option>


										<%
											}
										%>
									</select>
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Gender<span
									class="required" style="color: red">*</span></label>
								<div class="col-sm-4">
									<p>
										Male: <input type="radio" class="flat" name="gender"
											id="genderM" value="Male" checked="" required /> Female: <input
											type="radio" class="flat" name="gender" id="genderF"
											value="Female" />
									</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 col-md-2 col-xs-12 control-label"
									for="dob">Date of Birth<span class="required"
									style="color: red">*</span></label>
								<div class="col-md-4">
									<div class='input-group date' id='myDatepicker2'>
										<input type='text' class="form-control" name="dob" id="dob" />
										<span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>
								<label class="col-sm-2 col-md-2 col-xs-12 control-label"
									for="dOfReg">Date of Registration<span class="required"
									style="color: red">*</span></label>

								<div class="col-md-4">
									<div class='input-group date' id='myDatepicker3'>
										<input type='text' class="form-control" name="dOfReg"
											id="dOfReg" /> <span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>


								<!-- <div class="col-md-4">
									<div class="control-group">
										<div class="controls">
											<div class="xdisplay_inputx form-group ">
												<input type="text" class="form-control " name ="dOfReg" disabled="disabled"
													id="single_cal2" placeholder="First Name"
													aria-describedby="inputSuccess2Status"> <span
													class="" aria-hidden="true"></span> <span
													id="inputSuccess2Status" class="sr-only">(success)</span>
											</div>
										</div>
									</div>
								</div> -->
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right"
								style="border-radius: 0px;">Submit</button>
						</form>
						<div class="clearfix"></div>
						<br />
						<h2 style="color: #0B99F5; text-align: center;">
							<li class="fa fa-bar-chart fa-1x"></li> Student Registration
							Lists
						</h2>
						<hr style="background-color: #0B99F5; width: 25%; height: 3px;">
						<br />
						<div class="btn-group pull-left" role="group" aria-label="...">
							<button type="button" class="btn btn-info">Copy</button>
							<button type="button" class="btn btn-info">CSV</button>
							<button type="button" class="btn btn-info">PDF</button>
							<button type="button" class="btn btn-info">Print</button>
						</div>
						<button type="button" class="btn btn-danger pull-right">
							<li class="fa fa-file-excel-o fa-1x"></li> Export to Excel
						</button>
						<div class="clearfix"></div>
						<br />
						<div class="clearfix"></div>
						<div class="x_content">
							<table id="datatable1" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>Sr no.</th>
										<th>Student name</th>
										<th>Student Reg.Id</th>
										<th>Mother's name</th>
										<th>Father`s Name</th>
										<th>Contact</th>
										<th>DOB</th>
										<th>Gender</th>
										<th>Course Applied</th>
										<th>Academic Year</th>
										<th>Registration date</th>

										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<%
										List<StudentRegistrationEntity> listStud = (List<StudentRegistrationEntity>) request
												.getAttribute("studentRegrecord");
										int count = 0;
										for (StudentRegistrationEntity std : listStud) {
									%>
									<tr>
										<th scope="row"><%=++count%></th>
										<td><%=std.getName()%></td>
										<td><%=std.getStudRegId()%></td>
										<td><%=std.getMotherName()%></td>
										<td><%=std.getFatherName()%></td>
										<td><%=std.getContact()%></td>
										<td><%=std.getDob()%></td>
										<td><%=std.getGender()%></td>
										<td><% for (CourseEntity ce : list2) { if(ce.getId()== std.getCourseApplied()) out.print(ce.getcName());}%></td>
										<td><% for (AcademicYearEntity academicYearDao : list) {if(academicYearDao.getId()==std.getRegSession()){out.print(academicYearDao.getAcademicYearName());}}%></td>
										<td><%=std.getRegDate()%></td>
										<td><button type="button" class="btn btn-sm btn-info">
												<li class="fa fa-pencil fa-1x"></li>
											</button>
											<button type="button" class="btn btn-sm btn-danger">
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
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />
<!-- Initialize datetimepicker -->
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
<!-- select picker -->
<script src="../../vendors/dist/js/bootstrap-select.js"></script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var mySelect = $('#first-disabled2');

		$('#special').on('click', function() {
			mySelect.find('option:selected').prop('disabled', true);
			mySelect.selectpicker('refresh');
		});

		$('#special2').on('click', function() {
			mySelect.find('option:disabled').prop('disabled', false);
			mySelect.selectpicker('refresh');
		});

		$('#basic2').selectpicker({
			liveSearch : true,
			maxOptions : 1
		});
	});
</script>
