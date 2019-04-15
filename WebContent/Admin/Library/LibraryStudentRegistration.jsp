

<%@page import="com.entity.library.LibraryStudentRegistrationEntity"%>

<%@page import="java.util.List"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/subject.png"
						width="35" height="35" /> Add Student Detail
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Library</a></li>
					<li><a href="#"> Student Details</a></li>
				</ol>
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Library Student</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<%
						List<LibraryStudentRegistrationEntity> libraryStudentList = (List<LibraryStudentRegistrationEntity>) request
								.getAttribute("libraryStudentList");

						List<StudentEnrolPersonalDetailEntity> list = (List<StudentEnrolPersonalDetailEntity>) request
								.getAttribute("studentEnrolledRecord");
					%>

					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/LibraryController"
							method="post">
							<input type='hidden' name="action"
								value="AddLibraryStudentDetail" class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="stud_Id">Student
										Academic Enroll No <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="stud_Id">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											for (StudentEnrolPersonalDetailEntity std : list) {
												int c = 0;
												for (LibraryStudentRegistrationEntity libraryStudent : libraryStudentList) {

													if (std.getStudId() == libraryStudent.getStud_Enroll_Id()) {
														c++;
													}
												}
												if (c == 0) {
										%>
										<option value="<%=std.getStudId()%>"><%=std.getStudEnrolNo()%></option>
										<%
											}
											}
										%>
									</select>

								</div>

								<div class="col-md-5">
									<label class="control-label" for="stud_Name">Student
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="stud_Name" class="form-control"
										name="stud_Name" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="stud_Contact">Student
										Contact <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="stud_Contact" class="form-control"
										name="stud_Contact" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="stud_Email">Email ID
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="stud_Email" class="form-control"
										name="stud_Email" required />

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
									<th>Library Registration No</th>
									<th>Student Name</th>
									<th>Student Contact</th>
									<th>Email Id</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									int count = 0;
									for (LibraryStudentRegistrationEntity libraryStudent : libraryStudentList) {
								%>
								<tr>
									<td><%=++count%></td>


									<td>
										<%
											for (StudentEnrolPersonalDetailEntity std : list) {
													if (std.getStudId() == libraryStudent.getStud_Enroll_Id()) {
														out.print(std.getStudEnrolNo());
													}
												}
										%>
									</td>
									<td><%=libraryStudent.getStud_Reg_No()%></td>
									<td><%=libraryStudent.getStud_Name()%></td>
									<td><%=libraryStudent.getStud_Contact()%></td>
									<td><%=libraryStudent.getStud_Email()%></td>

									<td><button type="button" class="btn btn-info myBtnUpdate" value="<%= libraryStudent.getLib_Stud_Id()%>">
											<li class="fa fa-pencil fa-1x"></li>
										</button>
										<form class="form-horizontal form-label-left input_mask"
											action="${pageContext.request.contextPath }/LibraryController"
											method="post">
											<input type='hidden' name="action"
												value="DeleteLibraryStudent" class="form-control" /> <input
												type='hidden' name="stud_Id"
												value="<%=libraryStudent.getLib_Stud_Id()%>"
												class="form-control" />
											<button type="submit" class="btn btn-danger ">
												<li class="fa fa-trash-o fa-1x"></li>
											</button>
										</form></td>
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
			
						<!-- The Modal Starts-->
			<div id="myUpdateModal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
					<span class="close">&times; </span>
					<h3 style=" text-align: center;">Enter New Value If You Want To Change Old One</h3>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12" id="updateForm">
							

						</div>
					</div>

				</div>

			</div>
			<!-- The Modal Ends-->
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

<!-- Model Js Function Start Here -->

<script>
	$(document).ready(function() {
		// Get the modal
		var modal = document.getElementById('myUpdateModal');

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 

		$(".myBtnUpdate").click(function() {
			
			var stud_Id = $(this).val();
			$
			.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/Admin/Library/Update/UpdateLibraryStudent.jsp",
				data : "stud_Id=" + stud_Id,
				cache : false,
				success : function(response) {
					$("#updateForm").html(response);

				}
			});

			modal.style.display = "block";
		});

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

	});
</script>

<!-- Model Js Function End Here -->
