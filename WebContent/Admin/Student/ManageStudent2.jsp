<jsp:include page="../admin-index.jsp" />
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="container">
					<div class="page-title" style="background-color: #F4F2F1;">
						<div class="title_left">
							<h3>
								<img src="../images/registration.png" width="35" height="35" />|
								Manage Student
							</h3>
						</div>

						<div class="title_right">
							<ol class="breadcrumb pull-right">
								<li><a href="#"><img src="../images/d1.png" width="25"
										height="25" /> Dashboard</a></li>
								<li class="active">Student</li>
								<li class="active">Manage Student</li>
							</ol>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Manage Student</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<br />
								<form class="form-horizontal form-label-left">
									<h5
										style="text-transform: Capatilize; color: #566573; font-weight: bold;">Student
										All Class Data</h5>
									<hr
										style="background-color: #D7BDE2; width: 100%; height: 2px;">
									<div class="clearfix"></div>
									<br />
									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12"
											for="stuname">Search By<span class="required"
											style="color: red">*</span></label>
										<div class="col-md-3">
											<select id="" class="form-control" required>
												<option value="">Reg No</option>
												<option value="press">Student Name</option>
												<option value="net">Father Name</option>
												<option value="mouth">Roll No</option>
											</select>
										</div>
										<div class="col-md-3">
											<input type="text" class="form-control" name="father_name"
												value="" id="fname" placeholder="">
										</div>
										<div class="col-md-4">
											<button type="submit" class="btn btn-info"
												style="border-radius: 0px; margin-left: 50px;">Search</button>
											<button type="button" class="btn btn-danger pull-right">
												<li class="fa fa-file-excel-o fa-1x"></li> Export All Class
												Data
											</button>
										</div>
									</div>
									<br />
									<h5
										style="text-transform: capatilize; color: #566573; font-weight: bold;">Student
										Section Wise Data</h5>
									<hr
										style="background-color: #D7BDE2; width: 100%; height: 2px;">
									<div class="clearfix"></div>
									<br />
									<div class="form-group">
										<label class="control-label col-md-1 col-sm-1 col-xs-12"
											for="mname">Course<span class="required"
											style="color: red">*</span></label>
										<div class="col-md-3">
											<select id="" class="form-control" required>
												<option value="">Select</option>

											</select>
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12"
											for="mobile">Batch-Section<span class="required"
											style="color: red">*</span></label>
										<div class="col-md-3">
											<select id="" class="form-control" required>
												<option value="">Select</option>

											</select>
										</div>
										<div class="col-md-3">
											<button type="submit" class="btn btn-info "
												style="border-radius: 0px; margin-left: 10px;">List
												All</button>
											<button type="button" class="btn btn-danger pull-right">
												<li class="fa fa-file-excel-o fa-1x"></li> Export Section
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="clearfix"></div>
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
