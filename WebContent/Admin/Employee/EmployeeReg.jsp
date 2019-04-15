<%@page import="com.entity.universal.BankNameEntity"%>
<%@page import="com.entity.universal.CountryEntity"%>
<%@page import="com.entity.academicsetting.DesignationEntity"%>
<%@page import="com.entity.academicsetting.DepartementTypeEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.List"%>



<jsp:include page="../admin-index.jsp" />



<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img
						src="${pageContext.request.contextPath}/Images/subject.png"
						width="35" height="35" /> Employee Registration
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png"
							width="25" height="25" /> Dashboard</a></li>
					<li><a href="#"> Course MGT</a></li>
					<li><a href="#"> Employee Registration</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>| Employee Registration</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br />
					<form
						action="${pageContext.request.contextPath }/EmployeeController"
						method="post" enctype="multipart/form-data">
						<input type='hidden' name="action" value="AddEmployeeDetails"
							class="form-control" />
						<h5
							style="text-transform: uppercase; color: #566573; font-weight: bold;">Employee
							Details:-</h5>
						<hr style="background-color: #D7BDE2; width: 100%; height: 1px;">
						<div class="form-group row">
							<div class="col-md-4">
								<label for="empDept" class="control-label">Department <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<select id="" class="form-control" name="empDept" required>
									<option value="0" selected="true" disabled>--Select--</option>
									<%	 List<DepartementTypeEntity> listDept = (List<DepartementTypeEntity>) request.getAttribute("deptRecord");
                					
											 for (DepartementTypeEntity deptType  : listDept) {
												
												 %>

									<option value=<%=deptType.getId() %>><%= deptType.getDeptType() %></option>

									<%} %>
								</select>
							</diV>

							<div class="col-md-4">
								<label class="control-label" for="desg">Designation <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<select id="desg" class="form-control" name="desg" required>
									<option value="0" selected="true" disabled>--Select--</option>
									<%	 List<DesignationEntity> listDes = (List<DesignationEntity>) request.getAttribute("desRecord");
                					
											 for (DesignationEntity desType  : listDes) {
												
												 %>

									<option value=<%=desType.getId() %>><%= desType.getDesigation() %></option>

									<%} %>
								</select>
							</div>

							<div class="col-md-4">
								<label class="control-label">Joining Date <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class='input-group date' id='myDatepicker2'>
									<input type='text' class="form-control" name="joinDate"
										id="joinDate" /> <span class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>
							</div>
						</div>
						<div class="form-group row">

							<div class="col-md-4">
								<label class="control-label" for="empQual">Qualification
									<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
								</label> <input type='text' class="form-control" name="empQual"
									id="empQual" />
							</div>
							<div class="col-md-4">
								<label class="control-label" for="empTExp">Total
									Experience <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span>
								</label> <input type='text' class="form-control" name="empTExp"
									id="empTExp" />
							</div>
						</div>
						<h5
							style="text-transform: uppercase; color: #566573; font-weight: bold;">Personal
							Details:-</h5>
						<hr style="background-color: #D7BDE2; width: 100%; height: 1px;">
						<div class="form-group row">
							<div class="col-md-4">
								<label class="control-label" for="fName">First Name <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<input type='text' class="form-control" name="fName" id="fName" />
							</div>
							<div class="col-md-4">
								<label class="control-label" for="mName">Middle Name <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<input type='text' class="form-control" name="mName" id="mName" />
							</div>
							<div class="col-md-4">
								<label class="control-label" for="lName">Last Name <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<input type='text' class="form-control" name="lName" id="lName" />
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-4">
								<label class="control-label" for="dob">Date Of Birth <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class='input-group date' id='myDatepicker3'>
									<input type='text' class="form-control" name="dob" id="dob" />
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>
							</div>
							<div class="col-md-4">
								<label class="control-label" for="gender">Gender <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<select id="" class="form-control" name="gender" required>
									<option value="">Please Select</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>

								</select>
							</div>
							<div class="col-md-4">
								<label class="control-label" for="empAdharNo">Aadhar
									Number <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span>
								</label> <input type="text" id="empAdharNo" class="form-control"
									name="empAdharNo" required />
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-4">
								<label class="control-label" for="empPanNo">PAN Number <span
									class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
								<input type="text" id="empPanNo" class="form-control"
									name="empPanNo" required />
							</div>


						</div>
						<div class="form-group row">
							<div class="col-md-4">
								<label class="control-label" for="" style="color: #E74C3C;"><b>Browse
										Documents</b> </label>
							</div>
						</div>
						<div
							style="border: 1px solid #E5E7E9; border-radius: 4px; padding: 10px; background-color: #E5E7E9;">
							<div class="form-group row">
								<div class="col-md-4">
									<label><input type="checkbox" id="emp_Photo" value=""
										onclick="myFunction1()"> Photo <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <input
										type="file" class="form-control" name="empPhoto" size="50"
										id="empPhoto" style="display: none" />
								</div>
								<div class="col-md-4">
									<label><input type="checkbox" id="emp_Adhar" value=""
										onclick="myFunction2()"> Aadhar Card</label> <input
										type="file" class="form-control" name="empAdhar" size="50"
										id="empAdhar" style="display: none" />

								</div>

								<div class="col-md-4">
									<label><input type="checkbox" id="panCard" value=""
										onclick="myFunction3()"> Pan Card</label> <input type="file"
										class="form-control" name="empPanCard" size="50"
										id="empPanCard" style="display: none" />

								</div>

							</div>
							<div class="form-group row">
								<div class="col-md-4">
									<label><input type="checkbox" id="emp_ExpLetter"
										value="" onclick="myFunction4()"> Experience Letter</label> <input
										type="file" class="form-control" name="empExpLetter" size="50"
										id="empExpLetter" style="display: none" />
								</div>

								<div class="col-md-4">
									<label><input type="checkbox" id="emp_Resume" value=""
										onclick="myFunction5()"> Resume <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <input
										type="file" class="form-control" name="empResume" size="50"
										id="empResume" style="display: none" />
								</div>
								<div class="col-md-4">
									<label><input type="checkbox" id="emp_Other" value=""
										onclick="myFunction6()"> Other Certificate</label> <input
										type="file" class="form-control" name="empOther" size="50"
										id="empOther" style="display: none" />
								</div>
							</div>
						</div>
						<h5
							style="text-transform: uppercase; color: #566573; font-weight: bold;">Contact
							Details:-</h5>
						<hr style="background-color: #D7BDE2; width: 100%; height: 1px;">
						<div class="form-group row">
							<div class="col-md-4">
								<label for="cAddress" class="control-label">Present
									Address <span class="required" style="color: red">*</span>
								</label>
								<textarea class="form-control" id="cAddress" name="cAddress"></textarea>
							</div>
							<div class="col-md-4">
								<label for="pAddress" class="control-label">Permanent
									Address <span class="required" style="color: red">*</span>
								</label>
								<textarea class="form-control" id="pAddress" name="pAddress"></textarea>
							</div>
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
						</div>
						<div class="form-group row">
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
							<div class="col-md-4">
								<label for="pinCode" class="control-label">PIN <span
									class="required">*</span></label> <input type="text"
									class="form-control" id="pinCode" autofocus="none"
									name="pinCode" />
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-4">
								<label for="email" class="control-label">Email Id <span
									class="required" style="color: red">*</span></label> <input
									type="email" class="form-control" id="email" autofocus="none"
									name="email" />
							</div>
							<div class="col-md-4">
								<label for="contact" class="control-label">Phone Number
									<span class="required" style="color: red">*</span>
								</label> <input type="text" class="form-control" id="contact"
									autofocus="none" name="contact" />
							</div>
							<div class="col-md-4">
								<label for="aContact" class="control-label">Mobile
									Number <span class="required" style="color: red">*</span>
								</label> <input type="text" class="form-control" id="aContact"
									autofocus="none" name="aContact" />
							</div>
						</div>
						<h5
							style="text-transform: uppercase; color: #566573; font-weight: bold;">Bank
							Details:-</h5>
						<hr style="background-color: #D7BDE2; width: 100%; height: 1px;">
						<div class="form-group row">
							<div class="col-md-4">
								<label for="empBankName" class="control-label">Bank Name
									<span class="required" style="color: red">*</span>
								</label> <select name="empBankName" id="empBankName"
									class="form-control country">
									<option value="0" selected="true" disabled>--Select--</option>
									<%	 List<BankNameEntity> bankEntities = (List<BankNameEntity>) request.getAttribute("bankRecord");
                					
											 for (BankNameEntity ce  : bankEntities) {
												
												 %>

									<option value=<%=ce.getBank_name() %>><%= ce.getBank_name() %></option>

									<%} %>
								</select>

							</div>
							<div class="col-md-4">
								<label for="empAccNo" class="control-label">Account
									Number <span class="required" style="color: red">*</span>
								</label> <input type="text" class="form-control" id="empAccNo"
									autofocus="none" name="empAccNo" />
							</div>
							<div class="col-md-4">
								<label for="empAccHName" class="control-label">Account
									Holder Name <span class="required" style="color: red">*</span>
								</label> <input type="text" class="form-control" id="empAccHName"
									autofocus="none" name="empAccHName" />
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-4">
								<label for="empIFSCCode" class="control-label">IFSC Code
									<span class="required" style="color: red">*</span>
								</label> <input type="text" class="form-control" id="empIFSCCode"
									autofocus="none" name="empIFSCCode" />
							</div>


							<div class="col-md-4">
								<label for="empBranchName" class="control-label">Branch
									Name <span class="required" style="color: red">*</span>
								</label> <input type="text" class="form-control" id="empBranchName"
									autofocus="none" name="empBranchName" />
							</div>

						</div>
						<div class="clearfix"></div>
						<br />
						<hr style="background-color: #D7BDE2; width: 100%; height: 1px;">
						<button type="submit" class="btn btn-info pull-right"
							name="empbutton" value="empreg" style="border-radius: 0px;">Submit</button>
					</form>
					<br />
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />

<!-- Initialize datetimepicker -->
<script>
    $('#myDatepicker').datetimepicker();
    
    $('#myDatepicker2').datetimepicker({
        format: 'DD/MM/YYYY'
    });

    $('#myDatepicker3').datetimepicker({
        format: 'DD/MM/YYYY'
    });
   /*  $('#myDatepicker3').datetimepicker({
        format: 'hh:mm A'
    }); */
    
    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
        allowInputToggle: true
    });

    $('#datetimepicker6').datetimepicker();
    
    $('#datetimepicker7').datetimepicker({
        useCurrent: false
    });
    
    $("#datetimepicker6").on("dp.change", function(e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    
    $("#datetimepicker7").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
</script>


<script type="text/javascript">
  
/* mark sheet certificate */
function myFunction1() {
    var checkBox = document.getElementById("emp_Photo");
    var text = document.getElementById("empPhoto");
    if (checkBox.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }
}

    
function myFunction2() {
    var checkBox = document.getElementById("emp_Adhar");
    var text = document.getElementById("empAdhar");
    if (checkBox.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }
}

/* transfer certificate */
function myFunction3() {
    var checkBox = document.getElementById("panCard");
    var text = document.getElementById("empPanCard");
    if (checkBox.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }
}

/* caste certificate */
function myFunction4() {
    var checkBox = document.getElementById("emp_ExpLetter");
    var text = document.getElementById("empExpLetter");
    if (checkBox.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }
}

/* migration certificate */
function myFunction5() {
    var checkBox = document.getElementById("emp_Resume");
    var text = document.getElementById("empResume");
    if (checkBox.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }
}

/* affidavit certificate */
function myFunction6() {
    var checkBox = document.getElementById("emp_Other");
    var text = document.getElementById("empOther");
    if (checkBox.checked == true){
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

