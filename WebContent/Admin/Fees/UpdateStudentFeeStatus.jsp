
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.entity.fee.FeeFrequencyEntity"%>
<%@page import="com.entity.fee.StudentFeePaymentTypeEntity"%>
<%@page import="com.entity.fee.StudentFeePaidAmountEntity"%>
<%@page import="com.entity.fee.FeeAmountEntity"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<!-- <i class="fa fa-plus">  </i> -->
					<img src="${pageContext.request.contextPath}/Images/user.png"
						width="35" height="35" />| Update Fee
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Fee MGT</li>
					<li class="active">Update Fee Status</li>
				</ol>
			</div>
		</div>

		<%
			List<FeeAmountEntity> feeAmountList = (List<FeeAmountEntity>) request.getAttribute("listFeeAmount");
			List<StudentFeePaidAmountEntity> feePaidAmountList = (List<StudentFeePaidAmountEntity>) request
					.getAttribute("listFeePaidAmount");
			StudentEnrolPersonalDetailEntity std = (StudentEnrolPersonalDetailEntity) request.getAttribute("studObj");
			StudentFeePaymentTypeEntity stdPaymentType = (StudentFeePaymentTypeEntity) request.getAttribute("studentFeePAymentTypeObj");
			FeeFrequencyEntity feeFrequency = (FeeFrequencyEntity) request.getAttribute("feeFrequency");
			int noOfInstallement = feeFrequency.getNoOfInstallement();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			 Calendar c = Calendar.getInstance();
			 c.setTime(std.getEnrolDate());
			Float totalAmount = 0f, paidAmount = 0f, outstanding = 0f;
			for (FeeAmountEntity feeAmount : feeAmountList) {
				if ((std.getAcademicYear() == feeAmount.getAcademicYearId())
						&& (std.getCourse() == feeAmount.getCourseId())) {
					totalAmount = totalAmount + feeAmount.getFeeAmount();
					
				}

			}
			for (StudentFeePaidAmountEntity feeAmount : feePaidAmountList) {
				if ((std.getStudId() == feeAmount.getStudId())) {
					
					paidAmount = paidAmount + feeAmount.getFeePaidAmount();
					
				}

			}
		%>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Update Fee</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>

					<div class="x_content">
						<br />

						<%-- <h2 style=" text-align: center;">Student Name :<%= std.getFirstName() +" "+ std.getMiddleName()+" "+std.getLastName() %>  </h2>
 --%>
						<div class="clearfix"></div>
						<div class="x_content">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Student Name</th>
										<th>Total Amount</th>
										<th>Total Paid Amount</th>
										<th>Total Outstanding Amount</th>
										<th>No of Installment</th>
										<th>Amount for Each Installement</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><%=(std.getFirstName() + " " + std.getMiddleName() + " " + std.getLastName()).toUpperCase()%></td>
										<td><%=totalAmount%></td>
										<td><%=paidAmount%></td>
										<td><%=totalAmount - paidAmount%></td>
										<td><%= noOfInstallement%></td>
										<td><%=totalAmount/noOfInstallement%></td>
									</tr>

								</tbody>
							</table>
						</div>
						<div class="clearfix"></div>
						<div class="x_content">
							<h2 style="text-align: center;">Installement Details:</h2>

							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Sr.No.</th>
										<th>Installement Amount</th>
										<th>Installement No</th>
										<th>Due Date</th>
										<th>Paid Amount</th>
										<th>Paid Date</th>
									</tr>
								<tbody>
								<%
								
								for (int i=0;i<noOfInstallement;i++) { 
									c.add(Calendar.DAY_OF_MONTH,30);
									 Date d = c.getTime();
								%>
									<tr>
										<td><%= i+1 %></td>
										<td><%=  totalAmount/noOfInstallement%></td>
										<td><%= i+1 + " Installement" %></td>
										<td><%= sdf.format(d) %></td>
										<% if(i<feePaidAmountList.size()){ %>
										<td><%=  feePaidAmountList.get(i).getFeePaidAmount()%></td>
										<td><%=  feePaidAmountList.get(i).getFeePaidDate()%></td>
										<%} else{%>
										<td>Not Paid</td>
										<td>Not Paid</td>
										<%} %>
									</tr>
									<%} %>
								</tbody>
								</thead>
							</table>
						</div>
						<form id="demo-form" data-parsley-validate
							action="${pageContext.request.contextPath }/FeeController"
							method="post">
							<input type='hidden' name="action" value="updateStudentFeeStatus" />
							<input type='hidden' name="studId" value="<%=std.getStudId()%>" />
							<div class="form-group row">
								<div class="col-sm-8 "></div>
								
								<div class="col-sm-3 float-right">
									<label for="payingAmount">Paying :<span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="payingAmount" class="form-control"
										name="payingAmount" required />
								</div>
							</div>


							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right" name="user"
								value="addUser" style="border-radius: 0px;"">Save</button>
						</form>
					</div>
				</div>
			</div>


			<div class="clearfix"></div>
		</div>
	</div>
</div>


<!-- /page content -->
<jsp:include page="../Footer.jsp" />
