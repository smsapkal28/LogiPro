
<%@page import="com.dao.library.LibrarySettingDao"%>
<%@page import="com.entity.library.LibrarySettingEntity"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>


<%@page import="com.dao.library.LibraryDetailDao"%>
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.dao.library.LibraryStudentRegistrationDao"%>
<%@page import="com.entity.library.LibraryStudentRegistrationEntity"%>
<%@page import="com.dao.library.LibraryBookIssuedDetailDao"%>
<%@page import="com.entity.library.LibraryBookIssuedDetailEntity"%>
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.library.LibraryBookDetailDao"%>
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%
	if (request.getParameter("stud_Id") != null) {

		int id = Integer.parseInt(request.getParameter("stud_Id"));
		System.out.print(id);
		List<LibraryBookIssuedDetailEntity> list = new LibraryBookIssuedDetailDao()
				.getLibraryBookIssuedDetailByStudId(id);
		List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
		List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
				.getLibraryStudentFullDetail();
		List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();
		List<LibrarySettingEntity> librarySettingList = new LibrarySettingDao().getLibrarySettingFullDetails();
		int count = 0;
%>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>Sr.No.</th>
			<th>Student Name</th>
			<th>Library Name</th>
			<th>Book/Edition/Author/Publisher</th>
			<th>Issue Date</th>
			<th>Return Date</th>
			<th>Returning Date</th>
			<th>Delay</th>
			<th>Fine Amount</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>



		<%
			for (LibraryBookIssuedDetailEntity libraryBook : list) {

					long difference = new Date().getTime() - libraryBook.getReturn_Date().getTime();

					float daysBetween = (difference / (1000 * 60 * 60 * 24));
					int delay = (int) daysBetween;
					float fine = 0;
					int delay_Time = 0;
					float book_Price=0;
		%>
		<tr>
			<td><%=++count%></td>
			<td>
				<%
					for (LibraryStudentRegistrationEntity libraryStudent : libraryStudentList) {
								if (libraryBook.getStud_Id() == libraryStudent.getLib_Stud_Id())
									out.print(libraryStudent.getStud_Name());

							}
				%>

			</td>
			<td>
				<%
					for (LibraryDetailEntity library : libraryList) {
								if (library.getLib_Id() == libraryBook.getLib_Id())
									out.print(library.getLib_Name());
																}
				%>
			</td>
			<td>
				<%
					for (LibraryBookDetailEntity entity : libraryBookList) {
								if (entity.getLib_Book_Id() == libraryBook.getBook_Id())
									out.print(entity.getBook_Name() + " / " + entity.getBook_Edition() + " / "
											+ entity.getBook_Aurthor() + " / " + entity.getBook_Publisher());
								book_Price = entity.getBook_Price();
							}
				%>
			</td>
			<td><%=libraryBook.getIssue_Date()%></td>
			<td><%=libraryBook.getReturn_Date()%></td>
			<td><%=LocalDate.now()%></td>
			<td>
				<%
					if ((delay) > 0) {
								out.print(delay);
							} else {
								out.print(0);
								delay = 0;
							}
				%>
			</td>
			<td>
				<%
					for (LibrarySettingEntity setting : librarySettingList) {
								if (setting.getLib_Id() == libraryBook.getLib_Id()){
									out.print(((delay / setting.getDelay_Return_Time()) * setting.getDelay_Return_Fine())+book_Price);
									delay_Time = setting.getDelay_Return_Time();

									fine = ((delay / setting.getDelay_Return_Time()) * setting.getDelay_Return_Fine())+book_Price;
							}}
				%>
			</td>
			<td><form class="form-horizontal form-label-left input_mask"
					action="${pageContext.request.contextPath }/LibraryController"
					method="post">
					<input type='hidden' name="action" value="AddNotReturnDetail"
						class="form-control" />
						 <input type='hidden' name="stud_Id"
						value="<%= libraryBook.getStud_Id() %>" class="form-control" /> 
						<input type='hidden' name="lib_Id" value="<%= libraryBook.getLib_Id() %>"
						class="form-control" /> 
						<input type='hidden' name="book_Id"
						value="<%= libraryBook.getBook_Id() %>" class="form-control" /> 
						<input type='hidden' name="issue_Id" value="<%= libraryBook.getIssued_Id() %>"
						class="form-control" /> 
					<%-- 	<input type='hidden' name="delay_Day"
						value="<%= delay %>" class="form-control" /> 
						<input type='hidden' name="delay_Time"
						value="<%= delay_Time %>" class="form-control" />  --%>
						<input type='hidden' name="fine_Amount" value="<%= fine %>"
						class="form-control" />
					<button type="submit" id="return_Btn" class="btn btn-danger">
						<li class="fa fa-trash-o fa-1x"></li>
					</button>

				</form></td>
		</tr>
		<%
			}
		%>
	</tbody>
</table>

<%
	}
%>

