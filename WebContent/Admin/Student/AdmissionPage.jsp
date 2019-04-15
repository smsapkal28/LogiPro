<%@page import="com.entity.student.StudentRegistrationEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<style>
.button {
	border-radius: 0px;
	background-color: #5bc0de;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 15px;
	padding: 5px;
	width: 35%;
	transition: all 0.5s;
	cursor: pointer;
	margin: 1px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
</style>

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/user.png"
						width="35" height="35" />| New Student Registration
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Student</li>
					<li class="active">Admission</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Select Student</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<div class="col-md-3"></div>
						<div class="col-md-6">
							<form class="form-horizontal form-label-left"
								style="border: 1px solid #456173; border-top: none; height: 270px;"
								action="${pageContext.request.contextPath }/StudentController"
								method="get">
								<input type='hidden' name="action"
									value="redirectStudentRegistrationRecordOnAdmissionPage" class="form-control" />
								<h2
									style="background-color: #456173; height: 40px; text-align: cenetr;">
									<p style="padding: 10px; margin-left: 100px; color: #fff;">Select
										Student For Admission</p>
								</h2>
								<br />
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12">Select
										Student<span class="required" style="color: red">*</span>
									</label>
									<div class="col-sm-7">
										<select id="first-disabled" class="selectpicker form-control"
											data-hide-disabled="true" data-live-search="true" name="studRegNo">
											<option value="0" selected="true" disabled>--Select--</option>
											<%
												List<StudentRegistrationEntity> listStud = (List<StudentRegistrationEntity>) request
														.getAttribute("studentRegrecord");
												int count = 0;
												for (StudentRegistrationEntity std : listStud) {
											%>
											<option value="<%=std.getStudId()%>"><%=std.getStudRegId()%></option>

											<%
												}
											%>
										</select>
									</div>
								</div>
								<div class="clearfix"></div>
								<br /> <br />
								<center>
									<button type="submit" class="button">
										<span>Get Admission </span>
									</button>
								</center>
								<br />
								<p
									style="text-transform: capitalize; color: #EC1D4F; text-align: center;">
									Select registered student and click on the get <br>admission
									button & Go for admission page.
								</p>
							</form>
						</div>
						<div class="col-md-3"></div>
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

<script>
	$('#myDatepicker').datetimepicker();

	$('#myDatepicker2').datetimepicker({
		format : 'DD.MM.YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'hh:mm A'
	});

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
<!-- select picker -->
<script src="../../vendors/dist/js/bootstrap-select.js"></script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var mySelect = $('#first-disabled2');

		$('#special').on('click', function() {
			mySelect.find('option:selected').prop('disabled', true);
			mySelect.selectpicker('refresh');
		});

		$('#special2').on('click', function() {
			mySelect.find('option:disabled').prop('disabled', false);
			mySelect.selectpicker('refresh');
		});

		$('#basic2').selectpicker({
			liveSearch : true,
			maxOptions : 1
		});
	});
</script>
