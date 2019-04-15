
<%@page import="com.dao.subject.SubjectMasterDao"%>
<%@page import="com.entity.subject.SubjectMasterEntity"%>
<%@page import="java.util.List"%>
<%
	if (request.getParameter("courseCode") != null) {
		int id = Integer.parseInt(request.getParameter("courseCode")); //get course code from BatchMaster.jsp page with function course_change() through ajax and store in id variable.

		List<SubjectMasterEntity> subjectMasterEntities = new SubjectMasterDao()
				.getSubjectMasterFullDetailsByCourseId(id);
%>
<option value="0" selected="true" disabled>--Select--</option>
<%
	for (SubjectMasterEntity sb : subjectMasterEntities) {
%>

<option value="<%=sb.getId()%>"><%=sb.getSubName()%></option>


<%
	}
	}
%>
