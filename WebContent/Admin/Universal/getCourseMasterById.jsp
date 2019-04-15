<%@page import="com.dao.course.CourseMasterDao"%>
<%@page import="com.entity.course.CourseEntity"%>
<%
	if (request.getParameter("courseCode") != null) {
		int id = Integer.parseInt(request.getParameter("courseCode")); //get course code from BatchMaster.jsp page with function course_change() through ajax and store in id variable.

		CourseEntity entity = new CourseMasterDao().getCourseFullDetailsById(id);
%>
<option value="0" selected="true" disabled>--Select--</option>
<%
	for (int i = 1; i <= entity.getSemester(); i++) {
%>

<option value="<%=i%>"><%=i%></option>


<%
	}
	}
%>
