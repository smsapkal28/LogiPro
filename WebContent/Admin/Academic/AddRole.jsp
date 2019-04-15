
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.entity.academicsetting.RoleEntity"%>



<%@ page import="java.util.*"%>


<jsp:include page="../admin-index.jsp" />
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/plus.png"
						width="35" height="35" /> Add Role
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li class="active">Academic</li>
					<li class="active">Role</li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">| Add Role</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>



						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/RoleController"
							method="post">
							<input type='hidden' name="action" value="AddRole" />
							<div class="form-group">


								<label class="control-label col-md-2 col-sm-2 col-xs-12">Role
									Name <span class="required" style="color: red">*</span>
								</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" name="deptRole" class="form-control"
										placeholder="Role name">
								</div>

							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" name="role" value="deptRole"
								class="btn btn-info pull-right" style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Role List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">

						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Sr.No.</th>
									<th>Role Name</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>



								<%
									List<RoleEntity> list = (List<RoleEntity>) request.getAttribute("record");
									int count = 0;
									for (RoleEntity role : list) {
										count++;
								%>



								<tr>
									<th scope="row"><%=count%></th>
									<td><%=role.getRole()%></td>

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