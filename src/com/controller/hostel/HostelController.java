package com.controller.hostel;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.hostel.HostelCategoryDao;
import com.dao.hostel.HostelDetailDao;
import com.dao.hostel.HostelFacilityDao;
import com.dao.hostel.HostelInventoryCategoryDao;
import com.dao.hostel.HostelInventoryDetailDao;
import com.dao.hostel.HostelRoomDetailDao;
import com.dao.hostel.HostelStudentDetailDao;
import com.dao.hostel.HostelStudentFacilityAllocationDao;
import com.dao.hostel.HostelStudentRoomAllocationDetailDao;
import com.dao.student.StudentEnrolPersonalDetailDao;
import com.entity.hostel.HostelCategoryEntity;
import com.entity.hostel.HostelDetailEntity;
import com.entity.hostel.HostelFacilityEntity;
import com.entity.hostel.HostelInventoryCategoryEntity;
import com.entity.hostel.HostelInventoryDetailEntity;
import com.entity.hostel.HostelRoomDetailEntity;
import com.entity.hostel.HostelStudentDetailEntity;
import com.entity.hostel.HostelStudentFacilityAllocationEntity;
import com.entity.hostel.HostelStudentRoomAllocationDetailEntity;
import com.entity.student.StudentEnrolPersonalDetailEntity;

/**
 * @author Devil
 *
 */
@WebServlet(description = "HostelController", urlPatterns = { "/HostelController" })
public class HostelController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HostelController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {

		case "listHostelCategory":
			listHostelCategory(request, response);

			break;
		case "listHostelDetail":
			listHostelDetail(request, response);
			break;

		case "listHostelRoomDetail":
			listHostelRoomDetail(request, response);
			break;

		case "HostelRoomSetting":
			redirectHostelRoomSettingPage(request, response);
			break;

		case "listHostelRoomAllocationDetail":
			listHostelRoomAllocationDetail(request, response);
			break;

		case "listHostelInventoryCategory":
			listHostelInventoryCategory(request, response);

			break;
		case "listHostelInventoryDetail":
			listHostelInventoryDetail(request, response);

			break;
		case "listHostelFacility":
			listHostelFacilityDetail(request, response);

			break;
		case "listHostelStudent":
			listHostelStudentDetail(request, response);

			break;

		case "listHostelStudentRoom":
			listHostelStudentRoomDetail(request, response);
			break;

		case "listHostelStudentFacilityAllocation":
			listHostelStudentFacilityAllocation(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetching value from form hidden field
		String action = request.getParameter("action");

		switch (action) {
		case "AddHostelCategory":
			addHostelCategory(request, response);

			break;
		case "AddHostelDetail":
			addHostelDetail(request, response);

			break;
		case "AddHostelRoomDetail":
			addHostelRoomDetail(request, response);

			break;

		case "AddInventoryCategory":
			addInventoryCategory(request, response);

			break;
		case "AddInventoryDetail":
			addInventoryDetail(request, response);

			break;
		case "AddHostelFacility":
			addHostelFacilityDetail(request, response);

			break;
		case "AddHostelStudentDetail":
			addHostelStudentDetail(request, response);

			break;

		case "AddHostelStudentRoomAllocationDetail":
			addHostelStudentRoomAllocationDetail(request, response);

			break;

		case "AddHostelStudentFacilityAllocationDetail":
			addHostelStudentFacilityAllocationDetail(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}// doPost

	// =================================================================Adding
	// Section=========================================================
	private void addHostelCategory(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching value from from field");
		String hostel_Category_Name = request.getParameter("hostel_Category_Name");
		String hostel_Category_Code = request.getParameter("hostel_Category_Code");

		// creating entity object
		HostelCategoryEntity entity = new HostelCategoryEntity(hostel_Category_Name, hostel_Category_Code);
		// Creating Dao object and calling its method
		HostelCategoryDao dao = new HostelCategoryDao();
		dao.addHostelCategory(entity);
		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelCategory");
	}// addHostelCategory

	private void addHostelDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {

		System.out.println("fetching value from from field");
		int hostel_Type = Integer.parseInt(request.getParameter("hostel_Type"));
		String hostel_No = request.getParameter("hostel_No");
		String hostel_For = request.getParameter("hostel_For");
		String hostel_Name = request.getParameter("hostel_Name");
		String hostel_Contact = request.getParameter("hostel_Contact");
		int No_Of_Floor = Integer.parseInt(request.getParameter("No_Of_Floor"));
		int No_Of_Room = Integer.parseInt(request.getParameter("No_Of_Room"));
		String warden_Name = request.getParameter("warden_Name");
		String warden_Contact = request.getParameter("warden_Contact");
		String owner_Name = request.getParameter("owner_Name");
		String owner_Contact = request.getParameter("owner_Contact");
		String hostel_Address = request.getParameter("hostel_Address");
		String warden_Address = request.getParameter("warden_Address");

		// Creating Entity Object
		HostelDetailEntity entity = new HostelDetailEntity(hostel_Type, hostel_For, hostel_No, hostel_Name,
				hostel_Contact, No_Of_Floor, No_Of_Room, warden_Name, warden_Contact, owner_Name, owner_Contact,
				warden_Address, hostel_Address);
		// Creating Dao Onject And Calling insert Method
		HostelDetailDao dao = new HostelDetailDao();
		dao.addHostelDetail(entity);

		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelDetail");
	}// addHostelDetail

	private void addHostelRoomDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching value from from field");
		int hostel_Id = Integer.parseInt(request.getParameter("hostel_Id"));
		int hostel_Room = Integer.parseInt(request.getParameter("hostel_Room"));
		String room_Name = request.getParameter("room_Name");
		int allocated_Beds = 0;
		int no_Of_Beds = Integer.parseInt(request.getParameter("no_Of_Beds"));
		for (int i = 1; i <= hostel_Room; i++) {
			String name = room_Name;
			// Creating Entity Object
			HostelRoomDetailEntity entity = new HostelRoomDetailEntity(hostel_Id, no_Of_Beds, allocated_Beds, name + i);
			// Creating Dao Onject And Calling insert Method
			HostelRoomDetailDao dao = new HostelRoomDetailDao();
			dao.addHostelRoomDetail(entity);
		}

		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelRoomDetail");
	}// addHostelRoomDetail

	private void addInventoryCategory(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching value from from field");
		String inventory_Category_Name = request.getParameter("inventory_Category_Name");
		String inventory_Category_Code = request.getParameter("inventory_Category_Code");
		String facility_For_Student = "YES";
		if (request.getParameter("facility_For_Student") == null) {
			facility_For_Student = "NO";
		}
		// Creating Entity Object
		HostelInventoryCategoryEntity entity = new HostelInventoryCategoryEntity(inventory_Category_Name,
				inventory_Category_Code, facility_For_Student);
		// Creating Dao Onject And Calling insert Method
		HostelInventoryCategoryDao dao = new HostelInventoryCategoryDao();
		dao.addHostelInventoryCategoryDetail(entity);
		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelInventoryCategory");
	}

	private void addInventoryDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching value from from field");
		int inv_Cat = Integer.parseInt(request.getParameter("inv_Cat"));
		int quality = Integer.parseInt(request.getParameter("quality"));
		// Creating Entity Object
		HostelInventoryDetailEntity entity = new HostelInventoryDetailEntity(inv_Cat, quality);
		// Creating Dao Onject And Calling insert Method
		HostelInventoryDetailDao dao = new HostelInventoryDetailDao();
		dao.addHostelInventoryDetail(entity);
		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelInventoryDetail");
	}

	private void addHostelFacilityDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {

		System.out.println("fetching value from from field");
		int hostel_Id = Integer.parseInt(request.getParameter("hostel_Id"));

		String hostel_Facility1[] = request.getParameterValues("hostel_Facility");
		String hostel_Facility = null;
		for (String s : hostel_Facility1) {
			if (hostel_Facility == null) {
				hostel_Facility = s;
			} else {
				hostel_Facility = hostel_Facility + "," + s;
			}
		}

		// Creating Entity Object
		HostelFacilityEntity entity = new HostelFacilityEntity(hostel_Id, hostel_Facility);
		// Creating Dao Onject And Calling insert Method
		HostelFacilityDao dao = new HostelFacilityDao();
		dao.addHostelFacilityDetail(entity);
		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelFacility");

	}

	private void addHostelStudentDetail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching value from from field");
		try {
			int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
			String stud_Name = request.getParameter("stud_Name");
			String stud_Contact = request.getParameter("stud_Contact");
			String gaurdian_Name = request.getParameter("gaurdian_Name");
			String gaurdian_Contact = request.getParameter("gaurdian_Contact");
			String enroll_Date2 = request.getParameter("enroll_Date");

			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
			Date enroll_Date;

			enroll_Date = sdf.parse(enroll_Date2);

			Calendar c = Calendar.getInstance();
			c.setTime(enroll_Date);
			c.add(Calendar.YEAR, 1);
			Date renewal_Date = c.getTime();

			// Creating Entity Object
			HostelStudentDetailEntity entity = new HostelStudentDetailEntity(stud_Id, stud_Name, stud_Contact,
					gaurdian_Name, gaurdian_Contact, enroll_Date, renewal_Date);
			// Creating Dao Onject And Calling insert Method
			HostelStudentDetailDao dao = new HostelStudentDetailDao();
			dao.addHostelStudentDetail(entity);
			System.out.println("after insert operation redirecting to list view page");
			response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelStudent");

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// addHostelStudentDetail

	private void addHostelStudentRoomAllocationDetail(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		System.out.println("fetching value from from field");

		int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
		int hostel_Name = Integer.parseInt(request.getParameter("hostel_Name"));
		int room_Id = Integer.parseInt(request.getParameter("room_Id"));

		// Creating Entity Object
		HostelStudentRoomAllocationDetailEntity entity = new HostelStudentRoomAllocationDetailEntity(stud_Id,
				hostel_Name, room_Id);
		// Creating Dao Onject And Calling insert Method
		HostelStudentRoomAllocationDetailDao dao = new HostelStudentRoomAllocationDetailDao();
		dao.addHostelStudentRoomAllocation(entity);
		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(request.getContextPath() + "/HostelController?action=listHostelStudentRoom");
	}

	private void addHostelStudentFacilityAllocationDetail(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		System.out.println("fetching value from from field");
		int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
		String hostel_Facility1[] = request.getParameterValues("hostel_Facility");
		String facility_Id = null;
		for (String s : hostel_Facility1) {
			HostelInventoryDetailEntity e = new HostelInventoryDetailDao().getHostelInventoryFullDetailByCatId(Integer.parseInt(s));
			 new HostelInventoryDetailDao().updateHostelInventoryAllocationToStudent(e, 1);	
			
			if (facility_Id == null) {
				facility_Id = s;
			} else {
				facility_Id = facility_Id + "," + s;
			}
		}

		// creating entity object
		HostelStudentFacilityAllocationEntity entity = new HostelStudentFacilityAllocationEntity(stud_Id, facility_Id);
		// creating dao and calling insert method
		HostelStudentFacilityAllocationDao dao = new HostelStudentFacilityAllocationDao();
		dao.addHostelStudentFacilityAllocationDetail(entity);
		System.out.println("after insert operation redirecting to list view page");
		response.sendRedirect(
				request.getContextPath() + "/HostelController?action=listHostelStudentFacilityAllocation");
	}// addHostelStudentFacilityAllocationDetail

	// =======================================================================Listing
	// Section===================================================

	private void listHostelCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside listHostelCategory Method");
		List<HostelCategoryEntity> hostelCategoryList = new HostelCategoryDao().getHostelCategoryFullDetails();
		request.setAttribute("hostelCategoryList", hostelCategoryList);
		request.getRequestDispatcher("Admin/Hostel/HostelCategory.jsp").forward(request, response);

	}

	private void listHostelDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside listHostelDetail Method");
		List<HostelCategoryEntity> hostelCategoryList = new HostelCategoryDao().getHostelCategoryFullDetails();
		List<HostelDetailEntity> hostelDetailList = new HostelDetailDao().getHostelFullDetails();

		request.setAttribute("hostelCategoryList", hostelCategoryList);
		request.setAttribute("hostelDetailList", hostelDetailList);
		request.getRequestDispatcher("Admin/Hostel/HostelDetail.jsp").forward(request, response);
	}

	private void listHostelRoomDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<HostelDetailEntity> hostelDetailList = new HostelDetailDao().getHostelFullDetailOfUnDefinedRooms();
		request.setAttribute("hostelDetailList", hostelDetailList);
		request.getRequestDispatcher("Admin/Hostel/HostelRoom.jsp").forward(request, response);
	}

	private void redirectHostelRoomSettingPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HostelDetailEntity hostelDetail = new HostelDetailDao()
				.getHostelFullDetailById(Integer.parseInt(request.getParameter("hostel_Id")));
		request.setAttribute("hostelDetail", hostelDetail);
		request.getRequestDispatcher("Admin/Hostel/HostelRoomDetail.jsp").forward(request, response);

	}

	private void listHostelRoomAllocationDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<HostelRoomDetailEntity> hostelRoomDetailList = new HostelRoomDetailDao().getHostelRoomFullDetail();
		List<HostelDetailEntity> hostelDetailList = new HostelDetailDao().getHostelFullDetails();
		request.setAttribute("hostelDetailList", hostelDetailList);
		request.setAttribute("hostelRoomDetailList", hostelRoomDetailList);
		request.getRequestDispatcher("Admin/Hostel/HostelRoomAllocationList.jsp").forward(request, response);
	}

	private void listHostelInventoryCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = new HostelInventoryCategoryDao()
				.getHostelInventoryCategoryFullDetails();
		request.setAttribute("hostelInventoryCategoryList", hostelInventoryCategoryList);
		request.getRequestDispatcher("Admin/Hostel/HostelInventoryCategory.jsp").forward(request, response);
	}

	private void listHostelInventoryDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = new HostelInventoryCategoryDao()
				.getHostelInventoryCategoryFullDetails();
		List<HostelInventoryDetailEntity> hostelInventoryDetailList = new HostelInventoryDetailDao()
				.getHostelInventoryFullDetail();
		request.setAttribute("hostelInventoryDetailList", hostelInventoryDetailList);
		request.setAttribute("hostelInventoryCategoryList", hostelInventoryCategoryList);
		request.getRequestDispatcher("Admin/Hostel/HostelInventoryDetail.jsp").forward(request, response);
	}

	private void listHostelFacilityDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = new HostelInventoryCategoryDao()
				.getHostelInventoryCategoryFullDetails();
		List<HostelDetailEntity> hostelDetailList = new HostelDetailDao().getHostelFullDetails();
		List<HostelFacilityEntity> hostelFacilityList = new HostelFacilityDao().getHostelFacilityFullDetails();

		request.setAttribute("hostelInventoryCategoryList", hostelInventoryCategoryList);
		request.setAttribute("hostelDetailList", hostelDetailList);
		request.setAttribute("hostelFacilityList", hostelFacilityList);
		request.getRequestDispatcher("Admin/Hostel/HostelFacilityDetail.jsp").forward(request, response);
	}

	private void listHostelStudentDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<HostelStudentDetailEntity> hostelStudentList = new HostelStudentDetailDao().getHostelStudentFullDetail();
		List<StudentEnrolPersonalDetailEntity> list = new StudentEnrolPersonalDetailDao()
				.getStudentEnrolledFullRecord();
		request.setAttribute("studentEnrolledRecord", list);
		request.setAttribute("hostelStudentList", hostelStudentList);
		request.getRequestDispatcher("Admin/Hostel/HostelStudentDetail.jsp").forward(request, response);
	}

	private void listHostelStudentRoomDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<HostelStudentDetailEntity> hostelStudentList = new HostelStudentDetailDao().getHostelStudentFullDetail();

		List<HostelStudentRoomAllocationDetailEntity> studentRoomAllocationList = new HostelStudentRoomAllocationDetailDao()
				.getHostelStudentRoomAllocationFullDetail();
		List<HostelRoomDetailEntity> hostelRoomDetailList = new HostelRoomDetailDao().getHostelRoomFullDetail();
		List<HostelDetailEntity> hostelDetailList = new HostelDetailDao().getHostelFullDetails();
		request.setAttribute("hostelDetailList", hostelDetailList);
		request.setAttribute("hostelRoomDetailList", hostelRoomDetailList);
		request.setAttribute("hostelStudentList", hostelStudentList);
		request.setAttribute("studentRoomAllocationList", studentRoomAllocationList);
		request.getRequestDispatcher("Admin/Hostel/HostelStudentRoomDetail.jsp").forward(request, response);

	}

	private void listHostelStudentFacilityAllocation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<HostelStudentDetailEntity> hostelStudentList = new HostelStudentDetailDao().getHostelStudentFullDetail();

		List<HostelInventoryCategoryEntity> hostelInventoryCategoryList = new HostelInventoryCategoryDao()
				.getHostelInventoryCategoryFullDetails();
		List<HostelStudentFacilityAllocationEntity> hostelStudentFacilityAllocationList = new HostelStudentFacilityAllocationDao()
				.getHostelStudentFacilityAllocationFullDetail();

		request.setAttribute("hostelInventoryCategoryList", hostelInventoryCategoryList);
		request.setAttribute("hostelStudentFacilityAllocationList", hostelStudentFacilityAllocationList);
		request.setAttribute("hostelStudentList", hostelStudentList);

		request.getRequestDispatcher("Admin/Hostel/HostelStudentFacilityAllocation.jsp").forward(request, response);

	}

}
