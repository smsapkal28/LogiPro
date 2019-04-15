

<%@page import="com.entity.fee.FeeFrequencyEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/plus.png"
						width="35" height="35" /> Frequency Details
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Fees</li>
					<li class="active">Frequency</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">| Add Frequency</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/FeeController"
							method="post">
							<input type='hidden' name="action" value="addFeeFrequency" />
							<div class="form-group row">
								<div class="col-md-6">
									<label class="control-label" for="frequencyName">Fee
										Frequency Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="frequencyName" class="form-control"
										name="frequencyName" required />
								</div>

								<div class="col-md-6">
									<label class="control-label" for="frequencyCode">Fee
										Frequency Code <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="frequencyCode" class="form-control"
										name="frequencyCode" required />
								</div>

								
								<div class="col-md-6">
									<label class="control-label" for="noOfInstallement">Fee
										Frequency No <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="noOfInstallement" class="form-control"
										name="noOfInstallement" required />
								</div>
								
								<div class="col-md-6">
								
								<br />
								<br />
									<button type="submit" name="freq" value="addFrequency"
										class="btn btn-info pull-right" style="border-radius: 0px;">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">|</li> Frequency List
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">

						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Sr.No.</th>
									<th>Frequency Name</th>
									<th>Frequency Code</th>
									<th>No Of Installement</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<FeeFrequencyEntity> feeFrequencyList = (List<FeeFrequencyEntity>) request
											.getAttribute("feeFrequencyList");
									int count = 0;
									for (FeeFrequencyEntity f : feeFrequencyList) {
								%>
								<tr>

									<td><%=++count%></td>
									<td><%=f.getFeqName()%></td>
									<td><%=f.getFeqCode()%></td>
									<td><%=f.getNoOfInstallement()%></td>
									<td><button type="button" class="btn btn-info">
											<li class="fa fa-pencil fa-1x"></li>
										</button>
										<button type="button" class="btn btn-danger ">
											<li class="fa fa-trash-o fa-1x"></li>
										</button></td>
								</tr>
								<%
									}
								%>
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

