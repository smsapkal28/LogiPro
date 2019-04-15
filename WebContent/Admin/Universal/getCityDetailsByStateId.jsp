
<%@page import="com.dao.universal.UniversalDao"%>
<%@page import="com.entity.universal.CityEntity"%>
<%@page import="java.util.List"%>
<%
	if (request.getParameter("state_id") != null) {
		int id = Integer.parseInt(request.getParameter("state_id")); 
		List<CityEntity> cityEntities = new UniversalDao().getCityEntityDetailsByStateId(id);
%>
<option value="0" selected="true" disabled>--Select--</option>
<%
	for (CityEntity sb : cityEntities) {
%>

<option value="<%=sb.getId()%>"><%=sb.getName()%></option>


<%
	}
	}
%>
