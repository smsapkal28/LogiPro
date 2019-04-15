
<%@page import="com.dao.library.LibraryStudentRegistrationDao"%>
<%@page import="com.entity.library.LibraryStudentRegistrationEntity"%>
<%
	if (request.getParameter("stud_Id") != null) {

		int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
		LibraryStudentRegistrationEntity entity = new LibraryStudentRegistrationDao()
				.getLibraryStudentDetailById(stud_Id);
%>

<form class="form-horizontal form-label-left input_mask"
	action="${pageContext.request.contextPath }/LibraryController"
	method="post">
	<input type='hidden' name="action" value="UpdateLibraryStudentDetail"
		class="form-control" /> <input type='hidden' name="stud_Id"
		value="<%=stud_Id%>" class="form-control" />

	<div class="form-group row">
		<div class="col-md-5">
			<label class="control-label" for="lib_Id">Library <span
				class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" class="form-control"
				value="<%=entity.getStud_Reg_No()%>" readonly="readonly" />

		</div>


		<div class="col-md-5">
			<label class="control-label" for="stud_Name">Student Name <span
				class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="stud_Name" class="form-control"
				name="stud_Name" value="<%= entity.getStud_Name()%>" required />

		</div>
		<div class="col-md-5">
			<label class="control-label" for="stud_Contact">Student
				Contact <span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="stud_Contact" class="form-control"
				name="stud_Contact" value="<%= entity.getStud_Contact()%>" required />

		</div>
		<div class="col-md-5">
			<label class="control-label" for="stud_Email">Email ID <span
				class="required" style="color: red; font-size: 17px;"><b>*</b></span>
			</label> <input type="text" id="stud_Email" class="form-control"
				name="stud_Email" value="<%= entity.getStud_Email()%>" required />

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