<%@page import="com.entity.hostel.HostelRoomDetailEntity"%>
<%@page import="com.dao.hostel.HostelRoomDetailDao"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.hostel.HostelDetailDao"%>
<%@page import="com.entity.hostel.HostelDetailEntity"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<%@page import="com.dao.student.StudentEnrolPersonalDetailDao"%>
<%@page import="com.entity.hostel.HostelStudentDetailEntity"%>
<%@page import="com.dao.hostel.HostelStudentDetailDao"%>
<%
	if (request.getParameter("hostel_Id") != null) {
		System.out.print("inside if");
		int id = Integer.parseInt(request.getParameter("hostel_Id")); 
		List<HostelRoomDetailEntity> roomList = new HostelRoomDetailDao().getHostelRoomFullDetailByHostelId(id);
		%>
		<option value="0" selected="true" disabled>--Select--</option>
		<%
		for(HostelRoomDetailEntity hr:roomList){
			System.out.println(hr.getRoom_Name());
	%>		
	<option value="<%=hr.getRoom_Id()%>"><%=hr.getRoom_Name()%></option>
<%			
		}
	}
%>