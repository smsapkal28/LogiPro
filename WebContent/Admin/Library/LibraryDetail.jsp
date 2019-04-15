
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.entity.hostel.HostelCategoryEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/subject.png"
						width="35" height="35" /> Add Library
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Library</a></li>
					<li><a href="#"> Library Details</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Library Detail</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/LibraryController"
							method="post">
							<input type='hidden' name="action" value="AddLibrary"
								class="form-control" />
							<div class="form-group">

								<label class="control-label col-md-3 col-sm-3 col-xs-12">Library
									Name <span class="required" style="color: red">*</span>
								</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" name="library_Name" class="form-control"
										placeholder="Library Name">
								</div>
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Library
									Code <span class="required" style="color: red">*</span>
								</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" name="library_Code" class="form-control"
										placeholder="Library Code">
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
							<li class="fa fa-reorder">Library List</li>
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
									<th>Library Code</th>
									<th>Library Name</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<LibraryDetailEntity> libraryList = (List<LibraryDetailEntity>) request.getAttribute("libraryList");
									int count = 0;
									for (LibraryDetailEntity library : libraryList) {
								%>
								<tr>
									<td><%=++count%></td>
									<td><%=library.getLib_Code()%></td>
									<td><%=library.getLib_Name()%></td>
									<td><button type="button" class="btn btn-info myBtnUpdate"
											value="<%=library.getLib_Id()%>">
											<li class="fa fa-pencil fa-1x"></li>
										</button>

										<form class="form-horizontal form-label-left input_mask"
											action="${pageContext.request.contextPath }/LibraryController"
											method="post">
											<input type='hidden' name="action" value="DeleteLibrary"
												class="form-control" /> <input type='hidden' name="lib_Id"
												value="<%=library.getLib_Id()%>" class="form-control" />
											<button type="submit" class="btn btn-danger ">
												<li class="fa fa-trash-o fa-1x"></li>
											</button>
										</form></td>
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

			<!-- The Modal Starts-->
			<div id="myUpdateModal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
					<span class="close">&times; </span>
					<h3 style=" text-align: center;">Enter New Value If You Want To Change Old One</h3>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12" id="updateForm">
							

						</div>
					</div>

				</div>

			</div>
			<!-- The Modal Ends-->

		</div>
	</div>
</div>



<!-- /page content -->

<jsp:include page="../Footer.jsp" />

<!-- Model Js Function Start Here -->

<script>
	$(document).ready(function() {
		// Get the modal
		var modal = document.getElementById('myUpdateModal');

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 

		$(".myBtnUpdate").click(function() {
			
			var lib_Id = $(this).val();
			$
			.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/Admin/Library/Update/UpdateLibrary.jsp",
				data : "lib_Id=" + lib_Id,
				cache : false,
				success : function(response) {
					$("#updateForm").html(response);

				}
			});

			modal.style.display = "block";
		});

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

	});
</script>

<!-- Model Js Function End Here -->



