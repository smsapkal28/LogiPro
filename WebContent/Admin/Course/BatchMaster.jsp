<%@page import="com.dao.course.CourseMasterDao"%>
<%@page import="com.dao.academicsetting.AcademicYearDao"%>
<%@page import="com.entity.batch.BatchEntity"%>
<%@page import="com.entity.course.CourseEntity"%>
<%@page import="com.entity.academicsetting.AcademicYearEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/classroom.png"
						width="35" height="35" /> Create Batch
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Course MGT</li>
					<li class="active">Batch</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Add Batch</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>

					<div class="x_content">
						<form id="demo-form" data-parsley-validate
							action="${pageContext.request.contextPath }/BatchController"
							method="post">
							<input type='hidden' name="action" value="AddBatch" />

							<div class="form-group row">
								<div class="col-md-4">
									<label class="control-label" for="fname">Academic Year
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="academicYear" class="form-control"
										name="academicYear" required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%  
											 List<AcademicYearEntity> list = (List<AcademicYearEntity>) request.getAttribute("academicYearRecord");
                      						
											 for (AcademicYearEntity academicYear  : list) {
												
												 %>
										<option value=<%= academicYear.getId()%>><%= academicYear.getAcademicYearName() %></option>

										<%} %>
									</select>
								</div>


								<div class="col-md-4">
									<label class="control-label" for="fname">Course <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<select id="courseCode" class="form-control courseCode"
										name="courseCode" onchange="course_change()" required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
									
                        	List<CourseEntity> list2 = (List<CourseEntity>) request.getAttribute("courseMasterRecord");
                        							
                        							for (CourseEntity ce : list2) {
                        								
                        								
                        %>
										<option value=<%= ce.getId()%>><%= ce.getcName() %></option>

										<%} %>
									</select>
								</div>

								<div class="col-md-4">
									<label class="control-label" for="lname">Batch Name <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="batchName" class="form-control"
										name="batchName" required />
								</div>
								<!-- <div class="col-md-4">
									<label class="control-label" for="fname">Semester <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<select id="semester" class="form-control semester"
										name="semester" required>
										<option value="0" selected="true" disabled>--Select--</option>
									</select>
								</div> -->
							</div>
							<div class="form-group row">
								


								<div class="col-md-4">
									<label class="control-label" for="fname">Batch Code <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="batchCode" class="form-control"
										name="batchCode" required />
								</div>


								<div class="col-md-4">
									<label class="control-label" for="startDate">Start Date
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label>
									<div class='input-group date' id='myDatepicker2'>
										<input type='text' class="form-control" id="startDate"
											name="startDate" /> <span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>
								
								<div class="col-md-4">
									<label class="control-label" for="endDate">End Date <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<div class='input-group date' id='myDatepicker3'>
										<input type='text' class="form-control" id="endDate"
											name="endDate" /> <span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>
							</div>
							<div class="form-group row">
								

								<div class="col-md-4">
									<label class="control-label" for="maxStud">Maximum
										Number Of Students <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="maxStud" class="form-control"
										name="maxStud" required />
								</div>
								<div class="col-md-4">
									<label class="control-label" for="fname">Minimum
										Attendance <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="minAttend" class="form-control"
										name="minAttend" required />
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right">Submit</button>
						</form>
						<br />
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Batch List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="table-responsive" style="overflow-x: auto;">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Sr.No.</th>
										<th>Batch Name</th>
										<th>Batch Code</th>
										<th>Course Name</th>
										<th>Academic Year</th>
										<th>Start Date</th>
										<th>End Date</th>
										<th>No Of Student</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<%
									
                        	List<BatchEntity> listBatch = (List<BatchEntity>) request.getAttribute("BatchRecord");
                        							int count=0;
                        							for (BatchEntity batch : listBatch) {
                        								
                        								
                        %>
									<tr>
										<th scope="row"><%= ++count %></th>
										<td><%=batch.getBatchName() %></td>
										<td><%=batch.getBatchCode() %></td>
										<td><%=new CourseMasterDao().getCourseFullDetailsById( batch.getCourseCode()).getcName() %></td>
										<td><%= new AcademicYearDao().getAcademicYearFullDetailsById(batch.getAcademicYear()).getAcademicYearName() %></td>
										<td><%=batch.getStartDate() %></td>
										<td><%=batch.getEndDate() %></td>
										<td><%=batch.getMaxStud() %></td>
										<td><button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#myModal">
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
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />

<!-- Initialize datetimepicker -->
<script>
	$('#myDatepicker').datetimepicker();

	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'DD/MM/YYYY'
	});
	/*  $('#myDatepicker3').datetimepicker({
	     format: 'hh:mm A'
	 }); */

	$('#myDatepicker4').datetimepicker({
		ignoreReadonly : true,
		allowInputToggle : true
	});

	$('#datetimepicker6').datetimepicker();

	$('#datetimepicker7').datetimepicker({
		useCurrent : false
	});

	$("#datetimepicker6").on("dp.change", function(e) {
		$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
	});

	$("#datetimepicker7").on("dp.change", function(e) {
		$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
	});
</script>

<script>
function course_change()
{
    var courseCode = $("#courseCode").val();
	
	$.ajax({
		type: "POST",
		url: "${pageContext.request.contextPath}/Admin/Universal/getCourseMasterById.jsp",
		data: "courseCode="+courseCode,
		cache: false,
		success: function(response)
        {
            $("#semester").html(response);
        }
    });
}

</script>
