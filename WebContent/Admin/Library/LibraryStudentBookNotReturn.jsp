

<%@page import="com.entity.library.LibraryBookIssuedDetailEntity"%>
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%@page import="com.entity.library.LibraryStudentRegistrationEntity"%>

<%@page import="java.util.List"%>
<%@page import="com.entity.student.StudentEnrolPersonalDetailEntity"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/subject.png"
						width="35" height="35" /> Add Book Not Return Detail
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Library</a></li>
					<li><a href="#"> Book Unable To Return Details</a></li>
				</ol>
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Book Not Returned Detail</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<%
						List<LibraryStudentRegistrationEntity> libraryStudentList = (List<LibraryStudentRegistrationEntity>) request
								.getAttribute("libraryStudentList");

						List<LibraryBookDetailEntity> libraryBookList = (List<LibraryBookDetailEntity>) request
								.getAttribute("libraryBookList");
						List<LibraryDetailEntity> libraryList = (List<LibraryDetailEntity>) request.getAttribute("libraryList");
						List<LibraryBookIssuedDetailEntity> listBookIssued = (List<LibraryBookIssuedDetailEntity>) request
								.getAttribute("listBookIssued");
					%>

					<div class="x_content">
						<br />


						<div class="form-group row">
							<div class="col-md-5">
								<label class="control-label" for="stud_Id">Student Name
									<span class="required" style="color: red; font-size: 17px;"><b>*</b></span>
								</label> <select id="stud_Id" class="selectpicker form-control"
									data-hide-disabled="true" data-live-search="true"
									name="stud_Id" onchange="stud_Change()">
									<option value="0" selected="true" disabled>--Select--</option>
									<%
										for (LibraryStudentRegistrationEntity libraryStudent : libraryStudentList) {
									%>
									<option value="<%=libraryStudent.getLib_Stud_Id()%>">
										<%=(libraryStudent.getStud_Name() + "(" + libraryStudent.getStud_Reg_No() + ")").toUpperCase()%>
									</option>
									<%
										}
									%>
								</select>

							</div>







						</div>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title" style="background-color: #1ABB9C;">
							<h2 style="color: #fff;">
								<li class="fa fa-reorder">Issued Book List</li>
							</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>

							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content" id="returnForm"></div>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- /page content -->

	<jsp:include page="../Footer.jsp" />

	<script>
		$('#myDatepicker2').datetimepicker({
			format : 'DD/MM/YYYY'
		});

		$('#myDatepicker3').datetimepicker({
			format : 'DD/MM/YYYY'
		});
		$("#datetimepicker6").on("dp.change", function(e) {
			$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
		});

		$("#datetimepicker7").on("dp.change", function(e) {
			$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
		});

		function stud_Change() {
			var stud_Id = $("#stud_Id").val();

			$
					.ajax({
						type : "POST",
						url : "${pageContext.request.contextPath}/Admin/Universal/getBookIssuedDetailByStudentId2.jsp",
						data : "stud_Id=" + stud_Id,
						cache : false,
						success : function(response) {
							$("#returnForm").html(response);

						}
					});
		}
	</script>
<!-- 	<script type="text/javascript">
		$(document).on("click", "#return_Btn", function() {

			price =	$(this).closest('tr').find('td:nth-child(2)').text();

					
			

				alert(price);

		

		});
	</script> -->