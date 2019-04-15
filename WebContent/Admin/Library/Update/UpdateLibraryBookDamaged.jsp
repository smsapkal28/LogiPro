
<%@page import="com.dao.library.LibraryDetailDao"%>
<%@page import="com.dao.library.LibraryBookDetailDao"%>
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%@page import="com.dao.library.LibraryBookDamagedDao"%>
<%@page import="com.entity.library.LibraryBookDamagedEntity"%>
<%
	if (request.getParameter("damage_Id") != null) {

		int damage_Id = Integer.parseInt(request.getParameter("damage_Id"));
		LibraryBookDamagedEntity entity = new LibraryBookDamagedDao()
				.getLibraryBookDamagedFullDetailById(damage_Id);
		LibraryBookDetailEntity book = new LibraryBookDetailDao(). getLibraryBookDetailById(entity.getBook_Id());
		LibraryDetailEntity lib = new LibraryDetailDao(). getLibraryFullDetailsById(entity.getLib_Id());
%>

<form class="form-horizontal form-label-left input_mask"
	action="${pageContext.request.contextPath }/LibraryController"
	method="post">
	<input type='hidden' name="action" value="UpdateLibraryBookDamage"
		class="form-control" /> <input type='hidden' name="damage_Id"
		value="<%=damage_Id%>" class="form-control" />
		<input type='hidden' name="lib_Id" value="<%= entity.getLib_Id() %>"
		class="form-control" /> <input type='hidden' name="book_Id"
		value="<%=entity.getBook_Id()%>" class="form-control" />
		<input type='hidden' name="prev_Quantity"
		value="<%= entity.getQuantity()%>" class="form-control" />
	<div class="form-group">

		<div class="col-md-5">
			<label class="control-label" for="lib_Id">Library Name <span
				class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="lib_Id" class="form-control" value="<%= lib.getLib_Name() %>"
				readonly="readonly" />
		</div>

		<div class="col-md-5">
			<label class="control-label" for="book_Id">Book Name Name <span
				class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="book_Id" class="form-control" value="<%= book.getBook_Name() + " / " + book.getBook_Edition() + " / "
					+ book.getBook_Aurthor() + " / " + book.getBook_Publisher() %>"
				readonly="readonly" />

		</div>
		<div class="col-md-5">
			<label class="control-label" for="quantity">Book Damaged
				quantity <span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="quantity" class="form-control"
				name="quantity" value="<%= entity.getQuantity()%>" required="required" />

		</div>
	</div>
	<div class="clearfix"></div>
	<br />
	<button type="submit" class="btn btn-info pull-right"
		style="border-radius: 0px;">Submit</button>

</form>

<%
	}
%>