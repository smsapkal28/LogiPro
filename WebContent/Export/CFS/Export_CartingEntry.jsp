<jsp:include page="../../Header.jsp" />
<jsp:include page="Excfsheader.jsp" />
<div id="content">
	<div class="grid_container">
		<div class="grid_12 full_block">
			<div class="widget_wrap">
				<div class="breadCrumbHolder module">
					<div id="breadCrumb0" class="breadCrumb module white_lin">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">CFS / Operation</a></li>
							<li><a href="#">Carting</a></li>
							<li><a href="#">New Carting</a></li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>New Carting Entry</h6>
					<div class="widget_class">
						<ul>
							<li>
								<div class="form_input field switch">
									<label class="cb-enable"><span>Yes</span></label> <label
										class="cb-disable selected"><span>No</span></label> <span
										class="clear"></span>
								</div>
							</li>
						</ul>
					</div>
					<div class="widget_class" style="font-weight: bold;">
						<ul style="margin: 10px 0px;">
							<li><label class="field_title" style="color: red;">Send
									Mail :</label></li>
						</ul>
					</div>
					<div class="widget_class">
						<ul>
							<li>
								<div class="form_input field switch">
									<label class="cb-enable"><span>Yes</span></label> <label
										class="cb-disable selected"><span>No</span></label> <span
										class="clear"></span>
								</div>
							</li>
						</ul>
					</div>
					<div class="widget_class" style="font-weight: bold;">
						<ul style="margin: 10px 0px;">
							<li><label class="field_title" style="color: red;">HAZ
									:</label></li>
						</ul>
					</div>
					<div class="widget_class">
						<ul>
							<li>
								<div class="form_input field switch">
									<label class="cb-enable"><span>Yes</span></label> <label
										class="cb-disable selected"><span>No</span></label> <span
										class="clear"></span>
								</div>
							</li>
						</ul>
					</div>
					<div class="widget_class" style="font-weight: bold;">
						<ul style="margin: 10px 0px;">
							<li><label class="field_title" style="color: red;">Only
									Stuffing :</label></li>
						</ul>
					</div>
					<div class="widget_class">
						<ul>
							<li>
								<div class="form_input field switch">
									<label class="cb-enable"><span>Yes</span></label> <label
										class="cb-disable selected"><span>No</span></label> <span
										class="clear"></span>
								</div>
							</li>
						</ul>
					</div>
					<div class="widget_class" style="font-weight: bold;">
						<ul style="margin: 10px 0px;">
							<li><label class="field_title" style="color: red;">Back
									To Town :</label></li>
						</ul>
					</div>
				</div>
				<div class="widget_content">
					<form action="#" method="post" class="form_container">
						<ul>
							<li>
								<fieldset>
									<legend>Carting Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Carted Date <span
															class="req">*</span></label> <input name="name" id="name"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Shipping Bill No. <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Shipping Bill Date <span
															class="req">*</span></label> <input name="name" id="name"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Shipper <span
															class="req">*</span></label> <input name="field3" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Consignee <span
															class="req">*</span></label> <input name="field3" type="text" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_4 alpha">
														<label class="field_title">Customer Name <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Customer Id</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">CHA</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Ready Date</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Commodity<span
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
								<fieldset>
									<legend>Port Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">POL <span class="req">*</span></label>
														<input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">POD <span class="req">*</span></label>
														<input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">FPD <span class="req">*</span></label>
														<input name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Place Of Receipt</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Routing <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Cargo Type<span
															class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;"
																class="chzn-select-deselect" tabindex="16">
																<option value="" selected>Select</option>
																<option value="Direct">LCL</option>
																<option value="Forwarder">FCL</option>
																<option value="Forwarder">CO-LOAD</option>
															</select>
														</div>
													</div>
													<div class="form_grid_2">
														<label class="field_title">Co-load From</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Co-load To</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">HS Code</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Shed Location</label> <input
															name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Invoice Amount</label> <input
															name="field2" type="text" />
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
														<label class="field_title">Packages <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Package Type <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">In Pallets <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">CBM <span class="req">*</span></label>
														<input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Gross Weight <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Net Weight <span
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
								<fieldset>
									<legend>Other Details</legend>
									<ul>
										<li>
											<div class="form_grid_6">
												<label class="field_title">Remark's</label>
												<div class="form_input">
													<textarea name="filed06" cols="50" rows="2" tabindex="5"
														style="width: 100%;"></textarea>
												</div>
											</div>
										</li>
									</ul>
								</fieldset>
							</li>
						</ul>
						<ul>
							<li>
								<div class="form_grid_12" style="text-align: center;">
									<div class="form_input">
										<button type="submit" class="btn_small btn_blue">
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