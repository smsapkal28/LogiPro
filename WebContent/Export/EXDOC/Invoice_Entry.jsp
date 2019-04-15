<jsp:include page="../../Header.jsp" />
<jsp:include page="Exdocheader.jsp" />
<div id="content">
	<div class="grid_container">
		<div class="grid_12 full_block">
			<div class="widget_wrap">
				<div class="breadCrumbHolder module">
					<div id="breadCrumb0" class="breadCrumb module white_lin">
						<ul>
							<li><a href="#">Home</a></li>
							<li>Documentation</li>
							<li>Documentation</li>
							<li>Invoice</li>
							<li><a href="#">New Invoice</a></li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>New Invoice</h6>
					<div class="widget_class" style="padding: 5px 5px;">
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
					<div class="widget_class"
						style="font-weight: bold; padding: 5px 5px;">
						<ul style="margin: 10px 0px;">
							<li><label class="field_title" style="color: red;">Send
									Mail :</label></li>
						</ul>
					</div>
					<div class="widget_class" style="padding: 5px 5px;">
						<ul>
							<li><select style="width: 150px;"
								class="chzn-select-deselect" tabindex="16">
									<option value="new" selected>New Reference</option>
							</select></li>
						</ul>
					</div>
					<div class="widget_class"
						style="font-weight: bold; padding: 5px 5px;">
						<ul style="margin: 10px 0px;">
							<li><label class="field_title" style="color: red;">Account
									Effect :</label></li>
						</ul>
					</div>
				</div>
				<div class="widget_content">
					<form action="#" method="post" class="form_container">
						<ul>
							<li>
								<fieldset>
									<legend>Invoice Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Vertical<span
															class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;"
																class="chzn-select-deselect" tabindex="16">
																<option value="" selected>Select</option>
																<option value="SEA">SEA</option>
																<option value="AIR">AIR</option>
															</select>
														</div>
													</div>
													<div class="form_grid_2">
														<label class="field_title">Export / Import<span
															class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;"
																class="chzn-select-deselect" tabindex="16">
																<option value="" selected>Select</option>
																<option value="EXPORT">EXPORT</option>
																<option value="IMPORT">IMPORT</option>
															</select>
														</div>
													</div>
													<div class="form_grid_2">
														<label class="field_title">Inv. Type<span
															class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;"
																class="chzn-select-deselect" tabindex="16">
																<option value="" selected>Select</option>
																<option value="LOCAL">LOCAL</option>
															</select>
														</div>
													</div>
													<div class="form_grid_2">
														<label class="field_title">Category<span
															class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;"
																class="chzn-select-deselect" tabindex="16">
																<option value="" selected>Select</option>
																<option value="MBL">MBL</option>
																<option value="HBL">HBL</option>
																<option value="CONT">CONTAINER</option>
																<option value="ON ACCOUNT">ON ACCOUNT</option>
															</select>
														</div>
													</div>
													<div class="form_grid_2">
														<label class="field_title">Taxable<span
															class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;"
																class="chzn-select-deselect" tabindex="16">
																<option value="" selected>Select</option>
																<option value="YES">YES</option>
																<option value="NO">NO</option>
															</select>
														</div>
													</div>
													<div class="form_grid_2">
														<label class="field_title">Voucher Date<span
															class="req">*</span></label> <input name="field3" type="text"
															class="datepicker" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_4 alpha">
														<label class="field_title">Party Name <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Weight (Kg) <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Volume (CBM) <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">20</label> <input name="field2"
															type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">40<span class="req">*</span></label>
														<input name="field2" type="text" />
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
										<h6>Billing Party Details</h6>
									</div>
									<div class="widget_content">
										<ul>
											<li>
												<fieldset>
													<legend>Party Details</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">Party Name</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_1">
																<label class="field_title">P Group</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">GST No.</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">State Name</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_1">
																<label class="field_title">S code</label> <input
																	name="field2" type="text" />
															</div>
															<div class="form_grid_1">
																<label class="field_title">Sez</label> <input
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
											</li>
										</ul>

									</div>
								</div>
							</li>
							<li>
								<fieldset>
									<legend>Reference And Rebate Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Invoice Reference No. <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Account Refrenece No.<span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Total Rebate ($) <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Total Rebate (INR) <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Total Adjusted (INR) <span
															class="req">*</span></label> <input name="field2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Total Balance (INR) <span
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
										<h6>Charges Details</h6>
									</div>
									<div class="widget_content">
										<ul>
											<li>
												<table class="wtbl_list">
													<thead>
														<tr>
															<th width=22%>Charge Name</th>
															<th width=10%>Unit Type</th>
															<th width=10%>No. Of Units</th>
															<th width=10%>Rate</th>
															<th width=8%>Currency</th>
															<th width=8%>Ex Rate</th>
															<th width=10%>P/C</th>
															<th width=10%>Rebate Amt.</th>
															<th width=10%>Total Amt.</th>
															<th width=2%></th>
														</tr>
													</thead>
													<tbody>
														<tr class="tr_even">
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</li>
											<li>
												<fieldset>
													<legend>Invoice Amount Details</legend>
													<ul>
														<li>
															<div class="form_grid_12 multiline">
																<div class="form_input">
																	<div class="form_grid_1 alpha">
																		<label class="field_title">Ex Rate <span
																			class="req">*</span>
																		</label> <input name="field2" type="text" />
																	</div>
																	<div class="form_grid_2">
																		<label class="field_title">Total Amount<span
																			class="req">*</span>
																		</label> <input name="field2" type="text" />
																	</div>
																	<div class="form_grid_1">
																		<label class="field_title">SGST<span
																			class="req">*</span></label> <input name="field2" type="text" />
																	</div>
																	<div class="form_grid_1">
																		<label class="field_title">CGST<span
																			class="req">*</span>
																		</label> <input name="field2" type="text" />
																	</div>
																	<div class="form_grid_1">
																		<label class="field_title">IGST<span
																			class="req">*</span>
																		</label> <input name="field2" type="text" />
																	</div>
																	<div class="form_grid_2">
																		<label class="field_title">Total GST <span
																			class="req">*</span>
																		</label> <input name="field2" type="text" />
																	</div>
																	<div class="form_grid_2">
																		<label class="field_title">Total Invoice
																			Amount <span class="req">*</span>
																		</label> <input name="field2" type="text" />
																	</div>
																	<span class="clear"></span>
																</div>
															</div>
														</li>
													</ul>
												</fieldset>
											</li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<fieldset>
									<legend>Other Details</legend>
									<ul>
										<li>
											<div class="form_grid_12">
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