<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="../images/classroom.png" width="35" height="35" /> |
					Subject Allocation
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img src="../images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Course MGT</li>
					<li class="active">Subject Allocation</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>| Subject Allocation</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form id="demo-form" data-parsley-validate>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="fname">Department <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<select id="" class="form-control" required>
										<option value="">Select Department</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="lname">Employee Name
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true">
										<optgroup disabled="disabled" label="disabled">
											<option>Fruits</option>
										</optgroup>
										<option>Apple</option>
										<option>Orange</option>
										<option>Corn</option>
										<option>Carrot</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="fname">Course <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<select id="" class="form-control" required>
										<option value="">Select</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="lname">Batch <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<select id="" class="form-control" required>
										<option value="">Select</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="lname">Subject Name <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<select id="" class="form-control" required>
										<option value="">Select</option>
									</select>
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-left">Submit</button>
						</form>
						<br />
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							<li class="fa fa-reorder">|</li> Subject Allocation List
						</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Sr.No.</th>
										<th>Department</th>
										<th>Employee Name</th>
										<th>Course</th>
										<th>Batch</th>
										<th>Subject Name</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td><button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#myModal">
												<li class="fa fa-pencil fa-1x"></li>
											</button>
											<button type="button" class="btn btn-danger ">
												<li class="fa fa-trash-o fa-1x"></li>
											</button></td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td><button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#myModal">
												<li class="fa fa-pencil fa-1x"></li>
											</button>
											<button type="button" class="btn btn-danger ">
												<li class="fa fa-trash-o fa-1x"></li>
											</button></td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td><button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#myModal">
												<li class="fa fa-pencil fa-1x"></li>
											</button>
											<button type="button" class="btn btn-danger ">
												<li class="fa fa-trash-o fa-1x"></li>
											</button></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="clearfix"></div>
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
