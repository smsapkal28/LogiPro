
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.library.LibraryBookDetailDao"%>
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%
	if (request.getParameter("lib_Id") != null) {
		
		int id = Integer.parseInt(request.getParameter("lib_Id")); //get lib Id from LibraryBookIssued.jsp page with function Lib_change() through ajax and store in id variable.
		System.out.print(id);
		List<LibraryBookDetailEntity> list = new LibraryBookDetailDao().getLibraryBookDetailBasedOnLibraryId(id);
		%>
		
			<option value="0" selected="true" disabled>--Select--</option>
		<%
		for(LibraryBookDetailEntity entity:list){
%>

<option value="<%= entity.getLib_Book_Id()%>"><%= entity.getBook_Name()+"/"+entity.getBook_Edition()+"/"+entity.getBook_Aurthor()+"/"+entity.getBook_Publisher()%></option>


<%
	}
	}
%>
