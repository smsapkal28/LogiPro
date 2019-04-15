
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
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
						width="35" height="35" /> Add Book Detail
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Library</a></li>
					<li><a href="#"> Library Book Details</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Book Detail</h2>
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
							<input type='hidden' name="action" value="AddLibraryBook"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="lib_Id">Library <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="lib_Id">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<LibraryDetailEntity> libraryList = (List<LibraryDetailEntity>) request.getAttribute("libraryList");

											for (LibraryDetailEntity library : libraryList) {
										%>
										<option value="<%=library.getLib_Id()%>"><%=library.getLib_Name()%></option>
										<%
											}
										%>
									</select>

								</div>


								<div class="col-md-5">
									<label class="control-label" for="book_Name">Book Name
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Name" class="form-control"
										name="book_Name" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Edition">Book
										Edition<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Edition" class="form-control"
										name="book_Edition" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Aurthor">Book
										Aurthor <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Aurthor" class="form-control"
										name="book_Aurthor" required />

								</div>


								<div class="col-md-5">
									<label class="control-label" for="book_Publisher">Book
										Publisher <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Publisher" class="form-control"
										name="book_Publisher" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Price">Price : <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Price" class="form-control"
										name="book_Price" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Quantity">Quantity
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Quantity" class="form-control"
										name="book_Quantity" required />

								</div>

								<div class="col-md-5">
									<label for="purchase_Date" class="control-label">Purchase
										Date <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label>
									<div class='input-group date' id='myDatepicker2'>
										<input type='text' id="purchase_Date" class="form-control"
											name="purchase_Date" placeholder="Select Date" /> <span
											class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</diV>



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
									<th>Library Name</th>
									<th>Book Name</th>
									<th>Book Edition</th>
									<th>Book Aurthor</th>
									<th>Book Publisher</th>
									<th>Book Price</th>
									<th>Book Quantity</th>
									<th>Book Issued</th>
									<th>Book Not Returned</th>
									<th>Book Damaged</th>
									<th>Book Remaining</th>
									<th>Book Purchase</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<LibraryBookDetailEntity> libraryBookList = (List<LibraryBookDetailEntity>) request
											.getAttribute("libraryBookList");
									int count = 0;
									for (LibraryBookDetailEntity lib_Book : libraryBookList) {
								%>
								<tr>
									<td><%=++count%></td>
									<td>
										<%
											for (LibraryDetailEntity library : libraryList) {
													if (library.getLib_Id() == lib_Book.getLib_Id())
														out.print(library.getLib_Name());
												}
										%>
									</td>
									<td><%=lib_Book.getBook_Name()%></td>
									<td><%=lib_Book.getBook_Edition()%></td>
									<td><%=lib_Book.getBook_Aurthor()%></td>
									<td><%=lib_Book.getBook_Publisher()%></td>
									<td><%=lib_Book.getBook_Price()%></td>
									<td><%=lib_Book.getBook_Quantity()%></td>
									<td><%=lib_Book.getBook_Issued()%></td>
									<td><%=lib_Book.getBook_Not_Returned()%></td>
									<td><%=lib_Book.getBook_Damaged()%></td>
									<td><%=lib_Book.getBook_Quantity() - lib_Book.getBook_Issued() - lib_Book.getBook_Damaged()
						- lib_Book.getBook_Not_Returned()%></td>
									<td><%=lib_Book.getBook_Purchase_Date()%></td>

									<td><button type="button" class="btn btn-info myBtnUpdate"
											value="<%=lib_Book.getLib_Book_Id()%>">
											<li class="fa fa-pencil fa-1x"></li>
										</button>
										<form class="form-horizontal form-label-left input_mask"
											action="${pageContext.request.contextPath }/LibraryController"
											method="post">
											<input type='hidden' name="action" value="DeleteLibraryBook"
												class="form-control" /> <input type='hidden' name="book_Id"
												value="<%=lib_Book.getLib_Book_Id()%>" class="form-control" />
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
					<h3 style="text-align: center;">Enter New Value If You Want To
						Change Old One</h3>
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

<script>
	$('#myDatepicker').datetimepicker();

	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
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

<!-- Model Js Function Start Here -->

<script>
	$(document)
			.ready(
					function() {
						// Get the modal
						var modal = document.getElementById('myUpdateModal');

						// Get the <span> element that closes the modal
						var span = document.getElementsByClassName("close")[0];

						// When the user clicks the button, open the modal 

						$(".myBtnUpdate")
								.click(
										function() {
											$("#myDatepicker2").toggle();
											var book_Id = $(this).val();
											$
													.ajax({
														type : "POST",
														url : "${pageContext.request.contextPath}/Admin/Library/Update/UpdateLibraryBook.jsp",
														data : "book_Id="
																+ book_Id,
														cache : false,
														success : function(
																response) {
															$("#updateForm")
																	.html(
																			response);

														}
													});

											modal.style.display = "block";
										});

						// When the user clicks on <span> (x), close the modal
						span.onclick = function() {
							modal.style.display = "none";
							$("#myDatepicker2").toggle();

						}

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function(event) {
							if (event.target == modal) {
								modal.style.display = "none";
								$("#myDatepicker2").toggle();
							}
						}

					});
</script>

<!-- Model Js Function End Here -->