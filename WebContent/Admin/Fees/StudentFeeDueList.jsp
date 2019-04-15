
<%@page import="com.entity.fee.StudentFeePaidAmountEntity"%>
<%@page import="com.entity.fee.FeeAmountEntity"%>
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
					<img
						src="${pageContext.request.contextPath}/Images/registration.png"
						width="35" height="35" />| Student Fee Due List
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Fee</li>
					<li class="active">Student Fee List</li>
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
								<th>Enrollment date</th>
								<th>Course Applied</th>
								<th>Academic Year</th>
								<th>Total Fee</th>
								<th>Paid Amount</th>
								<th>Remaining Amount</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<%
								List<CourseEntity> courseEntities = (List<CourseEntity>) request.getAttribute("listCourseEntities");
								List<AcademicYearEntity> lista = (List<AcademicYearEntity>) request.getAttribute("listAcademicYear");
								List<StudentEnrolPersonalDetailEntity> listStud = (List<StudentEnrolPersonalDetailEntity>) request
										.getAttribute("listStudentEnrolled");
								List<FeeAmountEntity> feeAmountList = (List<FeeAmountEntity>) request.getAttribute("listFeeAmount");
								List<StudentFeePaidAmountEntity>feePaidAmountList = (List<StudentFeePaidAmountEntity>) request.getAttribute("listFeePaidAmount");
								int count2 = 0;
								Float amount=0f;
								int count = 0;
								Float paidAmount=0f;
								for (StudentEnrolPersonalDetailEntity std : listStud) {
							%>
							<tr>
								<td><%=++count%></td>
								<td><%=std.getFirstName() + " " + std.getMiddleName() + " " + std.getLastName()%></td>
								<td><%=std.getStudEnrolNo()%></td>
								<td><%=std.getEnrolDate()%></td>
								<td>
									<%
										for (CourseEntity ce : courseEntities) {
												if (ce.getId() == std.getCourse())
													out.print(ce.getcName());
											}
									%>
								</td>
								<td>
									<%
										for (AcademicYearEntity academicYearDao : lista) {
												if (academicYearDao.getId() == std.getAcademicYear()) {
													out.print(academicYearDao.getAcademicYearName());
												}
											}
									%>
								</td>
								<%
									
										for (FeeAmountEntity feeAmount : feeAmountList) {
											if((std.getAcademicYear()==feeAmount.getAcademicYearId())&&(std.getCourse()==feeAmount.getCourseId())){
												amount= amount+feeAmount.getFeeAmount();
											}
											
											
										}
								%>
								<td><%= amount %></td>
								<%
									
										for (StudentFeePaidAmountEntity feeAmount : feePaidAmountList) {
											if((std.getStudId()==feeAmount.getStudId())){
												paidAmount = paidAmount+feeAmount.getFeePaidAmount();
											}
											
											
										}
								%>
								<td><%= paidAmount %></td>
								<td><%= amount-paidAmount %></td>
							

								<td><form class="form-horizontal form-label-left"
								
								action="${pageContext.request.contextPath }/FeeController"
								method="get">
								<input type='hidden' name="action"
									value="redirectToPaymentUpdationPage" class="form-control" />
									<input type='hidden' name="studId"
									value="<%= std.getStudId() %>" class="form-control" />
									<button type="submit" class="btn btn-info">
											<li class="fa fa-pencil fa-1x"></li>
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
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->


<jsp:include page="../Footer.jsp" />

