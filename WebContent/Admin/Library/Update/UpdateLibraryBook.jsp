
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.dao.library.LibraryDetailDao"%>
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%@page import="com.dao.library.LibraryBookDetailDao"%>
<%
	if (request.getParameter("book_Id") != null) {
			int book_Id = Integer.parseInt(request.getParameter("book_Id"));
			LibraryBookDetailEntity entity = new LibraryBookDetailDao(). getLibraryBookDetailById(book_Id);
			LibraryDetailEntity lib = new LibraryDetailDao(). getLibraryFullDetailsById(entity.getLib_Id());
	
%>


						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/LibraryController"
							method="post">
							<input type='hidden' name="action" value="UpdateLibraryBook"
								class="form-control" />
								<input type='hidden' name="lib_Book_Id" value="<%= book_Id %>"
								class="form-control" />
								<input type='hidden' name="lib_Id" value="<%= entity.getLib_Id() %>"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="lib_Id">Library <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text"  class="form-control"
										 value="<%= lib.getLib_Name() %>" required />

								</div>


								<div class="col-md-5">
									<label class="control-label" for="book_Name">Book Name
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Name" class="form-control"
										name="book_Name" value="<%= entity.getBook_Name() %>" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Edition">Book
										Edition<span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Edition" class="form-control"
										name="book_Edition" value="<%= entity.getBook_Edition() %>" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Aurthor">Book
										Aurthor <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Aurthor" class="form-control"
										name="book_Aurthor" value="<%= entity.getBook_Aurthor() %>" required />

								</div>


								<div class="col-md-5">
									<label class="control-label" for="book_Publisher">Book
										Publisher <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Publisher" class="form-control"
										name="book_Publisher" value="<%= entity.getBook_Publisher() %>" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Price">Price : <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Price" class="form-control"
										name="book_Price" value="<%= entity.getBook_Price() %>" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="book_Quantity">Quantity
										<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book_Quantity" class="form-control"
										name="book_Quantity" value="<%= entity.getBook_Quantity() %>" required />

								</div>

								<div class="col-md-5">
									<label for="purchase_Date" class="control-label">Purchase
										Date <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label>
									<div class='input-group date' id='myDatepicker3'>
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
<%
	}
%>
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
