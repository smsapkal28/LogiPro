<%@page import="com.entity.course.CourseCategoryEntity"%>


<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="../admin-index.jsp" />



<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/create.png"
						width="35" height="35" /> Course Category
				</h3>
			</div>
			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Course MGT</a></li>
					<li><a href="#"> Course Category</a></li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Course Category Details</h2>
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
							<input type='hidden' name="action" value="AddCourseCategory" />
							<div class="form-group row">
								<div class="col-md-12">
									<label for="c_name" class="control-label">Course
										Category Name <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="" class="form-control" name="c_name"
										required />
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="c_code">Course
										Category Code <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="" class="form-control" name="c_code"
										required />
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-left"
								name="course" value="addcatcourse" style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Course Category List</li>
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
										<th>Course Category Name</th>
										<th>Course Category Code</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<%
										List<CourseCategoryEntity> list = (List<CourseCategoryEntity>) request.getAttribute("courseCategoryRecord");
										int count = 0;
										for (CourseCategoryEntity cc : list) {
											count++;
									%>

									<tr>
										<th scope="row"><%=count%></th>
										<td><%=cc.getCatName()%></td>
										<td><%=cc.getCatCode()%></td>
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
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<jsp:include page="../Footer.jsp" />