<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>| Admin</title>
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath}/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="${pageContext.request.contextPath}/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link
	href=" ${pageContext.request.contextPath}/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- jQuery custom content scroller -->
<link
	href="${pageContext.request.contextPath}/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
	rel="stylesheet" />
<!-- Custom Theme Style -->
<link href="${pageContext.request.contextPath}/build/css/custom.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link
	href="${pageContext.request.contextPath}/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link
	href="${pageContext.request.contextPath}/vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link
	href="${pageContext.request.contextPath}/vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link
	href="${pageContext.request.contextPath}/vendors/starrr/dist/starrr.css"
	rel="stylesheet">
<!-- bootstrap-datetimepicker -->
<link
	href="${pageContext.request.contextPath}/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
<!-- Ion.RangeSlider -->
<link
	href="${pageContext.request.contextPath}/vendors/normalize-css/normalize.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/ion.rangeSlider/css/ion.rangeSlider.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/ion.rangeSlider/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet">
<!-- Bootstrap Colorpicker -->
<link
	href="${pageContext.request.contextPath}/vendors/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/cropper/dist/cropper.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/select/css/bootstrap-select.css"
	rel="stylesheet">
<!-- Datatables -->
<link
	href="${pageContext.request.contextPath}/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">
<!-- Datatables -->
<link href="${pageContext.request.contextPath}/build/css/style.css"
	rel="stylesheet">

<style type="text/css">
.gate_pass {
	paddong: 10px;
	border: 2px solid #eee;
	border-radius: 4px;
}

.stu_attendance {
	padding: 6px;
	border: 1px solid #F5B041;
	background-color: #FADBD8;
	border-radius: 4px;
	margin-left: 10px;
	margin-right: 10px;
}

.stu_attendance p {
	padding: 3px;
	font-size: 12px;
	color: #EC7063;
}

.download {
	padding: 10px;
	border: 1px solid #F5B041;
	background-color: #FADBD8;
	border-radius: 4px;
}

.download p {
	padding: 5px;
	font-size: 12px;
	color: #EC7063;
}

.icon {
	padding: 1px;
	margin: 1px;
	border-radius: 40px;
	background-color: #FADBD8;
	color: #fff;
	font-size: 12px;
}

.file {
	padding: 10px;
	border: 1px solid #eee;
	background-color: #FADBD8;
	border-radius: 4px;
}

.button {
	border-radius: 0px;
	background-color: #5bc0de;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 15px;
	padding: 5px;
	width: 35%;
	transition: all 0.5s;
	cursor: pointer;
	margin: 1px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
/* Style the tab */
.nk {
	overflow: hidden;
	/* border: 6px solid red; */
	background-color: #EAECEE;
	margin-left: 10px;
	margin-right: 10px;
}

/* Style the buttons inside the tab */
.nk button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 11px 14px;
	transition: 0.3s;
	font-size: 14px;
	margin-left: 0px;
}

/* Change background color of buttons on hover */
.nk button:hover {
	/* background-color: #EAECEE; */
	
}

/* Create an active/current tablink class */
.nk button.active {
	background-color: #fff;
	border-top: 4px solid #1ABBC8;
}

/* <!--Model CSS Function Start Here --> */
 /* The Modal (background) */ 
 .modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
/* <!--Model CSS Function End Here --> */
</style>

</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">


			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="background-color: #1ABB9C;">
						<a href="index.html" class="site_title"> <!-- <i class="fa fa-institution"></i> -->
							<img src="${pageContext.request.contextPath}/Images/school.png"
							width="38" height="38" /> <span>School System</span>
						</a>
					</div>
					<div class="clearfix"></div>
					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="${pageContext.request.contextPath}/Images/devil.jpg"
								alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>Devil</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->
					<br />
					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<center>
								<span class="label label-success ">Active</span>
							</center>
							<div ng-app="myApp" ng-controller="myCtrl">
								<h3>{{theTime}}</h3>
							</div>
							<ul class="nav side-menu">
								<li><a href="Dashboard.jsp"><img
										src="${pageContext.request.contextPath}/Images/icons8-speed-48.png"
										width="30" height="30" /> Dashboard </a></li>
								<li><a><i class="fa fa-edit"></i> Academic setting<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a
											href="${pageContext.request.contextPath}/AcademicYearController?action=listAcademicYearRecord">Academic
												Year</a></li>
										<li><a
											href="${pageContext.request.contextPath}/DepartmentTypeController?action=listDepartmentTypeRecord">Department</a></li>
										<li><a
											href="${pageContext.request.contextPath}/DesignationController?action=listDesignationRecord">Designation</a></li>
										<li><a
											href="${pageContext.request.contextPath}/RoleController?action=listRoleRecord">Role
												Master</a></li>
										<li><a
											href="${pageContext.request.contextPath}/UserController?action=listUserRecord">Add
												User</a></li>


									</ul></li>
								<li><a><i class="fa fa-table"></i> Course & Batch <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#">Course<span
												class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/CourseController?action=listCourseRecord">Add
														Course Category</a></li>
												<li><a
													href="${pageContext.request.contextPath}/CourseController?action=listCourseMasterRecord">Course
														Master</a></li>

											</ul></li>

										<li><a>Batch<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/BatchController?action=listBatchRecord">Batch
														Master</a></li>

											</ul></li>
										<li><a href="#level1_2">Subject<span
												class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/SubjectController?action=listSubjectCategoryRecord">Add
														Subject Type</a></li>
												<li><a
													href="${pageContext.request.contextPath}/SubjectController?action=listSubjectMasterRecord">Add
														Subject</a></li>
												<li><a
													href="${pageContext.request.contextPath}/SubjectController?action=listAssignedSubjectToCategory">Assign
														Subject</a></li>
												<%-- <li><a href="${pageContext.request.contextPath}/Admin/Course/ClassTeacher.jsp">Assign Class To Teacher</a></li>
                             <li><a href="${pageContext.request.contextPath}/Admin/Course/SubjectCategory.jsp">Elective Subject Allocation</a></li>
                          --%>
											</ul></li>
									</ul></li>
								<li><a><i class="fa fa-money"></i> Student Management <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a
											href="${pageContext.request.contextPath}/StudentController?action=listStudentRegistrationRecord">Student
												Registration</a></li>
										<li><a
											href="${pageContext.request.contextPath}/StudentController?action=listStudentRegistrationRecordOnAdmission1">Admission</a></li>
										<li><a
											href="${pageContext.request.contextPath}/StudentController?action=listStudentEnrollRecord">Manage
												Student</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Student/Student_idcard.jsp">Student
												Id Card</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Student/AssignRoll.jsp">Assign
												Roll No</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Student/"></a></li>
									</ul></li>



								<li><a><i class="fa fa-money"></i> Employee Management
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a
											href="${pageContext.request.contextPath}/EmployeeController?action=addEmployeeRecord">Employee
												Registration</a></li>
										<li><a
											href="${pageContext.request.contextPath}/EmployeeController?action=listEmployeeRecord">Employee
												Record</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Employee/PrintEmpList.jsp">Employee
												Presonal Details</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Employee/EmployeeAttendanceImport.jsp">Employee
												Attandance</a></li>

									</ul></li>


								<li><a><i class="fa fa-money"></i> Fees Management <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a
											href="${pageContext.request.contextPath}/FeeController?action=listFeeFrequencyRecord">Fee
												Frequency</a></li>
										<li><a
											href="${pageContext.request.contextPath}/FeeController?action=listFeeCategoryRecord">Fee
												Category</a></li>
										<li><a
											href="${pageContext.request.contextPath}/FeeController?action=listFeeAmountRecord">Fee
												Amount</a></li>
										<li><a
											href="${pageContext.request.contextPath}/FeeController?action=listStudentFeePaymentTypeRecord">Student
												Fee Payment Type</a></li>
										<li><a
											href="${pageContext.request.contextPath}/FeeController?action=listStudentFeeDueRecord">Student
												Fee Due List</a></li>
										<li><a
											href="${pageContext.request.contextPath}/FeeController?action=PayDueFee">Student
												Fee Pay</a></li>
									</ul></li>

								<li><a><i class="fa fa-clone"></i> Hostel Management <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a>Inventory<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelInventoryCategory">
														inventory Category</a></li>
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelInventoryDetail">
														inventory Detail</a></li>
											</ul></li>
										<li><a>Hostel Setting<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelCategory">
														Hostel Category</a></li>
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelDetail">
														Hostel Detail</a></li>
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelRoomDetail">
														Hostel Room setting</a></li>
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelRoomAllocationDetail">
														Hostel Room Allocation List</a></li>

											</ul></li>


										<li><a>Facilities<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelFacility">
														Facility</a></li>

											</ul></li>

										<li><a>Student <span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelStudent">
														Student Registration</a></li>
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelStudentRoom">
														Student Room Allocation</a></li>
												<li><a
													href="${pageContext.request.contextPath}/HostelController?action=listHostelStudentFacilityAllocation">
														Student Facility Allocation</a></li>
											</ul></li>

										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>


								<!-- Library Start -->
								<li><a><i class="fa fa-clone"></i> Library Management <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">


										<li><a>Library <span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibrary">
														Library</a></li>

												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibrarySetting">
														Library Setting</a></li>
											</ul></li>

										<li><a>Student <span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryStudentRegistration">
														Student Registration</a></li>



											</ul></li>

										<li><a>Book Detail <span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryBook">
														Library Books</a></li>

												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryStudentBookIssuedDetail">
														Issue Book</a></li>

												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryStudentBookReturn">
														Return Book</a></li>

												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryStudentUnableToReturnBook">
														Unable to Return Book</a></li>

												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryDamagedBook">
														Book Damaged</a></li>

											</ul></li>

										<li><a>Library Collection <span
												class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryDelayReturnCollection">
														Delay Return</a></li>
												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryNotReturnCollection">
														Not Return</a></li>
												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryCollection">
														Collection</a></li>



											</ul></li>

										<li><a>expanse And Loss <span
												class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryExpanse">
														Library Expanse</a></li>

												<li><a
													href="${pageContext.request.contextPath}/LibraryController?action=listLibraryLoss">
														Library Loss</a></li>

											</ul></li>


										<li><a href="#"></a></li>
									</ul></li>
								<!-- Library Ends -->

								<!-- Transport Start -->

								<li><a><i class="fa fa-bar-chart-o"></i> Transport
										Management <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a>Vehicle Mgt<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${pageContext.request.contextPath}/TransportController?action=listVehicleCategory">Add
														Vehicle Category</a></li>
												<li><a
													href="${pageContext.request.contextPath}/TransportController?action=listVehicle">Add
														Vehicle</a></li>
											</ul></li>


										<li><a
											href="${pageContext.request.contextPath}/TransportController?action=listDriver">Add
												Driver</a></li>
										<li><a
											href="${pageContext.request.contextPath}/TransportController?action=listDriverVehicleAllocation">Add
												Driver Vehicle Allocation</a></li>

										<li><a
											href="${pageContext.request.contextPath}/TransportController?action=listTransportDestination">Add
												Destination</a></li>
										<li><a
											href="${pageContext.request.contextPath}/TransportController?action=listVehicleDestinationAllocation">Transport
												Allocation</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Transport/TransportFeeCollection.jsp">Fees
												Collection</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Transport/TransportAllocationImport.jsp">Import</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Transport/SmsAlert.jsp">SMS
												Alert</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Admin/Transport/TransportReport.jsp">Report</a></li>
									</ul></li>

								<!-- Transport Ends -->



								<!--
								<li><a><i class="fa fa-clone"></i> Attendance
										Management <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								 <li><a><i class="fa fa-bug"></i> Examination <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> Human Resource
										Management <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> Stock Management <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> Accounting <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> Library Management
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> Messages/SMS <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> Reports <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
										<li><a href="#"></a></li>
									</ul></li>
								<li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#level1_1">Level One</a></li>
										<li><a>Level One<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li class="sub_menu"><a href="level2.html">Level
														Two</a></li>
												<li><a href="#level2_1">Level Two</a></li>
												<li><a href="#level2_2">Level Two</a></li>
											</ul></li>
										<li><a href="#level1_2">Level One</a></li>
									</ul></li> -->
							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->
				</div>
			</div>
			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu fixed-top">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img
									src="${pageContext.request.contextPath}/Images/devil.jpg"
									alt="">Devil <span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="javascript:;"> Profile</a></li>
									<li><a href="javascript:;"> <span
											class="badge bg-red pull-right">50%</span> <span>Settings</span>
									</a></li>
									<li><a href="javascript:;">Help</a></li>
									<li><a href="login.html"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <!-- <i class="fa fa-bell-o"></i> -->
									<img src="${pageContext.request.contextPath}/Images/bell.png"
									width="28" height="32" /> <span class="badge bg-orange">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">
									<li><a> <span class="image"><img
												src="${pageContext.request.contextPath}/Images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="${pageContext.request.contextPath}/Images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="${pageContext.request.contextPath}/Images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="${pageContext.request.contextPath}/Images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li>
										<div class="text-center">
											<a> <strong>See All Alerts</strong> <i
												class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <!-- <i class="fa fa-envelope-o"></i> -->
									<img
									src="${pageContext.request.contextPath}/Images/message.png"
									width="28" height="32" /> <span class="badge bg-green">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">
									<li><a> <span class="image"><img
												src="${pageContext.request.contextPath}/Images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="${pageContext.request.contextPath}/Images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="${pageContext.request.contextPath}/Images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>

									<li>
										<div class="text-center">
											<a> <strong>See All Alerts</strong> <i
												class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->
			<!--  </div>
    </div> -->