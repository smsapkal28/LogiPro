
<%@page import="com.entity.subject.SubjectCategoryEntity"%>
<%@page import="com.entity.course.SubjectCategoryModel"%>
<%@page import="java.util.List"%>

<jsp:include page="../admin-index.jsp" />


<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title" style="background-color: #F4F2F1;">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/create.png"
						width="35" height="35" /> Create Subject Category
				</h3>
			</div>
			<div class="title_right">
				<ol class="breadcrumb pull-right" style="background-color: #C9E3ED;">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Course MGT</a></li>
					<li><a href="#"> Subject Category</a></li>
				</ol>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Subject Category Details</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>


					<div class="x_content">
						<br />
						<form id="demo-form" data-parsley-validate
							action="${pageContext.request.contextPath }/SubjectController"
							method="post">
							<input type='hidden' name="action" value="AddSubjectCategory" />
							<div class="form-group row">
								<div class="col-md-12">
									<label for="s_catogry" class="control-label">Subject
										Category Name <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="subCatogry" class="form-control"
										name="subCatogry" required />
								</diV>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="s_code">Subject
										Category Code <span class="required"
										style="color: #cc0000; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="subCode" class="form-control"
										name="subCode" required />
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label class="control-label" for="des">Description <span
										class="required" style="color: #cc0000; font-size: 17px;"><b>*</b></span></label>
									<input type="text" id="subDesc" class="form-control"
										name="subDesc" required />
								</div>
							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-left"
								name="course" value="addsubjectcategory"
								style="border-radius: 0px;">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Subject Category List</li>
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
										<th>Subject Category Name</th>
										<th>Subject Category Code</th>
										<th>Description</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<%  
                         List <SubjectCategoryEntity> subCatList = (List<SubjectCategoryEntity>) request.getAttribute("subjectCategoryRecord");
                         
                       	int count=0;
                       	for(SubjectCategoryEntity scm : subCatList ){
                       			
                       			
                       		count++;

                      			
                      			
                      
                      %>

										<th scope="row"><%= count %></th>
										<td><%= scm.getSubjectCatName()%></td>
										<td><%= scm.getSubjectCatCode()%></td>
										<td><%= scm.getSubjectCatDes()%></td>
										<td><button type="button" class="btn btn-success">
												<li class="fa fa-pencil"></li>
											</button>
											<button type="button" class="btn btn-danger ">
												<li class="fa fa-trash-o "></li>
											</button></td>
									</tr>
									<% } %>
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