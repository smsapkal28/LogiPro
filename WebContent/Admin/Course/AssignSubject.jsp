<%@page import="com.dao.subject.SubjectMasterDao"%>
<%@page import="com.dao.subject.SubjectCategoryDao"%>
<%@page import="com.dao.batch.BatchDao"%>
<%@page import="com.dao.course.CourseMasterDao"%>
<%@page import="com.entity.subject.SubjectToBatchEntity"%>
<%@page import="com.entity.batch.BatchEntity"%>
<%@page import="com.entity.course.CourseEntity"%>
<%@page import="com.entity.subject.SubjectCategoryEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath }/Images/subject.png"
						width="35" height="35" /> Assign Subject
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath }/Images/d1.png"
							width="25" height="25" /> Dashboard</a></li>
					<li><a href="#"> Course MGT</a></li>
					<li><a href="#"> Assign Subject</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">

					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Assign Subject</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>

					<div class="x_content">
						<br />
						<form id="demo-form" data-parsley-validate
							action="${pageContext.request.contextPath }/SubjectController"
							method="post">
							<input type='hidden' name="action" value="AddSubjectToBatch" />
							<div class="form-group row">
								<div class="col-md-12">
									<label for="course" class="control-label">Select Course
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="courseCode" name="courseCode" class="form-control"
										onchange="course_select()" required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<CourseEntity> list = (List<CourseEntity>) request.getAttribute("courseMasterRecord");

											for (CourseEntity cc : list) {
										%>

										<option value=<%=cc.getId()%>><%=cc.getcName()%></option>
										<%
											}
										%>

									</select>
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="batchCode">Batch <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<select id="batchCode" name="batchCode" class="form-control"
										required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<BatchEntity> listBatch = (List<BatchEntity>) request.getAttribute("batchRecord");
											
											for (BatchEntity batch : listBatch) {
										%>
										<option value=<%=batch.getId()%>><%=batch.getBatchName()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="subCatCode">Subject
										Category <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="subCatCode" class="form-control" name="subCatCode"
										required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<SubjectCategoryEntity> listSubCat = (List<SubjectCategoryEntity>) request
													.getAttribute("subjectCategoryRecord");

											for (SubjectCategoryEntity sc : listSubCat) {
										%>

										<option value=<%=sc.getId()%>><%=sc.getSubjectCatName()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label">Subject </label> <select
										class="select2_multiple form-control" id="subjects"
										name="subjects" multiple="multiple">
										<option value="0" selected="true" disabled>--Select--</option>
									</select>
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-left"
								style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Assigned Subject List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>
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
						<table id="" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Sr.no</th>
									<th>Course Name</th>
									<th>Batch Name</th>
									<th>Subject Type</th>
									<th>Subject Name</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
											List<SubjectToBatchEntity> subjectToBatch = (List<SubjectToBatchEntity>) request
													.getAttribute("subjectToBatchRecord");
											int count=0;
											for (SubjectToBatchEntity sb : subjectToBatch) {
										%>

								<tr>
									<td><%= ++count %></td>
									<td><%= new CourseMasterDao().getCourseFullDetailsById( sb.getCourseCode()).getcName() %></td>
									<td><%= new BatchDao().getBatchFullDetailsById(sb.getBatchCode()).getBatchName() %></td>
									<td><%= new SubjectCategoryDao().getSubjectCategoryFullDetailsById(sb.getSubCatCode()).getSubjectCatName() %></td>
									<td>
										<% 
										String subjects[] = sb.getSubjectsList().split(",");
										for(String s:subjects){
											
										
										
										%>
										<table>
											<tbody>
												<tr>
													<td><%= new SubjectMasterDao().getCourseMasterFullDetailsById(Integer.parseInt(s)).getSubName() %></td>
												</tr>
											</tbody>
										</table> <%}%>
									</td>
									<td><button type="button" class="btn btn-sm btn-info">
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
<!--  subject select script from given course -->
<script type="text/javascript">
	function course_select() {
		var courseCode = $("#courseCode").val();

		$
				.ajax({
					type : "POST",

					url : "${pageContext.request.contextPath}/Admin/Universal/getSubjectMasterByCourseId.jsp",
					data : "courseCode=" + courseCode,
					cache : false,
					success : function(response) {
						$("#subjects").html(response);
					}
				});
	}
</script>