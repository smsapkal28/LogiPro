<%@page import="com.entity.library.LibrarySettingEntity"%>
<%@page import="com.dao.library.LibrarySettingDao"%>
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.dao.library.LibraryDetailDao"%>
<%
	if (request.getParameter("setting_Id") != null) {

		int setting_Id = Integer.parseInt(request.getParameter("setting_Id"));
		LibrarySettingEntity setting = new LibrarySettingDao().getLibrarySettingDetailBySettingId(setting_Id);
		LibraryDetailDao dao = new LibraryDetailDao();
		LibraryDetailEntity entity = dao.getLibraryFullDetailsById(setting.getLib_Id());
%>

<form class="form-horizontal form-label-left input_mask"
	action="${pageContext.request.contextPath }/LibraryController"
	method="post">
	<input type='hidden' name="action" value="UpdateLibrarySetting"
		class="form-control" />
		<input type='hidden' name="setting_Id" value="<%= setting_Id %>"
		class="form-control" />
		<input type='hidden' name="lib_Id" value="<%= setting.getLib_Id() %>"
		class="form-control" />
	<div class="form-group row">
		<div class="col-md-5">
			<label class="control-label" for="lib_Id">Library <span
				class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text"  class="form-control" value="<%= entity.getLib_Name()%>" readonly="readonly" />

		</div>


		<div class="col-md-5">
			<label class="control-label" for="book__Issue_Duration">Book
				Issue Duration <span class="required"
				style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="book__Issue_Duration" class="form-control"
				name="book__Issue_Duration" value="<%= setting.getIssue_Duration()%>" required />

		</div>
		<div class="col-md-5">
			<label class="control-label" for="return_Delay">return Delay
				<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="return_Delay" class="form-control"  value="<%= setting.getDelay_Return_Time()%>"
				name="return_Delay" required />

		</div>
		<div class="col-md-5">
			<label class="control-label" for="return_Delay_Fine"> Delay
				fine <span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="return_Delay_Fine" class="form-control"  value="<%= setting.getDelay_Return_Fine()%>"
				name="return_Delay_Fine" required />

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