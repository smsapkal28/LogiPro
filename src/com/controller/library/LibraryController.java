package com.controller.library;

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

import com.dao.library.LibraryBookDamagedDao;
import com.dao.library.LibraryBookDelayReturnFineDao;
import com.dao.library.LibraryBookDetailDao;
import com.dao.library.LibraryBookIssuedDetailDao;
import com.dao.library.LibraryBookNotReturnDao;
import com.dao.library.LibraryDetailDao;
import com.dao.library.LibrarySettingDao;
import com.dao.library.LibraryStudentRegistrationDao;
import com.dao.student.StudentEnrolPersonalDetailDao;
import com.entity.library.LibraryBookDamagedEntity;
import com.entity.library.LibraryBookDelayReturnFineEntity;
import com.entity.library.LibraryBookDetailEntity;
import com.entity.library.LibraryBookIssuedDetailEntity;
import com.entity.library.LibraryBookNotReturnEntity;
import com.entity.library.LibraryDetailEntity;
import com.entity.library.LibrarySettingEntity;
import com.entity.library.LibraryStudentRegistrationEntity;
import com.entity.student.StudentEnrolPersonalDetailEntity;

@WebServlet(description = "LibraryController", urlPatterns = { "/LibraryController" })
public class LibraryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LibraryController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {

		case "listLibrary":
			System.out.println("Calling List Library method");
			listLibraryDetail(request, response);
			break;
		case "listLibraryBook":
			System.out.println("Calling listLibraryBook method");
			listLibraryBookDetail(request, response);
			break;

		case "listLibrarySetting":
			System.out.println("Calling listLibrarySetting method");
			listLibrarySettingDetail(request, response);
			break;

		case "listLibraryStudentRegistration":
			System.out.println("Calling List Library method");
			listLibraryStudentRegistrationDetail(request, response);
			break;

		case "listLibraryStudentBookIssuedDetail":
			System.out.println("Calling List Library method");
			listLibraryStudentBookIssuedDetail(request, response);
			break;

		case "listLibraryStudentBookReturn":
			System.out.println("Calling List Library book return method");
			listLibraryStudentBookReturn(request, response);
			break;

		case "listLibraryDamagedBook":
			System.out.println("Calling List Library book return method");
			listLibraryBookDamagedDetail(request, response);
			break;

		case "listLibraryStudentUnableToReturnBook":
			System.out.println("Calling List Library book return method");
			listLibraryStudentUnableToReturnBook(request, response);
			break;

		case "listLibraryCollection":
			System.out.println("Calling List Library book return method");
			listLibraryCollection(request, response);
			break;

		case "listLibraryDelayReturnCollection":
			System.out.println("Calling List Library book return method");
			listLibraryDelayReturnCollection(request, response);
			break;

		case "listLibraryNotReturnCollection":
			System.out.println("Calling List Library book return method");
			listLibraryNotReturnCollection(request, response);
			break;

		case "listLibraryExpanse":
			System.out.println("Calling List Library book return method");
			listLibraryExpanse(request, response);
			break;

		case "listLibraryLoss":
			System.out.println("Calling List Library book return method");
			listLibraryLoss(request, response);
			break;

		default:
			response.sendRedirect("Admin/AdminDashboard.jsp");
		}
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {

		case "AddLibrary":
			System.out.println("Calling add Library method");
			addLibraryDetail(request, response);
			break;

		case "AddLibrarySetting":
			System.out.println("Calling add AddLibrarySetting method");
			addLibrarySettingDetail(request, response);
			break;

		case "AddLibraryStudentDetail":
			System.out.println("Calling add AddLibrarySetting method");
			addLibraryStudentDetail(request, response);
			break;

		case "AddLibraryBook":
			System.out.println("Calling add book method");
			addLibraryBookDetail(request, response);
			break;

		case "AddLibraryBookIssuedDetail":
			System.out.println("Calling add book method");
			addLibraryBookIssuedDetail(request, response);
			break;

		case "AddReturnDelayDetail":
			System.out.println("Calling add book method");
			addReturnDelayDetail(request, response);
			break;

		case "AddLibraryBookDamagedDetail":
			System.out.println("Calling add book damage method");
			addLibraryBookDamagedDetail(request, response);
			break;

		case "AddNotReturnDetail":
			System.out.println("Calling add book damage method");
			addBookNotReturnDetail(request, response);
			break;

		case "DeleteLibrary":
			System.out.println("Calling add book damage method");
			deleteLibrary(request, response);
			break;

		case "DeleteLibrarySetting":
			System.out.println("Calling add book damage method");
			deleteLibrarySetting(request, response);
			break;

		case "DeleteLibraryStudent":
			System.out.println("Calling add book damage method");
			deleteLibraryStudent(request, response);
			break;

		case "DeleteLibraryBook":
			System.out.println("Calling add book damage method");
			deleteLibraryBook(request, response);
			break;

		case "UpdateLibrary":
			System.out.println("Calling add book damage method");
			updateLibrary(request, response);
			break;
			
		case "UpdateLibrarySetting":
			System.out.println("Calling add book damage method");
			updateLibrarySetting(request, response);
			break;

		case "UpdateLibraryStudentDetail":
			System.out.println("Calling add AddLibrarySetting method");
			updateLibraryStudentDetail(request, response);
			break;
			
		case "UpdateLibraryBook":
			System.out.println("Calling add book method");
			updateLibraryBook(request, response);
			break;
			
		case "UpdateLibraryBookDamage":
			System.out.println("Calling update book damage method");
			updateLibraryBookDamagedDetail(request, response);
			break;
			
		default:
			response.sendRedirect("Admin/AdminDashboard.jsp");
		}
	}// doPost


	// ============================Add Section======================
	private void addLibraryDetail(HttpServletRequest request, HttpServletResponse response) {
		try {
			// fetching value from field

			String lib_Name = request.getParameter("library_Name");
			String lib_Code = request.getParameter("library_Code");

			// Creating entity object
			LibraryDetailEntity entity = new LibraryDetailEntity(lib_Name, lib_Code);
			// Creating dao object and calling method
			LibraryDetailDao dao = new LibraryDetailDao();
			dao.addLibraryDetail(entity);
			System.out.println("After insert calling sendRedirect to library controller to display");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibrary");
		} catch (IOException e) {

			e.printStackTrace();
		}

	}// addLibraryDetail

	private void addLibraryBookDetail(HttpServletRequest request, HttpServletResponse response) {

		try {
			// fetching value from field
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			String book_Name = request.getParameter("book_Name");
			String book_Edition = request.getParameter("book_Edition");
			String book_Aurthor = request.getParameter("book_Aurthor");
			String book_Publisher = request.getParameter("book_Publisher");
			float book_Price = Float.parseFloat(request.getParameter("book_Price"));
			int book_Quantity = Integer.parseInt(request.getParameter("book_Quantity"));
			String purchase_Date2 = request.getParameter("purchase_Date");

			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");

			Date purchase_Date = sdf.parse(purchase_Date2);

			// Creating entity object
			LibraryBookDetailEntity entity = new LibraryBookDetailEntity(lib_Id, book_Name, book_Edition, book_Aurthor,
					book_Publisher, book_Price, book_Quantity, purchase_Date);

			// Creating Dao object and calling method
			LibraryBookDetailDao dao = new LibraryBookDetailDao();
			dao.addLibraryBookDetail(entity);
			System.out.println("After insert calling sendRedirect to library controller to display");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibraryBook");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// addLibraryBookDetail

	private void addLibrarySettingDetail(HttpServletRequest request, HttpServletResponse response) {

		try {
			// fetching value from field
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			float return_Delay_Fine = Float.parseFloat(request.getParameter("return_Delay_Fine"));
			int book__Issue_Duration = Integer.parseInt(request.getParameter("book__Issue_Duration"));
			int return_Delay = Integer.parseInt(request.getParameter("return_Delay"));

			// Creating Entity object
			LibrarySettingEntity entity = new LibrarySettingEntity(lib_Id, book__Issue_Duration, return_Delay,
					return_Delay_Fine);
			// Creating Dao object and calling insert method
			LibrarySettingDao dao = new LibrarySettingDao();
			dao.addLibrarySettingDetail(entity);

			System.out.println("After insert calling sendRedirect to library controller to display");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibrarySetting");
		} catch (IOException e) {

			e.printStackTrace();
		}

	}// addLibrarySettingDetail

	private void addLibraryBookIssuedDetail(HttpServletRequest request, HttpServletResponse response) {
		try {
			// fetching value from field
			int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			int book_Id = Integer.parseInt(request.getParameter("book_Id"));
			int duration = new LibrarySettingDao().getLibrarySettingDetailByLibId(lib_Id).getIssue_Duration();
			Date issue_Date = new Date();
			Calendar c = Calendar.getInstance();

			c.setTime(issue_Date);
			// Number of Days to add
			c.add(Calendar.DAY_OF_MONTH, duration);
			Date return_Date = c.getTime();

			// Creating entity object
			LibraryBookIssuedDetailEntity entity = new LibraryBookIssuedDetailEntity(stud_Id, book_Id, lib_Id,
					issue_Date, return_Date);
			// Creating Dao object and calling ADD method
			LibraryBookIssuedDetailDao dao = new LibraryBookIssuedDetailDao();
			dao.addLibraryBookIssuedDetail(entity);
			System.out.println("After insertion redirecting to display page");

			response.sendRedirect(
					request.getContextPath() + "/LibraryController?action=listLibraryStudentBookIssuedDetail");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// addLibraryBookIssuedDetail

	private void addLibraryStudentDetail(HttpServletRequest request, HttpServletResponse response) {
		// fetching value from field
		try {
			int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
			String stud_Name = request.getParameter("stud_Name");
			String stud_Contact = request.getParameter("stud_Contact");
			String stud_Email = request.getParameter("stud_Email");
			String stud_Reg_No = "LIBREG" + (stud_Name.replaceAll("\\s", "")).toUpperCase() + "00"
					+ new LibraryStudentRegistrationDao().getStudentRegRowCounts() + 1;
			// Creating entity obj
			LibraryStudentRegistrationEntity entity = new LibraryStudentRegistrationEntity(stud_Reg_No, stud_Id,
					stud_Name, stud_Contact, stud_Email);
			// Creating Dao Obj And Calling insert method
			LibraryStudentRegistrationDao dao = new LibraryStudentRegistrationDao();
			dao.addLibraryStudentDetail(entity);

			System.out.println("After insert redirecting to display");

			response.sendRedirect(
					request.getContextPath() + "/LibraryController?action=listLibraryStudentRegistration");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// addLibraryStudentDetail

	private void addReturnDelayDetail(HttpServletRequest request, HttpServletResponse response) {
		// fetching value from field
		try {
			int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			int book_Id = Integer.parseInt(request.getParameter("book_Id"));
			int issue_Id = Integer.parseInt(request.getParameter("issue_Id"));
			int delay_Day = Integer.parseInt(request.getParameter("delay_Day"));
			int delay_Time = Integer.parseInt(request.getParameter("delay_Time"));
			float fine_Amount = Float.parseFloat(request.getParameter("fine_Amount"));

			// Creting LibraryBookIssuedDetailDao and calling update to bookissue record
			LibraryBookIssuedDetailDao dao = new LibraryBookIssuedDetailDao();
			dao.updateBookReturnStatusByIssueId(issue_Id);

			// Creating LibraryBookDetailDao dao and updating book return
			LibraryBookDetailDao dao2 = new LibraryBookDetailDao();
			dao2.updateBookReturnByBookId(book_Id);
			// checking is fine is aplicable or not
			if (delay_Day > delay_Time) {

				// Creating LibraryBookDelayReturnFineEntity obj
				LibraryBookDelayReturnFineEntity entity = new LibraryBookDelayReturnFineEntity(stud_Id, book_Id, lib_Id,
						issue_Id, delay_Day, fine_Amount);
				// Creating LibraryBookDelayReturnFineDao obj and calling insert method
				LibraryBookDelayReturnFineDao dao3 = new LibraryBookDelayReturnFineDao();
				dao3.addLibraryBookDelayreturnDetail(entity);
			}
			System.out.println("redirecting to display page");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibraryStudentBookReturn");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// addReturnDelayDetail

	private void addLibraryBookDamagedDetail(HttpServletRequest request, HttpServletResponse response) {
		// fetching value from field
		try {
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			int book_Id = Integer.parseInt(request.getParameter("book_Id"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));

			// Creating entity obj
			LibraryBookDamagedEntity entity = new LibraryBookDamagedEntity(lib_Id, book_Id, quantity, new Date());
			// Creating dao object and calling insert method
			LibraryBookDamagedDao dao = new LibraryBookDamagedDao();
			dao.addLibraryBookDamegedDetail(entity);

			// Creating Bookdetail dao and updating damage book detail
			LibraryBookDetailDao dao2 = new LibraryBookDetailDao();
			dao2.updateBookDamagedByBookId(book_Id, quantity);

			System.out.println("redirecting to display page");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibraryDamagedBook");

		} catch (IOException e) {

			e.printStackTrace();
		}

	}// addLibraryBookDamagedDetail

	private void addBookNotReturnDetail(HttpServletRequest request, HttpServletResponse response) {

		try {
			// fetching value from field
			int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			int book_Id = Integer.parseInt(request.getParameter("book_Id"));
			int issue_Id = Integer.parseInt(request.getParameter("issue_Id"));
			// int delay_Day = Integer.parseInt(request.getParameter("delay_Day"));
			// int delay_Time = Integer.parseInt(request.getParameter("delay_Time"));
			float fine_Amount = Float.parseFloat(request.getParameter("fine_Amount"));

			// Creating entity object
			LibraryBookNotReturnEntity entity = new LibraryBookNotReturnEntity(stud_Id, lib_Id, book_Id, issue_Id,
					fine_Amount);
			// Creating dao and calling insert method
			LibraryBookNotReturnDao dao = new LibraryBookNotReturnDao();
			dao.addLibraryBookNotreturnDetail(entity);

			// Creating Bookdetail dao and updating damage book detail
			LibraryBookDetailDao dao2 = new LibraryBookDetailDao();
			dao2.updateBookNotReturnByBookId(book_Id, 1);

			// Creting LibraryBookIssuedDetailDao and calling update to bookissue record
			LibraryBookIssuedDetailDao dao3 = new LibraryBookIssuedDetailDao();
			dao3.updateBookReturnStatusByIssueId(issue_Id);

			System.out.println("redirecting to display page");
			response.sendRedirect(
					request.getContextPath() + "/LibraryController?action=listLibraryStudentUnableToReturnBook");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// ===============Update Section=======================
	private void updateLibrary(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("Inside Delete Library");
			// fetching value from field

			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			String lib_Name = request.getParameter("library_Name");
			String lib_Code = request.getParameter("library_Code");

			// Creating entity object
			LibraryDetailEntity entity = new LibraryDetailEntity(lib_Id,lib_Name, lib_Code);
			// Creating dao object and calling method
			LibraryDetailDao dao = new LibraryDetailDao();
			dao.updateLibraryDetail(entity);
			System.out.println("After insert calling sendRedirect to library controller to display");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibrary");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// updateLibrary
	
	

	private void updateLibrarySetting(HttpServletRequest request, HttpServletResponse response) {
		try {
			// fetching value from field
			int setting_Id = Integer.parseInt(request.getParameter("setting_Id"));
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			float return_Delay_Fine = Float.parseFloat(request.getParameter("return_Delay_Fine"));
			int book__Issue_Duration = Integer.parseInt(request.getParameter("book__Issue_Duration"));
			int return_Delay = Integer.parseInt(request.getParameter("return_Delay"));

			// Creating Entity object
			LibrarySettingEntity entity = new LibrarySettingEntity(setting_Id,lib_Id, book__Issue_Duration, return_Delay,
					return_Delay_Fine);
			// Creating Dao object and calling insert method
			LibrarySettingDao dao = new LibrarySettingDao();
			dao.updateLibrarySetting(entity);

			System.out.println("After insert calling sendRedirect to library controller to display");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibrarySetting");
		} catch (IOException e) {

			e.printStackTrace();
		}

	}//updateLibrarySetting
	
	
	private void updateLibraryStudentDetail(HttpServletRequest request, HttpServletResponse response) {
		// fetching value from field
		try {
			
			
			int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));
			String stud_Name = request.getParameter("stud_Name");
			String stud_Contact = request.getParameter("stud_Contact");
			String stud_Email = request.getParameter("stud_Email");
			
			// Creating entity obj
			LibraryStudentRegistrationEntity entity = new LibraryStudentRegistrationEntity(stud_Id,  stud_Name, stud_Contact, stud_Email);
			// Creating Dao Obj And Calling insert method
			LibraryStudentRegistrationDao dao = new LibraryStudentRegistrationDao();
			dao.updateLibraryStudent(entity);

			System.out.println("After insert redirecting to display");

			response.sendRedirect(
					request.getContextPath() + "/LibraryController?action=listLibraryStudentRegistration");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// updateLibraryStudentDetail


	private void updateLibraryBook(HttpServletRequest request, HttpServletResponse response) {

		try {
			// fetching value from field
			int lib_Book_Id = Integer.parseInt(request.getParameter("lib_Book_Id"));
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			String book_Name = request.getParameter("book_Name");
			String book_Edition = request.getParameter("book_Edition");
			String book_Aurthor = request.getParameter("book_Aurthor");
			String book_Publisher = request.getParameter("book_Publisher");
			float book_Price = Float.parseFloat(request.getParameter("book_Price"));
			int book_Quantity = Integer.parseInt(request.getParameter("book_Quantity"));
			String purchase_Date2 = request.getParameter("purchase_Date");

			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");

			Date purchase_Date = sdf.parse(purchase_Date2);

			// Creating entity object
			LibraryBookDetailEntity entity = new LibraryBookDetailEntity(lib_Book_Id,lib_Id, book_Name, book_Edition, book_Aurthor,
					book_Publisher, book_Price, book_Quantity, purchase_Date);

			// Creating Dao object and calling method
			LibraryBookDetailDao dao = new LibraryBookDetailDao();
			dao.updateBookDetail(entity);
			System.out.println("After insert calling sendRedirect to library controller to display");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibraryBook");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// addLibraryBookDetail

	private void updateLibraryBookDamagedDetail(HttpServletRequest request, HttpServletResponse response) {
		// fetching value from field
		try {
			int damage_Id = Integer.parseInt(request.getParameter("damage_Id"));
			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));
			int book_Id = Integer.parseInt(request.getParameter("book_Id"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			int prev_Quantity = Integer.parseInt(request.getParameter("prev_Quantity"));

			// Creating entity obj
			LibraryBookDamagedEntity entity = new LibraryBookDamagedEntity(damage_Id,lib_Id, book_Id, quantity, new Date());
			// Creating dao object and calling insert method
			LibraryBookDamagedDao dao = new LibraryBookDamagedDao();
			dao.updateLibraryBookDamagedDetail(entity);

			// Creating Bookdetail dao and updating damage book detail
			LibraryBookDetailDao dao2 = new LibraryBookDetailDao();
			dao2.updateBookDamagedByBookId(book_Id, quantity-prev_Quantity);

			System.out.println("redirecting to display page");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibraryDamagedBook");

		} catch (IOException e) {

			e.printStackTrace();
		}

	}// addLibraryBookDamagedDetail
	// =======================Deletion Section=======================

	private void deleteLibrary(HttpServletRequest request, HttpServletResponse response) {
		try {

			System.out.println("Inside Delete Library");

			int lib_Id = Integer.parseInt(request.getParameter("lib_Id"));

			LibrarySettingDao settingDao = new LibrarySettingDao();
			settingDao.deleteLibrarySettingByLibraryId(lib_Id);
			LibraryBookDetailDao bookDao = new LibraryBookDetailDao();
			bookDao.deleteLibraryBookDetailByLibraryId(lib_Id);
			new LibraryBookIssuedDetailDao().deleteLibraryBookIssuedDetailByLibraryId(lib_Id);
			LibraryDetailDao dao = new LibraryDetailDao();
			dao.deleteLibraryById(lib_Id);

			System.out.println("redirecting to display page");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibrary");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// deleteLibrary

	private void deleteLibrarySetting(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("Inside Delete Library");

			int setting_Id = Integer.parseInt(request.getParameter("setting_Id"));
			LibrarySettingDao settingDao = new LibrarySettingDao();
			LibraryDetailDao dao = new LibraryDetailDao();
			List<LibrarySettingEntity> list = settingDao.getLibrarySettingFullDetails();
			for (LibrarySettingEntity setting : list) {
				dao.updateLibrarySettingStatus(setting.getLib_Id(), 0);
			}
			settingDao.deleteLibrarySettingById(setting_Id);

			System.out.println("redirecting to display page");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibrarySetting");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// deleteLibrarySetting

	private void deleteLibraryStudent(HttpServletRequest request, HttpServletResponse response) {
		try {

			System.out.println("Inside Delete Library");

			int stud_Id = Integer.parseInt(request.getParameter("stud_Id"));

			LibraryBookIssuedDetailDao issueDao = new LibraryBookIssuedDetailDao();
			issueDao.deleteLibraryBookIssuedDetailByStudentId(stud_Id);
			new LibraryBookNotReturnDao().deleteLibraryBookNotReturnDetailByStudentId(stud_Id);

			LibraryStudentRegistrationDao studDao = new LibraryStudentRegistrationDao();
			studDao.deleteLibraryStudentBy(stud_Id);

			System.out.println("redirecting to display page");

			response.sendRedirect(
					request.getContextPath() + "/LibraryController?action=listLibraryStudentRegistration");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// deleteLibraryStudent

	private void deleteLibraryBook(HttpServletRequest request, HttpServletResponse response) {

		try {

			System.out.println("Inside Delete Library");

			int book_Id = Integer.parseInt(request.getParameter("book_Id"));

			LibraryBookDetailDao bookDao = new LibraryBookDetailDao();
			bookDao.deleteLibraryBookDetailById(book_Id);

			System.out.println("redirecting to display page");

			response.sendRedirect(request.getContextPath() + "/LibraryController?action=listLibraryBook");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// deleteLibraryBook
		// ============================Listing Section======================

	private void listLibraryDetail(HttpServletRequest request, HttpServletResponse response) {

		try {
			System.out.println("Inside ListLibraryDetail Method");
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			request.setAttribute("libraryList", libraryList);
			request.getRequestDispatcher("Admin/Library/LibraryDetail.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// listLibraryDetail

	private void listLibraryBookDetail(HttpServletRequest request, HttpServletResponse response) {
		try {

			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();
			request.setAttribute("libraryBookList", libraryBookList);
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			request.setAttribute("libraryList", libraryList);
			request.getRequestDispatcher("Admin/Library/LibraryBookDetail.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// listLibraryBookDetail

	private void listLibrarySettingDetail(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			request.setAttribute("libraryList", libraryList);
			List<LibrarySettingEntity> librarySettingList = new LibrarySettingDao().getLibrarySettingFullDetails();
			request.setAttribute("librarySettingList", librarySettingList);
			request.getRequestDispatcher("Admin/Library/LibrarySettingDetail.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// listLibrarySettingDetail

	private void listLibraryStudentRegistrationDetail(HttpServletRequest request, HttpServletResponse response) {

		try {
			System.out.println("listing student  detail");
			List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
					.getLibraryStudentFullDetail();
			List<StudentEnrolPersonalDetailEntity> list = new StudentEnrolPersonalDetailDao()
					.getStudentEnrolledFullRecord();
			request.setAttribute("studentEnrolledRecord", list);
			request.setAttribute("libraryStudentList", libraryStudentList);

			request.getRequestDispatcher("Admin/Library/LibraryStudentRegistration.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// listLibraryStudentRegistrationDetail

	private void listLibraryStudentBookIssuedDetail(HttpServletRequest request, HttpServletResponse response) {
		try {

			System.out.println("listing student book issued detail");
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			request.setAttribute("libraryList", libraryList);
			List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
					.getLibraryStudentFullDetail();
			request.setAttribute("libraryStudentList", libraryStudentList);
			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();
			request.setAttribute("libraryBookList", libraryBookList);

			List<LibraryBookIssuedDetailEntity> listBookIssued = new LibraryBookIssuedDetailDao()
					.getLibraryBookIssuedFullDetail();
			request.setAttribute("listBookIssued", listBookIssued);
			request.getRequestDispatcher("Admin/Library/LibraryStudentBookIssue.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// listLibraryStudentBookIssuedDetail

	private void listLibraryStudentBookReturn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("listing student book issued detail");
		List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
		request.setAttribute("libraryList", libraryList);
		List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
				.getLibraryStudentFullDetail();
		request.setAttribute("libraryStudentList", libraryStudentList);
		List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();
		request.setAttribute("libraryBookList", libraryBookList);

		List<LibraryBookIssuedDetailEntity> listBookIssued = new LibraryBookIssuedDetailDao()
				.getLibraryBookIssuedFullDetail();
		request.setAttribute("listBookIssued", listBookIssued);
		request.getRequestDispatcher("Admin/Library/LibraryStudentBookReturn.jsp").forward(request, response);
	}// listLibraryStudentBookReturn

	private void listLibraryBookDamagedDetail(HttpServletRequest request, HttpServletResponse response) {
		try {

			System.out.println("listing student book issued detail");
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			request.setAttribute("libraryList", libraryList);

			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();
			request.setAttribute("libraryBookList", libraryBookList);

			List<LibraryBookDamagedEntity> listBookDamaged = new LibraryBookDamagedDao()
					.getLibraryBookDamagedFullDetail();
			request.setAttribute("listBookDamaged", listBookDamaged);
			request.getRequestDispatcher("Admin/Library/LibraryBookDamaged.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// listLibraryBookDamagedDetail

	private void listLibraryStudentUnableToReturnBook(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("listing student book issued detail");
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			request.setAttribute("libraryList", libraryList);
			List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
					.getLibraryStudentFullDetail();
			request.setAttribute("libraryStudentList", libraryStudentList);
			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();
			request.setAttribute("libraryBookList", libraryBookList);

			List<LibraryBookIssuedDetailEntity> listBookIssued = new LibraryBookIssuedDetailDao()
					.getLibraryBookIssuedFullDetail();
			request.setAttribute("listBookIssued", listBookIssued);

			request.getRequestDispatcher("Admin/Library/LibraryStudentBookNotReturn.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// listLibraryStudentUnableToReturnBook

	private void listLibraryCollection(HttpServletRequest request, HttpServletResponse response) {
		try {

			// setting record in list
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			List<LibraryBookNotReturnEntity> libraryBookNotReturnedList = new LibraryBookNotReturnDao()
					.getLibraryBookNotReturnDetail();
			List<LibraryBookDelayReturnFineEntity> libraryBookDelayReturnedList = new LibraryBookDelayReturnFineDao()
					.getLibraryBookDelayReturnDetail();
			List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
					.getLibraryStudentFullDetail();

			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();

			// setting attributes
			request.setAttribute("libraryList", libraryList);
			request.setAttribute("libraryBookNotReturnedList", libraryBookNotReturnedList);
			request.setAttribute("libraryBookDelayReturnedList", libraryBookDelayReturnedList);
			request.setAttribute("libraryStudentList", libraryStudentList);
			request.setAttribute("libraryBookList", libraryBookList);
			System.out.println("Redirecting to library collection");

			request.getRequestDispatcher("Admin/Library/LibraryCollection.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// listLibraryCollection

	private void listLibraryNotReturnCollection(HttpServletRequest request, HttpServletResponse response) {
		try {

			// setting record in list
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			List<LibraryBookNotReturnEntity> libraryBookNotReturnedList = new LibraryBookNotReturnDao()
					.getLibraryBookNotReturnDetail();

			List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
					.getLibraryStudentFullDetail();

			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();

			// setting attributes
			request.setAttribute("libraryList", libraryList);
			request.setAttribute("libraryBookNotReturnedList", libraryBookNotReturnedList);

			request.setAttribute("libraryStudentList", libraryStudentList);
			request.setAttribute("libraryBookList", libraryBookList);
			System.out.println("Redirecting to library collection");

			request.getRequestDispatcher("Admin/Library/LibraryBookNotReturn.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// listLibraryNotReturnCollection

	private void listLibraryDelayReturnCollection(HttpServletRequest request, HttpServletResponse response) {
		try {

			// setting record in list
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();

			List<LibraryBookDelayReturnFineEntity> libraryBookDelayReturnedList = new LibraryBookDelayReturnFineDao()
					.getLibraryBookDelayReturnDetail();
			List<LibraryStudentRegistrationEntity> libraryStudentList = new LibraryStudentRegistrationDao()
					.getLibraryStudentFullDetail();

			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();

			// setting attributes
			request.setAttribute("libraryList", libraryList);

			request.setAttribute("libraryBookDelayReturnedList", libraryBookDelayReturnedList);
			request.setAttribute("libraryStudentList", libraryStudentList);
			request.setAttribute("libraryBookList", libraryBookList);
			System.out.println("Redirecting to library collection");

			request.getRequestDispatcher("Admin/Library/LibraryBookDelayReturn.jsp").forward(request, response);
		} catch (ServletException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}// listLibraryDelayReturnCollection

	private void listLibraryExpanse(HttpServletRequest request, HttpServletResponse response) {
		try {
			// setting record in list
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();

			// setting attributes
			request.setAttribute("libraryList", libraryList);
			request.setAttribute("libraryBookList", libraryBookList);

			System.out.println("Redirecting to library collection");
			request.getRequestDispatcher("Admin/Library/LibraryExpanse.jsp").forward(request, response);
		} catch (ServletException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}// listLibraryExpanse

	private void listLibraryLoss(HttpServletRequest request, HttpServletResponse response) {

		try {
			// setting record in list
			List<LibraryDetailEntity> libraryList = new LibraryDetailDao().getLibraryFullDetails();
			List<LibraryBookDetailEntity> libraryBookList = new LibraryBookDetailDao().getLibraryBookFullDetail();
			List<LibraryBookDamagedEntity> listBookDamaged = new LibraryBookDamagedDao()
					.getLibraryBookDamagedFullDetail();

			// setting attributes
			request.setAttribute("libraryList", libraryList);
			request.setAttribute("libraryBookList", libraryBookList);
			request.setAttribute("listBookDamaged", listBookDamaged);

			System.out.println("Redirecting to library collection");
			request.getRequestDispatcher("Admin/Library/LibraryLoss.jsp").forward(request, response);
		} catch (ServletException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}// listLibraryLoss

}
