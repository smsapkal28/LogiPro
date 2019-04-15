<%@page import="com.ex.documentation.entity.MasterBLEntity"%>
<%@ page import="java.util.*"%>
<jsp:include page="../../Header.jsp" />
<jsp:include page="Exdocheader.jsp" />
<script>
$(document).ready(function(){
});
</script>
<div id="content">
	<div class="grid_container">
		<div class="grid_12 full_block">
			<div class="widget_wrap">
				<div class="breadCrumbHolder module">
					<div id="breadCrumb0" class="breadCrumb module white_lin">
						<ul>
							<li><a href="#">Home</a></li>
							<li>Sea Export</li>
							<li>Documentation</li>
							<li>MBL</li>
							<li><a href="#">MBL List</a></li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>MBL List</h6>
					<div class="widget_class">
						<div class="btn_30_light" style="margin: 5px 5px;">
							<a href="${pageContext.request.contextPath}/Export/EXDOC/Export_MBLEntry.jsp"><span class="icon add_co"></span><span
								class="btn_link">New MBL</span></a>
						</div>
					</div>
				</div>
				<div class="widget_content">
					<table class="display tbl_details" id="mbllisttable">
						<thead>
							<tr>
								<th>Sr.No.</th>
								<th>MBL No.</th>
								<th>MBL Date</th>
								<th>Customer Name</th>
								<th>POL</th>
								<th>POD</th>
								<th>Shipper Name</th>
								<th>Vessel</th>
								<th>Voyage</th>
								<th>action</th>
							</tr>
						</thead>
						<tbody>
							<%
								List<MasterBLEntity> listmbl = (List<MasterBLEntity>) request.getAttribute("mblrecord");
								int count = 0;
								for (MasterBLEntity mbl : listmbl) {
									count++;
							%>
							<tr class="gradeX">
								<td><%=count%></td>
								<td><%=mbl.getMblno()%></td>
								<td><%=mbl.getMbldate()%></td>
								<td><%=mbl.getConsigneename()%></td>
								<td><%=mbl.getPol()%></td>
								<td><%=mbl.getPod()%></td>
								<td><%=mbl.getShippername()%></td>
								<td><%=mbl.getVesselname()%></td>
								<td><%=mbl.getVoyageno()%></td>
								<td class="center"><span><a
										class="action-icons c-edit" href="#" title="Edit">Edit</a></span><span><a
										class="action-icons c-delete" href="#" title="delete">Delete</a></span><span><a
										class="action-icons c-approve" href="#" title="Approve">Publish</a></span>
								</td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<span class="clear"></span>
</div>
<jsp:include page="../../Footer.jsp" />