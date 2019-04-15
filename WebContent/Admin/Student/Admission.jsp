<%@page import="com.entity.fee.FeeFrequencyEntity"%>
<%@page import="com.entity.universal.CountryEntity"%>
<%@page import="com.entity.batch.BatchEntity"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.student.StudentRegistrationEntity"%>
<jsp:include page="../admin-index.jsp" />



<style type="text/css">
.file {
	padding: 10px;
	border: 1px solid #eee;
	background-color: #FADBD8;
	border-radius: 4px;
}
</style>




<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<!-- <i class="fa fa-plus">  </i> -->
					<img src="${pageContext.request.contextPath}/Images/user.png"
						width="35" height="35" />| Add User
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Student</li>
					<li class="active">Student Admission</li>
				</ol>
			</div>
		</div>

		<%
			StudentRegistrationEntity listStud = (StudentRegistrationEntity) request
					.getAttribute("studentRegrecordById");
		%>


		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">| New Admission</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


							</li>
						</ul>
						<div class="clearfix"></div>
					</div>

					<div class="x_content">
						<br />
						<form id="demo-form" data-parsley-validateaction="${pageContext.request.contextPath }/StudentController"
							method="post"  enctype="multipart/form-data">
							<input type='hidden' name="action"
								value="addStudentEnrolRecord" class="form-control" />
							<!-- <div class="clearfix"></div> -->
							<h6
								style="text-transform: uppercase; color: #566573; font-weight: bold;">Office
								Details:-</h6>
							<hr style="background-color: #D7BDE2; width: 100%; height: 2px;">
							<div class="form-group row">
								<div class="col-md-4">
									<label for="regId">Reg. No </label> <input type="text"
										id="" class="form-control" name=""
										value="<%=listStud.getStudRegId()%>" readonly="readonly" />
										<input type="hidden"
										id="regId" class="form-control" name="regId"
										value="<%=listStud.getStudId()%>" readonly="readonly" />
								</div>
								<div class="col-md-4">
									<label for="acyear">Academic Year :<span
										class="required" style="color: red; font-size: 13px;"><b>*</b></span></label>
									<input type="text" id="regId" class="form-control"
										name="academicYear" value="<%=listStud.getRegSession()%>"
										readonly="readonly" />
								</div>
								<div class="col-md-4">
									<label for="fullname">Admission Date :<span
										class="required" style="color: red; font-size: 13px;"><b>*</b></span></label>
									<div class="control-group">
										<div class="controls">
											<div class='input-group date'>
												<input type="text" class="form-control " id="single_cal2"  name="enrolDate"
													aria-describedby="inputSuccess2Status2" readonly="readonly">
												<span class="input-group-addon"> <span
													id="inputSuccess2Status2" class="sr-only">(success)</span>
													<span class="glyphicon glyphicon-calendar"
													aria-hidden="true"></span>
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="fullname">Course :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <input
										type="text" id="regId" class="form-control" name="course"
										value="<%=listStud.getCourseApplied()%>" readonly="readonly" />
								</div>
								
									<div class="col-md-4">
								<label for="country" class="control-label">Country:<span
									class="required" style="color: red">*</span></label> <select
									name="country" id="country" class="form-control country"
									onchange="country_change()">
									<option value="0" selected="true" disabled>--Select--</option>
									<%	 List<FeeFrequencyEntity> feeFrequencyList = (List<FeeFrequencyEntity>) request
											.getAttribute("feeFrequencyList");
                					
											 for (FeeFrequencyEntity feq  : feeFrequencyList) {
												
												 %>

									<option value="<%=feq.getFeqId() %>"><%= feq.getFeqName() %></option>

									<%} %>
								</select>
							</div>

							</div>

							<div class="clearfix"></div>
							<h6
								style="text-transform: uppercase; color: #566573; font-weight: bold;">Personal
								Details:-</h6>
							<hr style="background-color: #D7BDE2; width: 100%; height: 2px;">
							<div class="form-group row">
								<div class="col-md-4">
									<label for="fName">First Name <span class="required"
										style="color: red; font-size: 13px;"><b>*</b></span></label> <input
										type="text" id="fName" class="form-control" name="fName"
										required />
								</div>
								<div class="col-md-4">
									<label for="mName">Middle Name </label> <input type="text"
										id="mName" class="form-control" name="mName" />
								</div>
								<div class="col-md-4">
									<label for="lName">Last Name </span></label> <input type="text"
										id="lName" class="form-control" name="lName" />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="email">Date Of Birth :<span
										class="required" style="color: red; font-size: 13px;"><b>*</b></span></label>
									<div class='input-group date' id='myDatepicker1'>
										<input type='text' class="form-control" name="dob" id="dob" />
										<span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>
								<div class="col-md-4">
									<label for="fullname">Gender :<span class="required"
										style="color: red; font-size: 13px;"><b>*</b></span></label>
									<p>
										Male: <input type="radio" class="flat" name="gender"
											id="genderM" value="Male" checked="" required /> Female: <input
											type="radio" class="flat" name="gender" id="genderF"
											value="Female" />
									</p>
								</div>
								<div class="col-md-4">
									<label for="age">Age </label> <input type="text" id="age"
										class="form-control" name="age" />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="b_group">Blood Group </label> <select
										id="bloodGroup" class="form-control" name="bloodGroup"
										required>
										<option >Select..</option>
										<option >A+</option>
										<option >A-</option>
										<option >B+</option>
										<option >B-</option>
										<option >O+</option>
										<option >O-</option>
										<option >AB+</option>
										<option >AB-</option>
										<option >Not Known</option>
									</select>
								</div>
								<div class="col-md-4">
									<label for="birthPlace">Birth Place </label> <input type="text"
										id="birthPlace" class="form-control" name="birthPlace" />
								</div>
								<div class="col-md-4">
									<label for="nationality">Nationality :<span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="nationality" class="form-control" name="nationality" />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="email">Mother Tongue </label> <input type="text"
										id="motherTongue" class="form-control" name="motherTongue" />
								</div>
								<div class="col-md-4">
									<label for="religion">Religion :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <select
										id="religion" class="form-control" name="religion" required>
										<option >Select..</option>
										<option >Hindu</option>
										<option >Muslim</option>
										<option>Sikh</option>
										<option >Chritian</option>
										<option >Jain</option>
										<option >Baudh</option>
										<option >Other</option>
									</select>
								</div>
								<div class="col-md-4">
									<label for="category">Category :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <select
										id="category" class="form-control" name="category" required>
										<option >Select..</option>
										<option >SC</option>
										<option >ST</option>
										<option >Open</option>
										<option >OBC</option>
										<option >VJ</option>
										<option >NT</option>
										<option >Other</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								
								<div class="col-md-4">
									<label for="aadharNo">UID/Aadhar Number :<span
										class="required" style="color: red; font-size: 13px;"><b>*</b></span></label>
									<input type="text" id="aadharNo" class="form-control" name="aadharNo"
										placeholder="UID/Aadhar Number" />
								</div>
							</div>
							<div class="clearfix"></div>
							<h6
								style="text-transform: uppercase; color: #566573; font-weight: bold;">Contact
								Details:-</h6>
							<hr style="background-color: #D7BDE2; width: 100%; height: 2px;">
							<div class="form-group row">
								<div class="col-md-6">
									<label for="currentAddress" class="control-label">Current
										Address:<span class="required" style="color: red">*</span>
									</label>
									<textarea class="form-control" id="currentAddress" 
										name="currentAddress" placeholder="Enter Current Address:"></Textarea>
								</div>
								<div class="col-md-6">
									<label for="permanentAddress" class="control-label">Permanent
										Address:<span class="required" style="color: red">*</span>
									</label>
									<textarea class="form-control" id="permanentAddress" 
										name="permanentAddress" placeholder="Enter Permanent Address:"></textarea>
								</div>

							</div>
							<div class="form-group row">
								<div class="col-md-4">
								<label for="country" class="control-label">Country:<span
									class="required" style="color: red">*</span></label> <select
									name="country" id="country" class="form-control country"
									onchange="country_change()">
									<option value="0" selected="true" disabled>--Select--</option>
									<%	 List<CountryEntity> countryEntities = (List<CountryEntity>) request.getAttribute("countryRecord");
                					
											 for (CountryEntity ce  : countryEntities) {
												
												 %>

									<option value="<%=ce.getId() %>"><%= ce.getName() %></option>

									<%} %>
								</select>
							</div>
								<div class="col-md-4">
								<label for="state" class="control-label">State:<span
									class="required" style="color: red">*</span></label> <select
									name="state" id="state" onchange="state_change()"
									class="form-control state">
									<option value="0" selected="true" disabled>---Please
										select Country first---</option>


								</select>
							</div>
								<div class="col-md-4">
								<label for="city" class="control-label">City:<span
									class="required" style="color: red">*</span></label> <select
									name="city" id="city" size="1" class="form-control city">
									<option value="" selected="selected">---Please select
										State first---</option>


								</select>
							</div>

							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="pinCode" class="control-label">PIN:<span
										class="required">*</span></label> <input type="text"
										class="form-control" id="pinCode"  name="pinCode"
										placeholder="Enter PIN CODE">
								</div>
								<div class="col-md-4">
									<label for="contact" class="control-label">Contact Number:<span
										class="required" style="color: red">*</span>
									</label> <input type="text" class="form-control" id="contact"
										 name="contact"
										placeholder="Enter Contact No.">
								</div>
								<div class="col-md-4">
									<label for="alternateContact" class="control-label">Alternative
										Contact Number:<span class="required" style="color: red">*</span>
									</label> <input type="text" class="form-control" id="alternateContact"
										 name="alternateContact"
										placeholder="Enter Alternative Contact No.">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="emailId" class="control-label"> Email
										Id:<span class="required" style="color: red">*</span>
									</label> <input type="text" class="form-control" id="emailId"
										autofocus="none" name="emailId"
										placeholder="Enter Email Id">
								</div>
								
							</div>
							<div class="clearfix"></div>
							<h6
								style="text-transform: uppercase; color: #566573; font-weight: bold;">Father's
								Details:-</h6>
							<hr style="background-color: #D7BDE2; width: 100%; height: 2px;">
							<div class="form-group row">
								<div class="col-md-4">
									<label for="text" class="control-label">Name:<span
										class="required" style="color: red">*</span></label> <input
										type="text" class="form-control" id="fatherName" 
										name="fatherName" placeholder="Enter father Name:">
								</div>
								<div class="col-md-4">
									<label for="fqualification" class="control-label">Qualification</label> <input
										type="text" class="form-control" id="fqualification" 
										name="fqualification">
								</div>
								<div class="col-md-4">
									<label for="fJob" class="control-label">Job</label> <input
										type="text" class="form-control" id="fJob" 
										name="fJob">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="fContact" class="control-label">Mobile:<span
										class="required" style="color: red">*</span></label> <input
										type="text" class="form-control" id="fContact" 
										name="fContact">
								</div>
								<div class="col-md-4">
									<label for="fAdhar" class="control-label">UID/Aadhar
										Number:<span class="required" style="color: red">*</span>
									</label> <input type="text" class="form-control" id="fAdhar"
										 name="fAdhar"
										placeholder="UID/Aadhar number">
								</div>
							</div>
							<div class="clearfix"></div>
							<h6
								style="text-transform: uppercase; color: #566573; font-weight: bold;">Mother's
								Details:-</h6>
							<hr style="background-color: #D7BDE2; width: 100%; height: 2px;">
							<div class="form-group row">
								<div class="col-md-4">
									<label for="motherName" class="control-label">Name:<span
										class="required" style="color: red">*</span></label> <input
										type="text" class="form-control" id="motherName" 
										name="motherName" placeholder="Enter Mother Name:">
								</div>
								<div class="col-md-4">
									<label for="mqualification" class="control-label">Qualification</label> <input
										type="text" class="form-control" id="mqualification" 
										name="mqualification">
								</div>
								<div class="col-md-4">
									<label for="mJob" class="control-label">Job</label> <input
										type="text" class="form-control" id="mJob"
										name="mJob">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label for="mContact" class="control-label">Mobile:<span
										class="required" style="color: red">*</span></label> <input
										type="text" class="form-control" id="mContact"
										name="mContact">
								</div>
								<div class="col-md-4">
									<label for="mAdhar" class="control-label">Aadhar Number:<span
										class="required" style="color: red">*</span>
									</label> <input type="text" class="form-control" id="mAdhar"
										 name="mAdhar"
										placeholder="Enter Aadhar number">
								</div>
							</div>
							<div class="clearfix"></div>
							
							<br />
							
							<h6
								style="text-transform: uppercase; color: #566573; font-weight: bold;">Document Uploads:-</h6>
								<hr style="background-color: #D7BDE2; width: 100%; height: 2px;">
							<h5>Select check box and upload file:-</h5>
							<div class="file">
								<div class="row">
								<div class="form-group row">
										<div class="col-md-3">
											<label><input type="checkbox" id="studPhoto" value=""
												onclick="myFunctionPhoto()"> Student Photo</label>
										</div>
										<div class="col-md-3">
											<input type="file" name="stud_Photo" size="50"
												id="stud_Photo" style="display: none" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-3">
											<label><input type="checkbox" id="marksheet" value=""
												onclick="myFunction1()"> Mark Sheet</label>
										</div>
										<div class="col-md-3">
											<input type="file" name="mark_sheet" size="50"
												id="mark_sheet" style="display: none" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-3">
											<label><input type="checkbox" id="birth" value=""
												onclick="myFunction2()"> Birth Certificate</label>
										</div>
										<div class="col-md-3">
											<input type="file" name="birth_certi" size="50" id="birth_certi"
												style="display: none" />
										</div>

									</div>
									<div class="form-group row">
										<div class="col-md-3">
											<label><input type="checkbox" id="transfer" value=""
												onclick="myFunction3()"> Transfer Certificate</label>
										</div>
										<div class="col-md-3">
											<input type="file" name="transfer_certi" size="50"
												id="transfer_certi" style="display: none" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-3">
											<label><input type="checkbox" id="caste" value=""
												onclick="myFunction4()"> Caste Certificate</label>
										</div>
										<div class="col-md-3">
											<input type="file" name="caste_certi" size="50" id="caste_certi"
												style="display: none" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-3">
											<label><input type="checkbox" id="migration" value=""
												onclick="myFunction5()"> Migration Certificate</label>
										</div>
										<div class="col-md-3">
											<input type="file" name="migration_certi" size="50"
												id="migration_certi" style="display: none" />
										</div>
									</div>
									
								</div>
							</div>
							<div class="clearfix"></div>
							<!-- <h6
								style="text-transform: uppercase; color: #566573; font-weight: bold;">Other
								Details:-</h6>
							<hr style="background-color: #D7BDE2; width: 100%; height: 2px;">
							<div class="form-group row">
								<div class="col-md-2">
									<div class="checkbox">
										<label> Transport <input type="checkbox" class="flat"
											id="flip1">
										</label>
									</div>
								</div>
								<div class="col-md-2">
									<div class="checkbox">
										<label> Hostel <input type="checkbox" class="flat"
											id="flip2">
										</label>
									</div>
								</div>
							</div> -->
					<!-- 		<div id="panel1" class="row">
								<h6 style="color: grey;">TRANSPORT DETAILS:-</h6>
								<br>
								<div class="form-group row">
									<div class="col-md-4">
										<label for="text" class="control-label">Route <span
											class="required" style="color: red">*</span></label> <select
											class="form-control" id="route" name="route">
											<option>Select Route Code</option>
										</select>
									</div>
									<div class="col-md-4">
										<label for="text" class="control-label">Destination <span
											class="required" style="color: red">*</span>
										</label> <select class="form-control" id="destination"
											name="destination">
											<option>Select Destination</option>
										</select>
									</div>
									<div class="col-md-4">
										<label for="text" class="control-label">Start Date <span
											class="required" style="color: red">*</span>
										</label>
										<input type="date" class="form-control" id="date" autofocus="none" name="sdate" placeholder="">
										<div class='input-group date' id='myDatepicker3'
											name="start_date">
											<input type='text' class="form-control" /> <span
												class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-4">
										<label for="text" class="control-label">End Date:<span
											class="required" style="color: red">*</span></label>
										<input type="date" class="form-control" id="date" autofocus="none" name="edate" placeholder="">
										<div class="input-group date" id='myDatepicker5'
											name="end_date">
											<input type='text' class="form-control" /> <span
												class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
							</div> -->
							<!-- <div id="panel2" class="row">
								<h6 style="color: grey;">HOSTEL DETAILS:-</h6>
								<br>
								<div class="form-group row">
									<div class="col-md-4">
										<label for="text" class="control-label">Hostel Name <span
											class="required" style="color: red">*</span>
										</label> <select class="form-control" id="hostel_name" name="hostel">
											<option>Select Route Code</option>
										</select>
									</div>
									<div class="col-md-4">
										<label for="text" class="control-label">Hostel Room <span
											class="required" style="color: red">*</span>
										</label> <select class="form-control" id="h_room" name="h_room">
											<option>Select Destination</option>
										</select>
									</div>
									<div class="col-md-4">
										<label for="text" class="control-label">Registration
											Date <span class="required" style="color: red">*</span>
										</label>
										<input type="date" class="form-control" id="date" autofocus="none" name="regdate" placeholder="">
										<div class='input-group date' id='myDatepicker8'
											name="reg_date">
											<input type='text' class="form-control" /> <span
												class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-4">
										<label for="text" class="control-label">Vacating Date:<span
											class="required" style="color: red">*</span>
										</label>
										<input type="date" class="form-control" id="date" autofocus="none" name="vdate" placeholder="">
										<div class='input-group date' id='myDatepicker10' name="vdate">
											<input type='text' class="form-control" /> <span
												class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
							</div> -->
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right"
								style="border-radius: 0px;">Submit</button>
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


<script>
	$(document).ready(function() {
		$("#panel1").hide();
		$("#flip1").click(function() {
			$("#panel1").slideToggle("slow");
		});
	});
	$(document).ready(function() {
		$("#panel2").hide();
		$("#div").hide();
		$("#flip2").click(function() {
			$("#panel2").slideToggle("slow");
		});
		$("#textbox").mouseenter(function() {
			$("#div").show();
		});
		$("#textbox").mouseleave(function() {
			$("#div").hide();
		});
	});
</script>
<script>
	$('#myDatepicker').datetimepicker();

	$('#myDatepicker1').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker5').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker8').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker10').datetimepicker({
		format : 'DD.MM.YYYY'
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
<!-- Image script start-->
<script>
	$(document).on('click', '#close-preview', function() {
		$('.image-preview').popover('hide');
		// Hover befor close the preview
		$('.image-preview').hover(function() {
			$('.image-preview').popover('show');
		}, function() {
			$('.image-preview').popover('hide');
		});
	});

	$(function() {
		// Create the close button
		var closebtn = $('<button/>', {
			type : "button",
			text : 'x',
			id : 'close-preview',
			style : 'font-size: initial;',
		});
		closebtn.attr("class", "close pull-right");
		// Set the popover default content
		$('.image-preview').popover({
			trigger : 'manual',
			html : true,
			title : "<strong>Preview</strong>" + $(closebtn)[0].outerHTML,
			content : "There's no image",
			placement : 'bottom'
		});
		// Clear event
		$('.image-preview-clear').click(function() {
			$('.image-preview').attr("data-content", "").popover('hide');
			$('.image-preview-filename').val("");
			$('.image-preview-clear').hide();
			$('.image-preview-input input:file').val("");
			$(".image-preview-input-title").text("Browse");
		});
		// Create the preview image
		$(".image-preview-input input:file").change(
				function() {
					var img = $('<img/>', {
						id : 'dynamic',
						width : 150,
						height : 100
					});
					var file = this.files[0];
					var reader = new FileReader();
					// Set preview image into the popover data-content
					reader.onload = function(e) {
						$(".image-preview-input-title").text("Change");
						$(".image-preview-clear").show();
						$(".image-preview-filename").val(file.name);
						img.attr('src', e.target.result);
						$(".image-preview").attr("data-content",
								$(img)[0].outerHTML).popover("show");
					}
					reader.readAsDataURL(file);
				});
	});
</script>
<!-- Image script end -->
<!--certificate file upload -->
<script type="text/javascript">
	/* $(function () {
	    $("#marksheet").click(function () {
	        if ($(this).is(":checked")) {
	            $("#mark_sheet").show();
	        } else {
	            $("#mark_sheet").hide();
	        }
	    });
	}); */

	/* student photo certificate */
	function myFunctionPhoto() {
		var checkBox = document.getElementById("studPhoto");
		var text = document.getElementById("stud_Photo");
		if (checkBox.checked == true) {
			text.style.display = "block";
		} else {
			text.style.display = "none";
		}
	}
	/* mark sheet certificate */
	function myFunction1() {
		var checkBox = document.getElementById("marksheet");
		var text = document.getElementById("mark_sheet");
		if (checkBox.checked == true) {
			text.style.display = "block";
		} else {
			text.style.display = "none";
		}
	}

	/* birth certificate */
	function myFunction2() {
		var checkBox = document.getElementById("birth");
		var text = document.getElementById("birth_certi");
		if (checkBox.checked == true) {
			text.style.display = "block";
		} else {
			text.style.display = "none";
		}
	}

	/* transfer certificate */
	function myFunction3() {
		var checkBox = document.getElementById("transfer");
		var text = document.getElementById("transfer_certi");
		if (checkBox.checked == true) {
			text.style.display = "block";
		} else {
			text.style.display = "none";
		}
	}

	/* caste certificate */
	function myFunction4() {
		var checkBox = document.getElementById("caste");
		var text = document.getElementById("caste_certi");
		if (checkBox.checked == true) {
			text.style.display = "block";
		} else {
			text.style.display = "none";
		}
	}

	/* migration certificate */
	function myFunction5() {
		var checkBox = document.getElementById("migration");
		var text = document.getElementById("migration_certi");
		if (checkBox.checked == true) {
			text.style.display = "block";
		} else {
			text.style.display = "none";
		}
	}

	/* affidavit certificate */
	function myFunction6() {
		var checkBox = document.getElementById("affidavit");
		var text = document.getElementById("affidavit_certi");
		if (checkBox.checked == true) {
			text.style.display = "block";
		} else {
			text.style.display = "none";
		}
	}
</script>

<script type="text/javascript">
function country_change()
{
    var country = $("#country").val();
   
    $.ajax({
		type: "POST",
		
		url: "${pageContext.request.contextPath}/Admin/Universal/getStateDetailByCountryId.jsp",
		data: "country_id="+country,
		cache: false,
		success: function(response)
        {
            $("#state").html(response);
        }
    });
}
function state_change()
{
    var state = $("#state").val();
	
	$.ajax({
		type: "POST",
		url: "${pageContext.request.contextPath}/Admin/Universal/getCityDetailsByStateId.jsp",
		data: "state_id="+state,
		cache: false,
		success: function(response)
        {
            $("#city").html(response);
        }
    });
}
</script>

