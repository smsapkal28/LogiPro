
<%@page import="com.entity.fee.FeeCategoryEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/classroom.png"
						width="35" height="35" /> Create Fee Category
				</h3>
			</div>
			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Fees</li>
					<li class="active">Add Fee Category</li>
				</ol>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Add Fee Heading</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="row">
							<form id="demo-form"
								action="${pageContext.request.contextPath }/FeeController"
								method="post">
									<input type='hidden' name="action" value="addFeeCategory" />
								<div class="col-md-12 col-sm-12 col-xs-12">

									<div class="form-group row">
										<div class="col-md-5">
											<label class="control-label" for="feeCatName">Fee
												Category Name <span class="required"
												style="color: red; font-size: 17px;"><b>*</b></span>
											</label> <input type="text" id="feeCatName" class="form-control"
												name="feeCatName" required />
										</div>

										<div class="col-md-5">
											<label class="control-label" for="feeCatCode">Fee
												Category Code <span class="required"
												style="color: red; font-size: 17px;"><b>*</b></span>
											</label> <input type="text" id="feeCatCode" class="form-control"
												name="feeCatCode" required />
										</div>

										<div class="col-md-2">
											<label class="control-label" for="feerefundable">Refundable
												 <span class="required"
												style="color: red; font-size: 17px;"><b>*</b></span>
											</label>
											
												<div class="">
													<label> <input type="checkbox" class="js-switch"
														value="YES" name="feerefundable" />YES
													</label>
												</div>
											
										</div>

									</div>
								<!-- 	<div class="form-group row">
										<div class="col-md-12">
											<label class="control-label" for="frequency">Select
												Frequency <span class="required"
												style="color: red; font-size: 17px;"><b>*</b></span>
											</label>
											<div class="form-group row" style="margin-top: 32px;">



												<div class="col-md-2">
													<div class="">
														<label> <input type="checkbox" class="js-switch"
															value="fsfsfsf" name="frequency" />gdfgd
														</label>
													</div>
												</div>


											</div>
										</div>
									</div> -->


								</div>
								<button type="submit" name="feeCategory" value="addCategory"
									class="btn btn-info pull-left" style="border-radius: 0px;">Submit</button>

							</form>



						</div>



						<br />
					</div>
				</div>
			</div>




			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							<li class="fa fa-reorder"></li> Fee Heading List
						</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="table-responsive" style="overflow-x: auto;">
							<table id="fee_category"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>Sr.No.</th>
										<th>Fee Category Name</th>
										<th>Fee Category Code</th>
										<th>Fee Refundable</th>

										<th>Manage</th>
									</tr>
								</thead>
								<tbody>
									<%
										List<FeeCategoryEntity> list = (List<FeeCategoryEntity>) request.getAttribute("feeCategoryList");
										int count = 0;
										for (FeeCategoryEntity fc : list) {
											count++;
									%>
									<tr>
										<td><%=count%></td>
										<td><%=fc.getFeeCatName()%></td>
										<td><%=fc.getFeeCatCode()%></td>
										<td><%= fc.getFeeRefundable() %></td>
										<td><a href="#"><span
												class="glyphicon glyphicon-pencil" aria-hidden="true"
												style="color: #096BCD; font-size: 17px;"></span></a> <a href="#"><span
												class="glyphicon glyphicon-remove" aria-hidden="true"
												style="color: #CD0927; font-size: 17px;"></span></a></td>

									</tr>

									<%
										}
									%>
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
<!-- /page content -->

<jsp:include page="../Footer.jsp" />
<script src="../../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-datetimepicker -->
<script
	src="../../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script>
	$('#myDatepicker').datetimepicker();

	$('#myDatepicker1').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker5').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker8').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker10').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	/*  $('#myDatepicker3').datetimepicker({
	     format: 'hh:mm A'
	 }); */

	$('#myDatepicker4').datetimepicker({
		ignoreReadonly : true,
		allowInputToggle : true
	});

	$('#datetimepicker6').datetimepicker();

	$('#datetimepicker7').datetimepicker({
		useCurrent : false
	});

	$("#datetimepicker6").on("dp.change", function(e) {
		$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
	});

	$("#datetimepicker7").on("dp.change", function(e) {
		$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
	});
</script>

<script type="text/javascript">
	$('#official').DataTable({
		dom : 'Bfrtip',
		buttons : [ {
			extend : "copy",
			className : "btn-md btn-success"
		}, {
			extend : "csv",
			className : "btn-md btn-success"
		}, {
			extend : "excel",
			className : "btn-md btn-success"
		}, {
			extend : "pdfHtml5",
			className : "btn-md btn-success"
		}, {
			extend : "print",
			className : "btn-md btn-success"
		}, ]
	});

	$('#fee_category').DataTable({
		dom : 'Bfrtip',
		buttons : [ {
			extend : "copy",
			className : "btn-md btn-success"
		}, {
			extend : "csv",
			className : "btn-md btn-success"
		}, {
			extend : "excel",
			className : "btn-md btn-success"
		}, {
			extend : "pdfHtml5",
			className : "btn-md btn-success"
		}, {
			extend : "print",
			className : "btn-md btn-success"
		}, ]
	});
</script>