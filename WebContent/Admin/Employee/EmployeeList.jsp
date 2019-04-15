<%@page import="com.entity.employee.EmployeeDetailsEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<!-- <div class="title_left">
                <h3><img src="../images/subject.png" width="35" height="35"/>  Employee List</h3>
              </div> -->

			<div class="title_right">
				<ol class="breadcrumb pull-left">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#">Employee MGT</a></li>
					<li><a href="#">Employee List</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>



		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title" style="background-color: #1ABB9C;">
					<h2 style="color: #fff;">Employee List</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						<!--                       <li><a class="close-link"><i class="fa fa-close"></i></a> -->
						<!--                       </li> -->
					</ul>
					<div class="clearfix"></div>
				</div>

				<div class="clearfix"></div>
				<div class="x_content">
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
					<table id="" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Sr.no</th>
								<th>Employee Code</th>
								<th>Employee Name</th>
								<th>Department</th>
								<th>Designation</th>
								<th>Qualification</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Current Address</th>
								<th>PermanentAddress</th>
								<th>Action</th>

							</tr>
						</thead>
						<tbody>
							<%
								List<EmployeeDetailsEntity> listEmp = (List<EmployeeDetailsEntity>) request.getAttribute("empRecord");
								int count = 0;
								for (EmployeeDetailsEntity emp : listEmp) {
							%>
							<tr>
								<td><%=++count%></td>
								<td><%=emp.getEmpCode()%></td>
								<td><%=emp.getfName() + " " + emp.getmName() + " " + emp.getlName()%></td>
								<td><%=emp.getEmpjdm().getEmpDept()%></td>
								<td><%=emp.getEmpjdm().getEmpDesg()%></td>
								<td><%=emp.getEmpjdm().getEmpqualification()%></td>
								<td><%=emp.getEmail()%></td>
								<td><%=emp.getContact() + " / " + emp.getaContact()%></td>
								<td><%=emp.getcAddress()%></td>
								<td><%=emp.getpAddress()%></td>
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
<!-- /page content -->

<jsp:include page="../Footer.jsp" />