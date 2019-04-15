<%@page import="com.entity.academicsetting.AcademicYearEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>

<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/academc.png"
						width="35" height="35" /> | Create Academic Year
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Academic Setting</a></li>
					<li><a href="#"> Create Academic</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">| Add Academic Year</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/AcademicYearController"
							method="post">
							<input type='hidden' name="action" value="AddAcademicYear"
								class="form-control" />
							<div class="form-group">
								<label for="academicYear"
									class="control-label col-md-2 col-sm-2 col-xs-12">Academic
									Year Name <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span>
								</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" id="academicYear" class="form-control"
										name="academicYear" required />
								</diV>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="startMonth">Start Month <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="startMonth" name="startMonth" class="form-control"
										required>
										<option value="0">Choose..</option>
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>

									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="startYear">Start Year <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<!-- 	                      <div class='input-group date' id='myDatepicker2'> -->
									<input type='text' class="form-control" id="startYear"
										name="startYear" required />
									<!--                             <span class="input-group-addon"> -->
									<!--                                <span class="glyphicon glyphicon-calendar"></span> -->
									<!--                             </span> -->
									<!--                         </div> -->
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="endMonth">End Month <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="endMonth" name="endMonth" class="form-control"
										required>
										<option value="0">Choose..</option>
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>

									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="endYear">End Year <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<!-- 	                      <DIV CLASS='INPUT-GROUP DATE' ID='MYDATEPICKER3'> -->
									<input type='text' id="endYear" name="endYear"
										class="form-control" />
									<!--                             <span class="input-group-addon"> -->
									<!--                                <span class="glyphicon glyphicon-calendar"></span> -->
									<!--                             </span> -->
									<!--                         </div> -->
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"
									for="status">Status <span class="required"
									style="color: red; font-size: 17px;"><b>*</b></span></label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<select id="" class="form-control" id="status" name="status"
										required>
										<option value="">Choose..</option>
										<option value="1">Active</option>
										<option value="0">Inactive</option>

									</select>
								</div>
							</div>

							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right" name="add"
								value="add">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Academic List</li>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Sr.No.</th>
										<th>Academic Year Name</th>
										<th>Start Month</th>
										<th>Start Year</th>
										<th>End Month</th>
										<th>End Year</th>
										<th>Status</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<%  
											 List<AcademicYearEntity> list = (List<AcademicYearEntity>) request.getAttribute("record");
                      						int count=0;
											 for (AcademicYearEntity academicYearDao  : list) {
												count++;
												 %>
									<tr>
										<th scope="row"><%= count %></th>
										<td><%= academicYearDao.getAcademicYearName() %></td>
										<td><%= academicYearDao.getStartMonth() %></td>
										<td><%= academicYearDao.getStartYear() %></td>
										<td><%= academicYearDao.getEndMonth() %></td>
										<td><%= academicYearDao.getEndYear() %></td>
										<td><%= academicYearDao.getStatus() %></td>
										<td><button type="button" class="btn btn-info">
												<li class="fa fa-pencil"></li>
											</button>
											<button type="button" class="btn btn-danger ">
												<li class="fa fa-trash-o "></li>
											</button></td>
									</tr>
									<% }
                      		
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



