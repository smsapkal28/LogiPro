
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%@page import="com.entity.library.LibraryStudentRegistrationEntity"%>
<%@page import="com.entity.library.LibraryBookDelayReturnFineEntity"%>
<%@page import="com.entity.library.LibraryBookNotReturnEntity"%>
<%@page import="com.entity.library.LibraryDetailEntity"%>
<
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/subject.png"
						width="35" height="35" />Library Book Delay Return
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Library</a></li>
					<li><a href="#">Book Delay Return</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<%
			List<LibraryDetailEntity> libraryList = (List<LibraryDetailEntity>) request.getAttribute("libraryList");
			
			List<LibraryBookDelayReturnFineEntity> libraryBookDelayReturnedList = (List<LibraryBookDelayReturnFineEntity>) request
					.getAttribute("libraryBookDelayReturnedList");
			List<LibraryStudentRegistrationEntity> libraryStudentList = (List<LibraryStudentRegistrationEntity>) request
					.getAttribute("libraryStudentList");
			List<LibraryBookDetailEntity> libraryBookList = (List<LibraryBookDetailEntity>) request
					.getAttribute("libraryBookList");
		%>


		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Library Book Delay Return Detail</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Sr.No.</th>
									<th>Library Name</th>
									<th>Collections</th>
									<th>Amount</th>
								</tr>
							</thead>
							<tbody>
								<%
									int count = 0;
									for (LibraryDetailEntity library : libraryList) {
										float amount = 0;
								%>
								<tr>
									<td><%=++count%></td>
									<td><%=library.getLib_Name()%></td>
									<td>
										<table class="table table-bordered clickTable" >
											<thead style="text-align: center; background-color: #1ABB9C; color: #fff;">
												

												<tr>
													<th>Sr.No.</th>

													<th>Student Name</th>
													<th>Book Name</th>
													<th>Date</th>
													<th>Amount</th>


												</tr>

											</thead>
											<tbody class="collapse">

												<%
													int count2 = 0;
														float total1 = 0;
														for (LibraryBookDelayReturnFineEntity delayReturn : libraryBookDelayReturnedList) {

															if (library.getLib_Id() == delayReturn.getLib_Id()) {
												%>
												<tr>
													<td><%=++count2%></td>
													<td><%
														for(LibraryStudentRegistrationEntity stud:libraryStudentList){
															if(delayReturn.getStud_Id() == stud.getLib_Stud_Id())
																out.print(stud.getStud_Name());
														}
													
													%></td>
													<td><%
														for(LibraryBookDetailEntity book:libraryBookList){
															if(book.getLib_Book_Id() == delayReturn.getBook_Id())
																out.print(book.getBook_Name()+"/"+book.getBook_Edition()+"/"+book.getBook_Aurthor()+"/"+book.getBook_Publisher());
														}
													
													%></td>
													<td><%= delayReturn.getReturn_Date() %></td>
													<td><%=delayReturn.getFine_Amount()%></td>

												</tr>
												<%
													total1 = total1 + delayReturn.getFine_Amount();
																amount = amount + delayReturn.getFine_Amount();
															}
														}
												%>
												<tr>
													<td colspan="4">Total :</td>
													<td><%=total1%></td>
												</tr>
											</tbody>
										</table>


									</td>

									<td><%=amount%></td>

								</tr>


								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>


			<div class="clearfix"></div>

		</div>
	</div>
	<!-- /page content -->

	<jsp:include page="../Footer.jsp" />

	<script>
		$(document).ready(function() {
			$(".clickTable").click(function() {

				$(this).find("tbody").collapse('toggle');
				//$('#'$(this).attr("id")).collapse('toggle');
			});

		});
	</script>