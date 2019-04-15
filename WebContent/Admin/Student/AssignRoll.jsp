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
											<label class="control-label for="stuname">Select
												Batch<span class="required" style="color: red">*</span>
											</label> <select id="" class="form-control" required>
												<option value="">Select</option>
											</select>
										</div>
										<div class="col-md-3">
											<label class="control-label for="stuname">Select
												Section<span class="required" style="color: red">*</span>
											</label> <select id="" class="form-control" required>
												<option value="">Select</option>
											</select>
										</div>
										<div class="col-md-3">
											<button type="submit" class="btn btn-info pull-left"
												style="border-radius: 0px; margin-top: 23px;">Assign
												Roll No</button>
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
								<h2>Assign Roll No</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">

								<table class="table table-bordered">
									<thead>
										<tr>
											<th>SL No</th>
											<th style="width: 200px;">Student Admission No</th>
											<th>Student Name</th>
											<th>Course</th>
											<th>Section</th>
											<th style="width: 220px;">Student Roll No</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
											<td>@mdo</td>
											<td><input type="text" class="form-control"
												name="mother_name" value="" id="mname" style="width: 200px;"></td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
											<td>@mdo</td>
											<td><input type="text" class="form-control"
												name="mother_name" value="" id="mname" style="width: 200px;"></td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
											<td>@mdo</td>
											<td><input type="text" class="form-control"
												name="mother_name" value="" id="mname" style="width: 200px;"></td>
										</tr>
									</tbody>
								</table>
								<button type="submit" class="btn btn-info pull-left"
									style="border-radius: 0px; margin-top: 23px;">Save
									Roll No</button>
								<br />
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
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