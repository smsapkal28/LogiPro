
<%@page import="com.entity.transport.TransportDestinationDetailEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/bus.png"
						width="35" height="35" /> Add Destination
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Transport</a></li>
					<li><a href="#"> Add Destination</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Add Destination</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form
							action="${pageContext.request.contextPath }/TransportController"
							method="post">
							<input type='hidden' name="action"
								value="addTransportDestination" class="form-control" />
							<div class="form-group row">
								<div class="col-md-6">
									<label class="control-label" for="dest_Name">Destination
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="dest_Name" class="form-control"
										name="dest_Name" required />
								</div>



								<div class="col-md-6">
									<label for="dest_Code" class="control-label">Destination
										Code <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" class="form-control" name="dest_Code"
										id="dest_Code" />
								</div>


								<div class="col-md-6">
									<label for="dest_Fare" class="control-label">Destination
										Fare <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" class="form-control" name="dest_Fare"
										id="dest_Fare" />
								</div>



								<div class="clearfix"></div>
								<br />
								<button type="submit" class="btn btn-info pull-right"
									style="border-radius: 0px;">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Transport Destination List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">

						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Sr.No.</th>
									<th>Destination Code</th>
									<th>Destination Name</th>
									<th>Destination Fare</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<TransportDestinationDetailEntity> transportDestinationDetailList = (List<TransportDestinationDetailEntity>) request
											.getAttribute("transportDestinationDetailList");
									int count = 0;
									for (TransportDestinationDetailEntity entity : transportDestinationDetailList) {
								%>
								<tr>
									<td><%=++count%></td>
									<td><%=entity.getDest_Code()%></td>
									<td><%=entity.getDest_Name()%></td>
									<td><%=entity.getDest_Fare()%></td>
									<td><li class="fa fa-pencil fa-1x"></li>
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

<!-- tab start -->
<script>
	function openCity(evt, cityName) {

		var i, tabcontent, tablinks;
		tabcontent = document
				.getElementsByClassName("col-md-12 col-sm-12 col-xs-12");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
	document.getElementById("defaultOpen").click();
</script>
