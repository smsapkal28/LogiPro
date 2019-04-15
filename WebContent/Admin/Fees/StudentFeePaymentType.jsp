

<%@page import="com.entity.fee.StudentFeePaymentTypeEntity"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<%@page import="com.entity.fee.FeeFrequencyEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/plus.png"
						width="35" height="35" /> Frequency Details
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Fees</li>
					<li class="active">Frequency</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">| Add Frequency</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/FeeController"
							method="post">
							<input type='hidden' name="action" value="addStudentFeePaymentType" />
							<div class="form-group row">
								<div class="col-md-6">
									<label class="control-label" for="frequencyName">Student Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="studId">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<StudentEnrolPersonalDetailEntity> listStud = (List<StudentEnrolPersonalDetailEntity>) request
													.getAttribute("listStudentEnrolled");
											for (StudentEnrolPersonalDetailEntity std : listStud) {
										%>
										<option value="<%=std.getStudId()%>"><%=(std.getFirstName() + " " + std.getLastName()).toUpperCase()%></option>
										<%
											}
										%>
									</select>

								</div>

								<div class="col-md-6">
									<label class="control-label" for="payment_Type">Fee
										Frequency  <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="payment_Type">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
									List<FeeFrequencyEntity> feeFrequencyList = (List<FeeFrequencyEntity>) request
											.getAttribute("feeFrequencyList");
									
									for (FeeFrequencyEntity f : feeFrequencyList) {
								%>
										<option value="<%=f.getFeqId()%>"><%= f.getFeqName()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" name="freq" value="addFrequency"
								class="btn btn-info pull-right" style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">|</li> Frequency List
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">

						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Sr.No.</th>
									<th>Student Name</th>
									<th>Frequency Name</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
							<%
									List<StudentFeePaymentTypeEntity> studentFeePAymentTypeList = (List<StudentFeePaymentTypeEntity>) request
											.getAttribute("studentFeePAymentTypeList");
									int count = 0;
									for (StudentFeePaymentTypeEntity studFeePaymentType : studentFeePAymentTypeList) {
								%>
								<tr>
								<td><%= ++count %></td>
									<td><% for (StudentEnrolPersonalDetailEntity std : listStud) {if(studFeePaymentType.getStudent_Id()==std.getStudId()){out.print((std.getFirstName() + " " + std.getLastName()).toUpperCase());} }%></td>
									<td><%for (FeeFrequencyEntity f : feeFrequencyList) {if(f.getFeqId() ==studFeePaymentType.getFee_Freq_Id()){out.print(f.getFeqName());}}  %></td>
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

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />

