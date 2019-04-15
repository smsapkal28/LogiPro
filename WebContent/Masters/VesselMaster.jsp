<jsp:include page="../Header.jsp" />
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
	function chkVessel() {
		var vesselname = document.getElementById("vesselname").value;
		var linename = document.getElementById("linename").value;
		var igmvcode = document.getElementById("igmvcode").value;
		var imocode = document.getElementById("imocode").value;
		var status = document.getElementById("status").value;

		if (vesselname == "") {
			alert("Please Enter Vessel Name...!");
			document.forms[0].vesselname.focus();
			return false;
		}
		if (linename == "") {
			alert("Please Enter Line Name...!");
			document.forms[0].linename.focus();
			return false;
		}
		if (igmvcode == "") {
			alert("Please Enter IGM Code..!");
			document.forms[0].igmvcode.focus();
			return false;
		}
		if (imocode == "") {
			alert("Please Enter IMO CODE...!");
			document.forms[0].imocode.focus();
			return false;
		}
		
		if (status == "Select") {
			alert("Please Select Status...!");
			document.forms[0].status.focus();
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
							<li><a href="#">Master</a></li>
							<li><a href="#">Vessel</a></li>
							<li><a href="#">Add Vessel</a></li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>New Vessel</h6>
				</div>
				<div class="widget_content">
					<form id="myForm"
						action="${pageContext.request.contextPath }/VesselController"
						method="post" class="form_container">
						<input type='hidden' name="action" value="AddVessel" />
						<ul>
							<li>
								<fieldset>
									<legend>Vessel Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Vessel Name<span
															class="req">*</span></label> <input name="vesselname"
															id="vesselname" type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">line NAme<span
															class="req">*</span></label> <input name="linename" id="linename"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">IGM Vessel Code<span
															class="req">*</span></label> <input name="igmvcode" id="igmvcode"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">IMOCODE of vessel<span
															class="req">*</span></label> <input name="imocode" id="imocode"
															type="text" tabindex="1" />
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
										value="AddVessel" onclick="return chkVessel();">
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
<jsp:include page="../Footer.jsp" />