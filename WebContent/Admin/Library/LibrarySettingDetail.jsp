
<%@page import="com.entity.library.LibrarySettingEntity"%>
<%@page import="com.entity.library.LibraryBookDetailEntity"%>
<%@page import="com.entity.library.LibraryDetailEntity"%>
<%@page import="com.entity.hostel.HostelCategoryEntity"%>
<%@page import="java.util.List"%>
<jsp:include page="../admin-index.jsp" />

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="page-title">
			<div class="title_left">
				<h3>
					<img src="${pageContext.request.contextPath}/Images/subject.png"
						width="35" height="35" /> Add Library Setting Detail
				</h3>
			</div>

			<div class="title_right">
				<ol class="breadcrumb pull-right">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/Images/d1.png" width="25"
							height="25" /> Dashboard</a></li>
					<li><a href="#"> Library</a></li>
					<li><a href="#"> Library Setting Details</a></li>
				</ol>
			</div>
		</div>


		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">Library Seting Detail</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>


						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />

						<form class="form-horizontal form-label-left input_mask"
							action="${pageContext.request.contextPath }/LibraryController"
							method="post">
							<input type='hidden' name="action" value="AddLibrarySetting"
								class="form-control" />
							<div class="form-group row">
								<div class="col-md-5">
									<label class="control-label" for="lib_Id">Library <span
										class="required" style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <select id="first-disabled" class="selectpicker form-control"
										data-hide-disabled="true" data-live-search="true"
										name="lib_Id">
										<option value="0" selected="true" disabled>--Select--</option>
										<%
											List<LibraryDetailEntity> libraryList = (List<LibraryDetailEntity>) request.getAttribute("libraryList");

											for (LibraryDetailEntity library : libraryList) {
										%>
										<option value="<%=library.getLib_Id()%>"><%=library.getLib_Name()%></option>
										<%
											}
										%>
									</select>

								</div>


								<div class="col-md-5">
									<label class="control-label" for="book__Issue_Duration">Book
										Issue Duration <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="book__Issue_Duration"
										class="form-control" name="book__Issue_Duration" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="return_Delay">return
										Delay <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="return_Delay" class="form-control"
										name="return_Delay" required />

								</div>
								<div class="col-md-5">
									<label class="control-label" for="return_Delay_Fine">
										Delay fine <span class="required"
										style="color: red; font-size: 17px;"><b>*</b></span>
									</label> <input type="text" id="return_Delay_Fine" class="form-control"
										name="return_Delay_Fine" required />

								</div>



							</div>
							<div class="clearfix"></div>
							<br />
							<button type="submit" class="btn btn-info pull-right"
								style="border-radius: 0px;">Submit</button>

						</form>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title" style="background-color: #1ABB9C;">
						<h2 style="color: #fff;">
							<li class="fa fa-reorder">Library Setting List</li>
						</h2>
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
									<th>Issue Duration</th>
									<th>Delay Time</th>
									<th>Fine</th>

									<th>Actions</th>
								</tr>
							</thead>
							<tbody>

								<%
									List<LibrarySettingEntity> librarySettingList = (List<LibrarySettingEntity>) request
											.getAttribute("librarySettingList");
									int count = 0;
									for (LibrarySettingEntity librarySetting : librarySettingList) {
								%>
								<tr>
									<td><%=++count%></td>
									<td>
										<%
											for (LibraryDetailEntity library : libraryList) {
													if (library.getLib_Id() == librarySetting.getLib_Id())
														out.print(library.getLib_Name());
												}
										%>
									</td>
									<td><%=librarySetting.getIssue_Duration()%></td>
									<td> <%= librarySetting.getDelay_Return_Time()%></td>
									<td><%=librarySetting.getDelay_Return_Fine()%></td>
									<td><button type="button" class="btn btn-info myBtnUpdate" value="<%= librarySetting.getSetting_Id()%>">
											<li class="fa fa-pencil fa-1x"></li>
										</button>
										<form class="form-horizontal form-label-left input_mask"
											action="${pageContext.request.contextPath }/LibraryController"
											method="post">
											<input type='hidden' name="action" value="DeleteLibrarySetting"
												class="form-control" />
												<input type='hidden' name="setting_Id" value="<%= librarySetting.getSetting_Id() %>"
												class="form-control" />
											<button type="submit" class="btn btn-danger ">
												<li class="fa fa-trash-o fa-1x"></li>
											</button>
										</form></td>
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
			
				<!-- The Modal Starts-->
			<div id="myUpdateModal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
					<span class="close">&times; </span>
					<h3 style=" text-align: center;">Enter New Value If You Want To Change Old One</h3>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12" id="updateForm">
							

						</div>
					</div>

				</div>

			</div>
			<!-- The Modal Ends-->
		</div>
	</div>
</div>
<!-- /page content -->

<jsp:include page="../Footer.jsp" />

<script>
	$('#myDatepicker').datetimepicker();

	$('#myDatepicker2').datetimepicker({
		format : 'DD/MM/YYYY'
	});

	$('#myDatepicker3').datetimepicker({
		format : 'DD/MM/YYYY'
	});
	/*  $('#myDatepicker3').datetimepicker({
	     format: 'hh:mm A'
	 }); */

	$('#myDatepicker4').datetimepicker({
		ignoreReadonly : true,
		allowInputToggle : true
	});

	$('#datetimepicker6').datetimepicker();

	$('#datetimepicker7').datetimepicker({
		useCurrent : false
	});

	$("#datetimepicker6").on("dp.change", function(e) {
		$('#datetimepicker7').data("DateTimePicker").minDate(e.date);
	});

	$("#datetimepicker7").on("dp.change", function(e) {
		$('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
	});
</script>

<!-- Model Js Function Start Here -->

<script>
	$(document).ready(function() {
		// Get the modal
		var modal = document.getElementById('myUpdateModal');

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 

		$(".myBtnUpdate").click(function() {
			
			var setting_Id = $(this).val();
			$
			.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/Admin/Library/Update/UpdateLibrarySetting.jsp",
				data : "setting_Id=" + setting_Id,
				cache : false,
				success : function(response) {
					$("#updateForm").html(response);

				}
			});

			modal.style.display = "block";
		});

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

	});
</script>

<!-- Model Js Function End Here -->

