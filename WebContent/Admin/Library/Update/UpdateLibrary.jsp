<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.dao.library.LibraryDetailDao"%>
<%
if (request.getParameter("lib_Id") != null) {
	
	int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
	LibraryDetailDao dao = new LibraryDetailDao();
	LibraryDetailEntity entity = dao.getLibraryFullDetailsById(lib_Id);

%>

<form class="form-horizontal form-label-left input_mask"
	action="${pageContext.request.contextPath }/LibraryController"
	method="post">
	<input type='hidden' name="action" value="UpdateLibrary"
		class="form-control" />
		<input type='hidden' name="lib_Id" value="<%= lib_Id %>"
		class="form-control" />
	<div class="form-group">

		<label class="control-label col-md-3 col-sm-3 col-xs-12">Library
			Name <span class="required" style="color: red">*</span>
		</label>
		<div class="col-md-3 col-sm-3 col-xs-12">
			<input type="text" name="library_Name" class="form-control"
				value="<%= entity.getLib_Name()%>">
		</div>
		<label class="control-label col-md-3 col-sm-3 col-xs-12">Library
			Code <span class="required" style="color: red">*</span>
		</label>
		<div class="col-md-3 col-sm-3 col-xs-12">
			<input type="text" name="library_Code" class="form-control"
				value="<%= entity.getLib_Code()%>">
		</div>
	</div>
	<div class="clearfix"></div>
	<br />
	<button type="submit" class="btn btn-info pull-right"
		style="border-radius: 0px;">Submit</button>

</form>

<%}%>