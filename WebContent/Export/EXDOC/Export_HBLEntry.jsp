<%@page import="com.ex.documentation.entity.HouseBLEntity"%>
<jsp:include page="../../Header.jsp" />
<jsp:include page="Exdocheader.jsp" />
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
<script>
$(document).ready(function() {
   
     $('form').submit(function(){
    $('#submitbtn').attr('disabled', 'disabled');
    });
   // $('#myForm').ajaxForm(options);
     $.blockUI({ message: $('#loginForm') });

});

</script>

<div id="content">
	<div class="grid_container">
		<div class="grid_12 full_block">
			<div class="widget_wrap">
				<div class="breadCrumbHolder module">
					<div id="breadCrumb0" class="breadCrumb module white_lin">
						<ul>
							<li><a href="#">Home</a></li>
							<li>Sea Export</li>
							<li>Documentation</li>
							<li>House BL</li>
							<li><a href="#">House BL List</a></li>
							<li>New HBL</li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>New HBL</h6>
				</div>
				<div class="widget_content">
					<form id ="myForm"
						action="${pageContext.request.contextPath }/HouseBLController"
						method="post" class="form_container">
						<input type='hidden' name="action" value="HouseBLEntry" />
						<div id="loginForm" style="display:none">
						<div class="form_grid_12 multiline">
						<div class="form_input">
						<div class="form_grid_2 alpha">
                        <label class="field_title">BL No. <span class="req">*</span></label> 
                        <input name="hblno" id="hblno" type="text" tabindex="1" />
                        </div>
             			<div class="submit" align="center"><input type="submit"  onclick="return ajax_request();" value="Next"/></div>
             
                </div></div>
        		</div>
						<ul>
							<li>
								<fieldset>
									<legend>HBL Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">BL No. <span
															class="req">*</span></label> <input name="hblno" id="hblno"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">BL Date <span
															class="req">*</span></label> <input name="field2" type="text"
															class="datepicker" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Customer Name<span
															class="req">*</span></label> <input name="name" id="name"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Agent Name<span
															class="req">*</span></label> <input name="name" id="name"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Delivery Agent Name<span
															class="req">*</span></label> <input name="field3" type="text" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Vessel <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Voyage No. <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">ETA POL <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">ETD POL <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">ETA POD <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">BL Release Date <span
															class="req">*</span></label> <input name="field2" type="text"
															class="datepicker" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_4 alpha">
														<label class="field_title">Door Delivery Address<span
															class="req">*</span></label>
														<textarea name="filed06" cols="50" rows="1" tabindex="5"
															style="width: 100%;"></textarea>
													</div>
													<div class="form_grid_2">
														<label class="field_title">Freight Amount <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">No. of Original <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Freight Payable <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Mode Of Transport <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
									</ul>
								</fieldset>
							</li>
							<li>
								<div class="widget_wrapc collapsible_widget">
									<div class="widget_top active">
										<span class="h_icon"></span>
										<h6>Party Details</h6>
									</div>
									<div class="widget_content">
										<ul>
											<li>
												<fieldset>
													<legend>Shipper Details</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="filed06" cols="50" rows="1" tabindex="5"
																	style="width: 100%;"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
												<fieldset>
													<legend>Consignee Details</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name></label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="filed06" cols="50" rows="1" tabindex="5"
																	style="width: 100%;"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
												<fieldset>
													<legend>Notify Party 1</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="filed06" cols="50" rows="1" tabindex="5"
																	style="width: 100%;"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
												<fieldset>
													<legend>Notify Party 2</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="filed06" cols="50" rows="1" tabindex="5"
																	style="width: 100%;"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
											<li>
										</ul>

									</div>
								</div>
							</li>
							<li>
								<fieldset>
									<legend>Port Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_3 alpha">
														<label class="field_title">Place Of Receipt <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Port of Loading <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Port of Destination <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Final Port of
															Destination<span class="req">*</span>
														</label> <input name="field2" type="text" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_3 alpha">
														<label class="field_title">Place Of Receipt
															(Print) <span class="req">*</span>
														</label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Port of Loading (Print)<span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Port of Destination
															(Print)<span class="req">*</span>
														</label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Final Port of
															Destination (Print)<span class="req">*</span>
														</label> <input name="field2" type="text" />
													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
									</ul>
								</fieldset>
							</li>
							<li>
								<fieldset>
									<legend>Package Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Package Type <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">No. of Packages <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">No of Pallets <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Volume (CBM)<span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Gross Weight (KGS)<span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Net Weight (KGS) <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
										<li>
											<fieldset>
												<legend>Shipping Bill Details</legend>
												<ul>
													<li>
														<table class="wtbl_list">
															<thead>
																<tr>
																	<th>SBill No.</th>
																	<th>SBill Date</th>
																	<th>No Of Packages</th>
																	<th>CBM</th>
																	<th>Weight</th>
																</tr>
															</thead>
															<tbody>
																<tr class="tr_even">
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</li>
												</ul>
											</fieldset>
										</li>
									</ul>
								</fieldset>
							</li>
							<li>
								<fieldset>
									<legend>Container Details</legend>
									<ul>
										<li>
											<table class="wtbl_list">
												<thead>
													<tr>
														<th>Container No.<span class="req">*</span></th>
														<th>Container Type<span class="req">*</span></th>
														<th>Custom Seal No</th>
														<th>Agent Seal No</th>
														<th>Volume(CBM)</th>
														<th>Packages</th>
														<th>Pkg Type</th>
														<th>Gross Wt.</th>
														<th>Net Wt.</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
													<tr class="tr_even">
														<td><div class="form_grid_12 alpha">
																<input name="hblcontainerno" id="hblcontainerno"
																	type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontainertype" id="mblcontainertype"
																	type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontcustomsealno"
																	id="mblcontcustomsealno" type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontagentsealno" id="mblcontagentsealno"
																	type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontagentsealno" id="mblcontagentsealno"
																	type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontagentsealno" id="mblcontagentsealno"
																	type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontagentsealno" id="mblcontagentsealno"
																	type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontagentsealno" id="mblcontagentsealno"
																	type="text" tabindex="" />
															</div></td>
														<td><div class="form_grid_12 alpha">
																<input name="mblcontagentsealno" id="mblcontagentsealno"
																	type="text" tabindex="" />
															</div></td>
														<td></td>
													</tr>
												</tbody>
											</table>
										</li>
									</ul>
								</fieldset>
							</li>
							<li>
								<fieldset>
									<legend>Other Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_4 alpha">
														<label class="field_title">Marks</label>
														<textarea name="filed06" cols="50" rows="2" tabindex="5"
															style="width: 100%;"></textarea>
													</div>
													<div class="form_grid_4">
														<label class="field_title">Description</label>
														<textarea name="filed06" cols="50" rows="2" tabindex="5"
															style="width: 100%;"></textarea>
													</div>
													<div class="form_grid_4 alpha">
														<label class="field_title">Remarks</label>
														<textarea name="filed06" cols="50" rows="2" tabindex="5"
															style="width: 100%;"></textarea>
													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
										<li>
											<fieldset>
												<legend>Shipper Invoices</legend>
												<ul>
													<li>
														<div class="form_grid_6">
															<table class="wtbl_list">
																<thead>
																	<tr>
																		<th>Shipper Invoice No.</th>
																		<th>Invoice Date</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="tr_even">
																		<td></td>
																		<td></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</li>
												</ul>
											</fieldset>
										</li>
									</ul>
								</fieldset>
							</li>
						</ul>
						<ul>
							<li>
								<div class="form_grid_12" style="text-align: center;">
									<div class="form_input">
										<button type="submit" class="btn_small btn_blue" name="Master"
											value="HouseBLEntry">
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