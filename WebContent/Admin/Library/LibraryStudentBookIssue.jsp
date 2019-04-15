

<%@page import="com.entity.library.LibraryBookIssuedDetailEntity"%>
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%@page import="com.entity.library.LibraryStudentRegistrationEntity"%>

<%@page import="java.util.List"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/subject.png"
						width="35" height="35" /> Add Book Issue Detail
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Library</a></li>
					<li><a href="#"> Book Issued Details</a></li>
				</ol>
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Book Issued Detail</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<%
						List<LibraryStudentRegistrationEntity> libraryStudentList = (List<LibraryStudentRegistrationEntity>) request
								.getAttribute("libraryStudentList");

						List<LibraryBookDetailEntity> libraryBookList = (List<LibraryBookDetailEntity>) request
								.getAttribute("libraryBookList");
						List<LibraryDetailEntity> libraryList = (List<LibraryDetailEntity>) request.getAttribute("libraryList");
						List<LibraryBookIssuedDetailEntity> listBookIssued = (List<LibraryBookIssuedDetailEntity>) request
								.getAttribute("listBookIssued");
						
					%>

					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/LibraryController"
							method="post">
							<input type='hidden' name="action"
								value="AddLibraryBookIssuedDetail" class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="stud_Id">Student Name
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="stud_Id">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											for (LibraryStudentRegistrationEntity libraryStudent : libraryStudentList) {
										%>
										<option value="<%=libraryStudent.getLib_Stud_Id()%>"><%=libraryStudent.getStud_Name()%></option>
										<%
											}
										%>
									</select>

								</div>
								<div class="col-md-5">
									<label class="control-label" for="lib_Id">Library Name
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="lib_Id" class="selectpicker form-control stud_Id"
										data-hide-disabled="true" data-live-search="true"
										name="lib_Id" onchange="lib_Change()">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											for (LibraryDetailEntity library : libraryList) {
										%>
										<option value="<%=library.getLib_Id()%>"><%=library.getLib_Name() + "/" + library.getLib_Code()%></option>
										<%
											}
										%>
									</select>

								</div>

								<div class="col-md-5">
									<label class="control-label" for="book_Id">Book Name
										Name <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="book_Id"
										class="selectpicker form-control book_Name"
										data-hide-disabled="true" data-live-search="true"
										name="book_Id">


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
							<li class="fa fa-reorder">Hostel Category List</li>
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
									<th>Student Name</th>
									<th>Library Name</th>
									<th>Book/Edition/Author/Publisher</th>
									<th>Issue Date</th>
									<th>Return Date</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									int count = 0;
									for (LibraryBookIssuedDetailEntity libraryBook : listBookIssued) {
								%>
								<tr>
									<td><%=++count%></td>



									<td>
										<%
											for (LibraryStudentRegistrationEntity libraryStudent : libraryStudentList) {
													if (libraryBook.getStud_Id() == libraryStudent.getLib_Stud_Id())
														out.print(libraryStudent.getStud_Name());

											}
											%>
									</td>
									<td>
										<%
											for (LibraryDetailEntity library : libraryList) {
													if (library.getLib_Id() == libraryBook.getLib_Id())
														out.print(library.getLib_Name());
												}
										%>
									</td>
									<td>
										<%
											for (LibraryBookDetailEntity entity : libraryBookList) {
													if (entity.getLib_Book_Id() == libraryBook.getBook_Id())
														out.print(entity.getBook_Name() + " / " + entity.getBook_Edition() + " / "
																+ entity.getBook_Aurthor() + " / " + entity.getBook_Publisher());
												}
										%>
									</td>
									<td>
										<%= libraryBook.getIssue_Date()%>
									</td>
									<td><%= libraryBook.getReturn_Date() %></td>

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

<script>
	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'DD/MM/YYYY'
	});
	$("#datetimepicker6").on("dp.change", function(e) {
		$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
	});

	$("#datetimepicker7").on("dp.change", function(e) {
		$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
	});

	function lib_Change() {
		var lib_Id = $("#lib_Id").val();
		alert(lib_Id);
		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/Admin/Universal/getBookDetailBasedOnLibrary.jsp",
					data : "lib_Id=" + lib_Id,
					cache : false,
					success : function(response) {
						$("#book_Id").html(response);
						$('.selectpicker').selectpicker('refresh');
					}
				});
	}
</script>
