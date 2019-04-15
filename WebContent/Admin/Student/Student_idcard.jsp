<jsp:include page="../admin-index.jsp" />
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="container">
					<div class="page-title" style="background-color: #F4F2F1;">
						<div class="title_left">
							<h3>
								<img src="../images/identification.png" width="35" height="35" />|
								Generate Student Id Card
							</h3>
						</div>
						<div class="title_right">
							<ol class="breadcrumb pull-right">
								<li><a href="#"><img src="../images/d1.png" width="25"
										height="25" /> Dashboard</a></li>
								<li class="active">Student</li>
								<li class="active">Student Id Card</li>
							</ol>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Student Id Card</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form id="demo-form" data-parsley-validate>
									<div class="form-group row">
										<div class="col-md-3">
											<label class="control-label for="stuname">Select
												Course<span class="required" style="color: red">*</span>
											</label> <select id="" class="form-control" required>
												<option value="">Select</option>
											</select>
										</div>
										<div class="col-md-3">
											<label class="control-label for="stuname">Batch-Section<span
												class="required" style="color: red">*</span></label> <select id=""
												class="form-control" required>
												<option value="">Select</option>
											</select>
										</div>
										<div class="col-md-3">
											<label class="control-label for="stuname">Id Type<span
												class="required" style="color: red">*</span></label> <select id=""
												class="form-control" required>
												<option value="">Select</option>
												<option value="press">Horizontal Id Type</option>
												<option value="net">Vertical Id Type</option>
											</select>
										</div>
										<div class="col-md-3">
											<button type="submit" class="btn btn-info pull-left"
												style="border-radius: 0px; margin-top: 34px;">Generate
												Id Card</button>
										</div>
									</div>
									<br />
								</form>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									<img src="../images/idcard.png" width="35" height="35" /> Print
									Student Id Card
								</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form class="">
									<div class="clearfix"></div>
									<button type="button" class="btn btn-danger pull-left"
										style="border-radius: 0px;">
										<i class="fa fa-print"> </i>&nbsp;Print&nbsp;
									</button>
									<input type="text" class="form-control  pull-right"
										style="width: 230px;">
								</form>
								<br>

								<div class="clearfix"></div>
								<div class="table-responsive">
									<table class="table table-striped jambo_table bulk_action">
										<thead>
											<tr class="headings">
												<th><input type="checkbox" id="check-all" class="flat">
												</th>
												<th class="column-title">SL NO</th>
												<th class="column-title">Reg No</th>
												<th class="column-title">Student Name</th>
												<th class="column-title">Father Name</th>
												<th class="column-title">Course</th>
												<th class="column-title">Section</th>
												<th class="column-title">Roll No </tdh>
												<th class="column-title no-link last"><span
													class="nobr">Action</span></th>
												<th class="bulk-actions" colspan="7"><a class="antoo"
													style="color: #fff; font-weight: 500;">Bulk Actions ( <span
														class="action-cnt"> </span> ) <i
														class="fa fa-chevron-down"></i></a></th>
											</tr>
										</thead>

										<tbody>
											<tr class="even pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 23, 2014</td>
												<td class=" ">121000210 <i
													class="success fa fa-long-arrow-up"></i></td>
												<td class=" ">John Blank L</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$7.45</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="odd pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 23, 2014</td>
												<td class=" ">121000208 <i
													class="success fa fa-long-arrow-up"></i>
												</td>
												<td class=" ">John Blank L</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$741.20</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="even pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 24, 2014</td>
												<td class=" ">121000203 <i
													class="success fa fa-long-arrow-up"></i>
												</td>
												<td class=" ">Mike Smith</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$432.26</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="odd pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 24, 2014</td>
												<td class=" ">121000204</td>
												<td class=" ">Mike Smith</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$333.21</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="even pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 24, 2014</td>
												<td class=" ">121000210</td>
												<td class=" ">John Blank L</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$7.45</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="odd pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 26, 2014</td>
												<td class=" ">121000208 <i
													class="error fa fa-long-arrow-down"></i>
												</td>
												<td class=" ">John Blank L</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$741.20</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="even pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 26, 2014</td>
												<td class=" ">121000203</td>
												<td class=" ">Mike Smith</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$432.26</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="odd pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 26, 2014</td>
												<td class=" ">121000204</td>
												<td class=" ">Mike Smith</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$333.21</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>

											<tr class="even pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 27, 2014</td>
												<td class=" ">121000210</td>
												<td class=" ">John Blank L</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$7.45</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
											<tr class="odd pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records"></td>
												<td class=" ">1</td>
												<td class=" ">May 28, 2014</td>
												<td class=" ">121000208</td>
												<td class=" ">John Blank L</td>
												<td class=" ">Paid</td>
												<td class="a-right a-right ">$741.20</td>
												<td></td>
												<td class=" last"><a href="#"><li
														class="fa fa-pencil"
														style="color: #FB0742; font-size: 20px;"></li></a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- /page content -->

		
<jsp:include page="../Footer.jsp" />

	<script>
  document.addEventListener('DOMContentLoaded', function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>

</body>
</html>