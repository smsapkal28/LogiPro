

<%@page import="com.entity.universal.StateEntity"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.universal.UniversalDao"%>
<%
	if (request.getParameter("country_id") != null) {
		int id = Integer.parseInt(request.getParameter("country_id")); 
		List<StateEntity> stateEntities = new UniversalDao().getStateEntityDetailsByCountryId(id);
%>
<option value="0" selected="true" disabled>--Select--</option>
<%
	for (StateEntity sb : stateEntities) {
%>

<option value="<%=sb.getId()%>"><%=sb.getName()%></option>


<%
	}
	}
%>











