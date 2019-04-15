<%@page import="com.Master.Customer.entity.CustomerEntity"%>
<jsp:include page="../Header.jsp" />
<jsp:include page="Mheader.jsp" />
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*"%>

<div id="content">
		<div class="grid_container">
			<div class="grid_12 full_block">			
				<div class="widget_wrap">
					<div class="breadCrumbHolder module">
						<div id="breadCrumb0" class="breadCrumb module white_lin">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#">Master</a></li>
								<li><a href="#">Customer</a></li>
								<li><a href="#">Customer List</a></li>
							</ul>
						</div>
					</div>
					<div class="widget_top">
						<span class="h_icon list_image"></span>
						<h6>Customer List</h6>
						<div class="widget_class">
							<div class="btn_30_light" style="margin: 5px 5px;">
								<a href="Addcustomer.html"><span class="icon add_co"></span><span class="btn_link">New Customer</span></a>
							</div>
						</div>
					</div>
					<div class="widget_content">
						<table class="display tbl_details" id="data_tbl">
						<thead>
						<tr>
							<th>
								 Customer Name
							</th>
							<th>
								 Contact Person Name
							</th>
							<th>
								 Import Email
							</th>
							<th>
								 Export Email
							</th>
							<th>
								Web Site
							</th>

							<th>
								 Status
							</th>
							<th style="display:none;">
								Address
								</th>
							<th>
								 Action
							</th>
						</tr>
						</thead>
						<tbody>
						<%
	List<CustomerEntity> custlist = (List<CustomerEntity>) request.getAttribute("custrecord");

	int k = 0;
	for (CustomerEntity list : custlist) {
%>
						<tr class="gradeX">
							<td>
								 <%=list.getCustomername() %>
							</td>
							<td>
								 <%=list.getKpname() %>
							</td>
							<td>
								 <%=list.getImportemail()%>
							</td>
							<td class="center">
								 <%=list.getExportemail()%>
							</td>
							<td class="center">
								 <a href="<%=list.getWeburl()%>"><%=list.getWeburl()%>
							</td>
							<td class="center">
								<span class="badge_style b_done"><%=list.getStatus()%></span>
							</td>
							<td style="display:none;">
								<%=list.getCustomeraddress()%>
							</td>
							<td class="center">
								<span><a class="action-icons c-edit" href="#" title="Edit">Edit</a></span><span><a class="action-icons c-delete" href="#" title="delete">Delete</a></span><span><a class="action-icons c-approve" href="#" title="Approve">Publish</a></span>
							</td>
						</tr>
						<%} %>

						</tbody>
						</table>					
					</div>
				</div>
			</div>				
		</div>
		<span class="clear"></span>
</div>
<jsp:include page="../Footer.jsp" />