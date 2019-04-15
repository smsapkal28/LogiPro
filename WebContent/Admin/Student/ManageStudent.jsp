<%@page import="com.entity.academicsetting.AcademicYearEntity"%>
<%@page import="com.entity.course.CourseEntity"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/registration.png" width="35" height="35" />|
					Manage Student
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Student</li>
					<li class="active">Manage Student</li>
				</ol>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title" style="background-color: #1ABB9C;">
					<h2 style="color: #fff;">
						<li class="fa fa-reorder">Student List</li>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br />
					<table id="datatable1" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Sr no.</th>
								<th>Student name</th>
								<th>Student Enroll Id</th>
								<th>Mother's name</th>
								<th>Father`s Name</th>
								<th>Contact</th>
								<th>DOB</th>
								<th>Gender</th>
								<th>Course Applied</th>
								<th>Academic Year</th>
								<th>Enrollment date</th>
								
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							List<CourseEntity> courseEntities = (List<CourseEntity>) request
									.getAttribute("courseRecord");
							List<AcademicYearEntity> lista = (List<AcademicYearEntity>) request
									.getAttribute("academicrecord");
										List<StudentEnrolPersonalDetailEntity> listStud = (List<StudentEnrolPersonalDetailEntity>) request
												.getAttribute("studentEnrolledRecord");
										int count = 0;
										for (StudentEnrolPersonalDetailEntity std : listStud) {
									%>
									<tr>
									<td><%= ++count %></td>
									<td><%= std.getFirstName()+" "+std.getMiddleName()+" "+std.getLastName() %></td>
									<td><%= std.getStudEnrolNo() %></td>
									<td><%= std.getStudentEnrolParentDetailEntity().getMotherName() %></td>
									<td><%= std.getStudentEnrolParentDetailEntity().getFatherName() %></td>
									<td><%= std.getContact()+" / "+std.getAlternateContact() %></td>
									<td><%= std.getDob() %></td>
									<td><%= std.getGender() %></td>
								    <td><% for (CourseEntity ce : courseEntities) { if(ce.getId()== std.getCourse()) out.print(ce.getcName());}%></td>
										<td><% for (AcademicYearEntity academicYearDao : lista) {if(academicYearDao.getId()==std.getAcademicYear()){out.print(academicYearDao.getAcademicYearName());}}%></td>
										<td><%= std.getEnrolDate() %></td>
									<td><button type="button" class="btn btn-sm btn-info">
												<li class="fa fa-pencil fa-1x"></li>
											</button>
											<button type="button" class="btn btn-sm btn-danger">
												<li class="fa fa-trash-o fa-1x"></li>
											</button></td>
									</tr>
									<%} %>
						</tbody>

					</table>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->


<jsp:include page="../Footer.jsp" />

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
