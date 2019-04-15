<jsp:include page="../../Header.jsp" />
<jsp:include page="AdminUserheader.jsp" />
<style>
#theme-default .widget_top {
	height: 30px;
}

.h_icon {
	top: 5px;
}

.widget_top h6 {
	line-height: 30px;
}
</style>
<%
	String message = (String) request.getAttribute("message");
	System.out.println("message==" + message);
%>
<script>
        <%if (message == null || message.equals("") || message.equals("null")) {
			} else {%>
                var mes="<%=message%>";
	alert(mes);
<%}%>
	
</script>

<script>
	$(document).ready(function() {

		$('form').submit(function() {
			$('#submitbtn').attr('disabled', 'disabled');
		});
		// $('#myForm').ajaxForm(options);
		// $.blockUI({ message: $('#loginForm') });

	});
</script>
<script>
	function chkUser() {
		var firstname = document.getElementById("firstname").value;
		var lastname = document.getElementById("lastname").value;
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		var conpassword = document.getElementById("conpassword").value;
		var dob = document.getElementById("dob").value;
		var mobileno = document.getElementById("mobileno").value;
		var emailid = document.getElementById("emailid").value;
		var status = document.getElementById("status").value;

		if (firstname == "") {
			alert("Please Enter First Name...!");
			document.forms[0].firstname.focus();
			return false;
		}
		if (lastname == "") {
			alert("Please Enter Last Name...!");
			document.forms[0].lastname.focus();
			return false;
		}
		if (username == "") {
			alert("Please Enter User Name..!");
			document.forms[0].username.focus();
			return false;
		}
		if (password == "") {
			alert("Please Enter Password...!");
			document.forms[0].password.focus();
			return false;
		}
		if (conpassword == "") {
			alert("Please Enter confirm Password..!");
			document.forms[0].conpassword.focus();
			return false;
		}
		if (dob == "") {
			alert("Please Enter DOB..!");
			document.forms[0].dob.focus();
			return false;
		}
		if (mobileno == "") {
			alert("Please Enter Mobile...!");
			document.forms[0].mobileno.focus();
			return false;
		}
		if (emailid == "") {
			alert("Please Enter Email ID...!");
			document.forms[0].emailid.focus();
			return false;
		}
		if (status == "Select") {
			alert("Please Select Status...!");
			document.forms[0].status.focus();
			return false;
		}
		
		if (password != conpassword) {
			alert("Password is not matching...!");
			return false;
		}
		return true;
	}
</script>
<div id="content">
	<div class="grid_container">
		<div class="grid_12 full_block">
			<div class="widget_wrap">
				<div class="breadCrumbHolder module">
					<div id="breadCrumb0" class="breadCrumb module white_lin">
						<ul>
							<li><a href="#">Home</a></li>
							<li>ADMIN</li>
							<li>Admin</li>
							<li>New User</li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>New User</h6>
				</div>
				<div class="widget_content">
					<form id="myForm"
						action="${pageContext.request.contextPath }/NewUserRegisteController"
						method="post" class="form_container">
						<input type='hidden' name="action" value="NewUserRegister" />
						<ul>
							<li>
								<fieldset>
									<legend>User Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">First Name<span
															class="req">*</span></label> <input name="firstname"
															id="firstname" type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Last NAme<span
															class="req">*</span></label> <input name="lastname" id="lastname"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Username<span
															class="req">*</span></label> <input name="username" id="username"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Password<span
															class="req">*</span></label> <input name="password" id="password"
															type="password" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Confirm Password<span
															class="req">*</span></label> <input name="conpassword"
															id="conpassword" type="password" tabindex="1" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Date Of Birth<span
															class="req">*</span></label> <input name="dob" id="dob"
															type="text" class="datepicker" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Mobile No.<span
															class="req">*</span></label> <input name="mobileno" id="mobileno"
															type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Email Id<span
															class="req">*</span></label> <input name="emailid" id="emailid"
															type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Status<span
															class="req">*</span></label> <select style="width: 150px;"
															class="chzn-select-deselect" id="status" name="status"
															tabindex="16">
															<option value="" selected>Select</option>
															<option value="ACTIVE">ACTIVE</option>
															<option value="INACTIVE">INACTIVE</option>
														</select>

													</div>
													<div class="form_grid_2">
														<label class="field_title">location<span
															class="req">*</span></label> <select style="width: 150px;"
															class="chzn-select-deselect" id="location" name="location"
															tabindex="16">
															<option value="Mumbai" selected>Mumbai</option>
															<option value="Delhi">Delhi</option>
															<option value="Ahmedabad">Ahmedabad</option>
														</select>

													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
									</ul>
								</fieldset>
							</li>
							<div class="form_grid_12" style="text-align: center;">
								<div class="form_input">
									<button type="submit" class="btn_small btn_blue" name="Master"
										value="NewUserRegister" onclick="return chkUser();">
										<span>Submit</span>
									</button>
									<button type="reset" class="btn_small btn_blue">
										<span>Reset</span>
									</button>
								</div>
							</div>
							</li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
	<span class="clear"></span>
</div>
<jsp:include page="../../Footer.jsp" />