<%@page import="java.util.List"%>
<%@page import="com.dao.hostel.HostelDetailDao"%>
<%@page import="com.entity.hostel.HostelDetailEntity"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<%@page import="com.dao.student.StudentEnrolPersonalDetailDao"%>
<%@page import="com.entity.hostel.HostelStudentDetailEntity"%>
<%@page import="com.dao.hostel.HostelStudentDetailDao"%>
<%
	if (request.getParameter("hostel_Stud_Id") != null) {
		System.out.print("inside if");
		int id = Integer.parseInt(request.getParameter("hostel_Stud_Id")); 
		HostelStudentDetailEntity entity = new HostelStudentDetailDao().getHostelStudentFullDetailById(id);
		StudentEnrolPersonalDetailEntity entity2 = new StudentEnrolPersonalDetailDao().getStudentEnrolledRecordById(entity.getStud_Id());
		System.out.println(entity.getStud_Id());
		System.out.println(entity2.getGender());
		List<HostelDetailEntity> hostel = new HostelDetailDao().getHostelFullDetailBasedOnGender(entity2.getGender());
		System.out.println(hostel);
		%>
		<option value="0" selected="true" disabled>--Select--</option>
		<%
		for(HostelDetailEntity h:hostel){
			System.out.println(h.getHostel_Name());
	%>		
	<option value="<%=h.getHostel_Id()%>"><%=h.getHostel_Name()%></option>
<%			
		}
	}
%>