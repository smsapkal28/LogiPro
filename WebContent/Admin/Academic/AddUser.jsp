<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.academicsetting.UserEntity"%>
<%@page import="com.entity.academicsetting.RoleEntity"%>
<%@page import="com.entity.academicsetting.DepartementTypeEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<!-- <i class="fa fa-plus">  </i> -->
					<img src="${pageContext.request.contextPath}/Images/user.png"
						width="35" height="35" />| Add User
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Academic</li>
					<li class="active">AddUser</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Add New User</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form id="demo-form" data-parsley-validate
							action="${pageContext.request.contextPath }/UserController"
							method="post">
							<input type='hidden' name="action" value="AddUser" />
							<div class="form-group row">
								<div class="col-md-3">
									<label for="empId">Employee Id :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <input
										type="text" id="empId" class="form-control" name="empId"
										data-parsley-trigger="change" required />
								</div>
								<div class="col-md-3">
									<label for="userId">User Id :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <input
										type="text" id="userId" class="form-control" name="userId"
										required />
								</div>
								<div class="col-md-3">
									<label for="password">Password :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <input
										type="password" id="password" class="form-control"
										name="password" required />
								</div>
								<div class="col-sm-3">
									<label for="CnfPassword">Confirm Password :<span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span></label>
									<input type="password" id="CnfPassword" class="form-control"
										name="CnfPassword" required />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-3">
									<label for="">Department <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>:
									</label> <select id="" class="form-control" required name="dept">
										<option value="0" selected="true" disabled>--Select--</option>
										<%	 List<DepartementTypeEntity> list1 = (List<DepartementTypeEntity>) request.getAttribute("deptRecord");
                					
											 for (DepartementTypeEntity deptType  : list1) {
												
												 %>

										<option value=<%=deptType.getId() %>><%= deptType.getDeptType() %></option>

										<%} %>
									</select>
								</div>
								<div class="col-sm-3">
									<label for="">User Role :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <select
										id="" class="form-control" name="role" required>
										<option value="0" selected="true" disabled>--Select--</option>

										<%
									List<RoleEntity> list2 = (List<RoleEntity>) request.getAttribute("roleRecord");
								
									for (RoleEntity role : list2) {
										
								%>
										<option value=<%=role.getId() %>><%= role.getRole() %></option>


										<%} %>




									</select>
								</div>

								<div class="col-md-3">
									<label for="status">Status :<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span></label> <select
										id="status" class="form-control" name="status" required>
										<option value="0" selected="true" disabled>--Select--</option>
										<option value="1">Active</option>
										<option value="0">Disactive</option>
									</select>
								</div>
							</div>

							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right" name="user"
								value="addUser" style="border-radius: 0px;"">Save</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder"></li> User List
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Sr.No.</th>
										<th>Employee Name</th>

										<th>User Id</th>
										<th>Department</th>
										<th>Role</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

									<%
								ArrayList<ArrayList<String>> userValue2 = (ArrayList<ArrayList<String>> ) request.getAttribute("userRecord");
									int count = 0;
									for (ArrayList<String> userValue1 : userValue2) {
										count++;
								%>

									<tr>
										<td><%= count %></td>
										<td><%= userValue1.get(1) %></td>
										<td><%= userValue1.get(2) %></td>
										<td><%= userValue1.get(3) %></td>
										<td><%= userValue1.get(4) %></td>
										<td><%= userValue1.get(6) %></td>
										<td><button type="button" class="btn btn-info">
												<li class="fa fa-pencil fa-1x"></li>
											</button>
											<button type="button" class="btn btn-danger ">
												<li class="fa fa-trash-o fa-1x"></li>
											</button></td>
									</tr>



									<%} %>
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

<!-- Initialize datetimepicker -->
<script>
		$('#myDatepicker').datetimepicker();

		$('#myDatepicker2').datetimepicker({
			format : 'DD.MM.YYYY'
		});

		$('#myDatepicker3').datetimepicker({
			format : 'hh:mm A'
		});

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
