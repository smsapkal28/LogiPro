
<%@page import="com.entity.fee.FeeAmountEntity"%>
<%@page import="com.entity.fee.FeeCategoryEntity"%>
<%@page import="com.entity.course.CourseEntity"%>
<%@page import="com.entity.academicsetting.AcademicYearEntity"%>
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
					<li><a href="#"> Fee MGT</a></li>
					<li><a href="#"> Fee Amount</a></li>
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
							action="${pageContext.request.contextPath }/FeeController"
							method="post">
							<input type='hidden' name="action" value="AddFeeAmount" />
							<div class="form-group row">
								<div class="col-md-12">
									<label for="academicYearId" class="control-label">Academic Year
										 <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <select id="academicYearId" class="form-control" name="academicYearId"
										required>

										<option value="0" selected="true" disabled>--Select--</option>
										<%  
											 List<AcademicYearEntity> listAcademicYear = (List<AcademicYearEntity>) request.getAttribute("listAcademicYear");
                      						
											 for (AcademicYearEntity academic  : listAcademicYear) {
												
												 %>
												 <option value="<%=academic.getId() %>" ><%= academic.getAcademicYearName() %></option>
												 <%} %>
										
									</select>
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="courseId" class="control-label">Course
										 <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <select id="courseId" class="form-control" name="courseId"
										required>

										<option value="0" selected="true" disabled>--Select--</option>
										<%
                        	List<CourseEntity> listCourseEntities = (List<CourseEntity>) request.getAttribute("listCourseEntities");
                        							
                        							for (CourseEntity ce : listCourseEntities) {
                        								
                        %>
                         <option value="<%=ce.getId() %>" ><%= ce.getcName() %></option>
										<%} %>
									</select>
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="feeCatId" class="control-label">Fee
										Category <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <select id="feeCatId" class="form-control" name="feeCatId"
										required>

										<option value="0" selected="true" disabled>--Select--</option>
													<%
													List<FeeCategoryEntity> feeCategoryList = (List<FeeCategoryEntity>) request.getAttribute("listfeeCategory");
                        							
                        							for (FeeCategoryEntity feeCategory : feeCategoryList) {
                        								
                        %>
                         <option value="<%=feeCategory.getFeeCatId() %>" ><%= feeCategory.getFeeCatName() %></option>
										<%} %>
									</select>
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="feeAmount">Fee Amount <span
										class="required" style="color: #cc0000; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="feeAmount" class="form-control"
										name="feeAmount" required />
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
										<th>Academic Year</th>
										<th>Course Name</th>
										<th>Fee category</th>
										<th>Fee Amount</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
								<%
													List<FeeAmountEntity> feeAmountList = (List<FeeAmountEntity>) request.getAttribute("listFeeAmount");
                        							int count=0;
                        							for (FeeAmountEntity feeAmount : feeAmountList) {
                        								
                        %>
								
									<tr>
									<td><%= ++count %></td>
									<td><%  for (AcademicYearEntity academic  : listAcademicYear) {if(academic.getId()==feeAmount.getAcademicYearId()){out.print(academic.getAcademicYearName());}} %></td>
									<td><%  for (CourseEntity ce : listCourseEntities) {if(ce.getId()==feeAmount.getCourseId()){out.print(ce.getcName());}} %></td>
								
								<td><% for (FeeCategoryEntity feeCategory : feeCategoryList) {if(feeCategory.getFeeCatId()==feeAmount.getFeeCatId()){out.print(feeCategory.getFeeCatName());}} %></td>
								
									<td><%= feeAmount.getFeeAmount() %></td>
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

