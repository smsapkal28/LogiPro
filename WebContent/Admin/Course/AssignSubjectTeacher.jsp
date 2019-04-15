<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="../images/subject.png" width="35" height="35" /> Assign
					Subject To Teacher
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img src="../images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Course MGT</a></li>
					<li><a href="#"> Assign Subject To Teacher</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">| Assign Subject To Teacher</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>

							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form class="form-horizontal form-label-left input_mask">
							<div class="form-group">
								<label for="fullname"
									class="control-label col-md-2 col-sm-2 col-xs-12">Select
									Department: <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span>
								</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" required>
										<option value="">Select..</option>
										<option value="scho">Scholastic</option>
										<option value="co">Co-Scholastic</option>
										<option value="dis">Discipline</option>
									</select>
								</diV>
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="fullname">Select Teacher: <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" required>
										<option value="">Select..</option>
										<option value="scho">Scholastic</option>
										<option value="co">Co-Scholastic</option>
										<option value="dis">Discipline</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="fullname">Select Course: <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" required>
										<option value="">Select..</option>
										<option value="scho">Scholastic</option>
										<option value="co">Co-Scholastic</option>
										<option value="dis">Discipline</option>
									</select>
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="fullname">Select Batch: <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" required>
										<option value="">Select..</option>
										<option value="scho">Scholastic</option>
										<option value="co">Co-Scholastic</option>
										<option value="dis">Discipline</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="fullname">Select Section: <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" required>
										<option value="">Select..</option>
										<option value="scho">Scholastic</option>
										<option value="co">Co-Scholastic</option>
										<option value="dis">Discipline</option>
									</select>
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="fullname">Assessment Model: <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" required>
										<option value="">Select..</option>
										<option value="scho">Scholastic</option>
										<option value="co">Co-Scholastic</option>
										<option value="dis">Discipline</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="fullname">Select Subject: <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" required>
										<option value="">Select..</option>
										<option value="gen">General</option>
										<option value="add">Additional</option>
										<option value="opt">Optional</option>
									</select>
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right"
								style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">|</li>Assign Subject List
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="btn-group pull-left" role="group" aria-label="...">
						<button type="button" class="btn btn-info">Copy</button>
						<button type="button" class="btn btn-info">CSV</button>
						<button type="button" class="btn btn-info">PDF</button>
						<button type="button" class="btn btn-info">Print</button>
					</div>
					<button type="button" class="btn btn-danger pull-right">
						<li class="fa fa-file-excel-o fa-1x"></li> Export to Excel
					</button>
					<div class="clearfix"></div>
					<br />
					<div class="clearfix"></div>
					<div class="x_content">
						<table id="datatable" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Sr.no</th>
									<th>Employee Name</th>
									<th>Course Name</th>
									<th>Batch Name</th>
									<th>Section Name</th>
									<th>Subject Name</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Tiger Nixon</td>
									<td>System Architect</td>
									<td>Edinburgh</td>
									<td>61</td>
									<td>2011/04/25</td>
									<td>$320,800</td>
									<td><button type="button" class="btn btn-sm btn-info">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>
								<tr>
									<td>Garrett Winters</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>63</td>
									<td>2011/07/25</td>
									<td>$170,750</td>
									<td><button type="button" class="btn btn-sm btn-info">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>
								<tr>
									<td>Ashton Cox</td>
									<td>Junior Technical Author</td>
									<td>San Francisco</td>
									<td>66</td>
									<td>2009/01/12</td>
									<td>$86,000</td>
									<td><button type="button" class="btn btn-sm btn-info">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>
								<tr>
									<td>Cedric Kelly</td>
									<td>Senior Javascript Developer</td>
									<td>Edinburgh</td>
									<td>22</td>
									<td>2012/03/29</td>
									<td>$433,060</td>
									<td><button type="button" class="btn btn-sm btn-info">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>
								<tr>
									<td>Airi Satou</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>33</td>
									<td>2008/11/28</td>
									<td>$162,700</td>
									<td><button type="button" class="btn btn-sm btn-info">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>
								<tr>
									<td>Brielle Williamson</td>
									<td>Integration Specialist</td>
									<td>New York</td>
									<td>61</td>
									<td>2012/12/02</td>
									<td>$372,000</td>
									<td><button type="button" class="btn btn-sm btn-info">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />