<%@page import="com.dao.course.CourseCategoryDao"%>
<%@page import="com.entity.course.CourseCategoryEntity"%>
<%@page import="com.entity.course.CourseEntity"%>


<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/create.png"
						width="35" height="35" /> Create Course
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Course MGT</a></li>
					<li><a href="#"> Course Master</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Course Details</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>



					<div class="x_content">
						<br />


						<form id="demo-form" data-parsley-validate
							action="${pageContext.request.contextPath }/CourseController"
							method="post">
							<input type='hidden' name="action" value="AddCourseMaster" />
							<div class="form-group row">
								<div class="col-md-12">
									<label for="category" class="control-label">Course
										Category <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <select id="category" class="form-control" name="category"
										required>

										<option value="0" selected="true" disabled>--Select--</option>
										<%
                               	List<CourseCategoryEntity> list = (List<CourseCategoryEntity>) request.getAttribute("courseCategoryRecord");
                               							
                               							for (CourseCategoryEntity cc : list) {
                               %>

										<option value=<%=cc.getId()%>><%=cc.getCatCode()%></option>
										<%
                             	}
                             %>
									</select>
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="c_name">Course Name <span
										class="required" style="color: #cc0000; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="c_name" class="form-control"
										name="c_name" required />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="c_code">Course Code <span
										class="required" style="color: #cc0000; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="c_code" class="form-control"
										name="c_code" required />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="desc">Description <span
										class="required" style="color: #cc0000; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="desc" class="form-control" name="desc"
										required />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="semester">Semester <span
										class="required" style="color: #cc0000; font-size: 17px;"><b>*</b></span></label>
									<input type="number" id="semester" class="form-control" min="1"
										max="8" name="semester" required />
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" name="course" value="addcourse"
								class="btn btn-info pull-left" style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Course List</li>
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
										<th>Course Name</th>
										<th>Course Code</th>
										<th>Description</th>
										<th>Course category</th>
										<th>Semester</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<%
                        	List<CourseEntity> list2 = (List<CourseEntity>) request.getAttribute("courseMasterRecord");
                        							int count = 0;
                        							for (CourseEntity ce : list2) {
                        								count++;
                        %>
									<tr>
										<th scope="row"><%=count%></th>
										<td><%=ce.getcName()%></td>
										<td><%=ce.getcCode()%></td>
										<td><%=ce.getDescription()%></td>
										<td><%=new CourseCategoryDao().getCourseCategoryFullDetailsById( ce.getCatId()).getCatName()%></td>
										<td><%= ce.getSemester()%></td>
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
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />

