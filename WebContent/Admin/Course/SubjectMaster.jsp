<%@page import="com.dao.course.CourseMasterDao"%>
<%@page import="com.dao.subject.SubjectCategoryDao"%>
<%@page import="com.entity.subject.SubjectMasterEntity"%>
<%@page import="com.entity.subject.SubjectCategoryEntity"%>
<%@page import="com.entity.course.SubjectModel"%>
<%@page import="com.entity.course.SubjectCategoryModel"%>

<%@page import="com.entity.course.CourseEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath }/Images/create.png"
						width="35" height="35" /> Create Subject
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath }/Images/d1.png"
							width="25" height="25" /> Dashboard</a></li>
					<li><a href="#"> Course MGT</a></li>
					<li><a href="#"> Subject </a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Add Subjects</h2>
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
							<input type='hidden' name="action" value="AddSubjectMaster" />

							<div class="form-group row">
								<div class="col-md-12">
									<label for="course" class="control-label">Course <span
										class="required" style="color: #cc0000; font-size: 17px;"><b>*</b></span></label>
									<select id="courseCode" class="form-control course"
										name="courseCode" required>
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
							<!-- <div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="sem">Semester</label> <select
										id="semester" class="form-control  " name="semester" required>
										<option value="0" selected="true" disabled>--Select--</option>

									</select>
								</div>
							</div> -->
							<%-- 	<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="s_type">Subject Type</label>
									<select id="subCat" class="form-control" name="subCat" required>
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<SubjectCategoryEntity> listSubCat = (List<SubjectCategoryEntity>) request
													.getAttribute("subjectCategoryRecord");

											for (SubjectCategoryEntity sc : listSubCat) {
										%>

										<option value=<%=sc.getId()%>><%=sc.getSubjectCatCode()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div> --%>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="s_name">Subject Name</label>
									<input type="text" id="subName" class="form-control"
										name="subName" required />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="sub_code">Subject
										Code <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="subCode" class="form-control"
										name="subCode" required />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="desc" class="control-label">Description </label>
									<textarea class="form-control" id="subDesc" name="subDesc"></Textarea>
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-left"
								name="course" value="addnewsubject" style="border-radius: 0px;">Submit</button>

						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Subject List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Sr.No.</th>
										<th>Subject Name</th>
										<th>Subject Code</th>
										<th>Description</th>
										<!-- <th>Subject Type</th> -->
										<th>Course</th>

										<th>Actions</th>
									</tr>
								</thead>
								<tbody>


									<%
										List<SubjectMasterEntity> listSubMaster = (List<SubjectMasterEntity>) request
												.getAttribute("SubjectMasterRecord");

										int count = 0;
										for (SubjectMasterEntity sm : listSubMaster) {

											count++;
									%>
									<tr>
										<th scope="row"><%=count%></th>
										<td><%=sm.getSubName()%></td>
										<td><%=sm.getSubCode()%></td>
										<td><%=sm.getSubDesc()%></td>
										<%-- <td><%=new SubjectCategoryDao().getCourseCategoryFullDetailsById(sm.getSubCat()).getSubjectCatCode()%></td> --%>
										<td><%= new CourseMasterDao(). getCourseFullDetailsById(sm.getSubCourseCode()).getcCode()%></td>


										<td><button type="button" class="btn btn-info">
												<li class="fa fa-pencil"></li>
											</button>
											<button type="button" class="btn btn-danger">
												<li class="fa fa-trash-o "></li>
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

