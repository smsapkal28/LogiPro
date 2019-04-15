package com.controller.course;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.course.CourseCategoryDao;
import com.dao.course.CourseMasterDao;
import com.entity.course.CourseCategoryEntity;
import com.entity.course.CourseEntity;

/**
 * Servlet implementation class CourseController
 */
@WebServlet(description = "CourseController", urlPatterns = { "/CourseController" })
public class CourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CourseController() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddCourseCategory":
			AddCourseCategory(request, response);
			break;
		case "AddCourseMaster":
			AddCourseMaster(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {
		case "listCourseRecord":

			listCourseCategoryFullRecord(request, response);
			break;

		case "listCourseMasterRecord":
			listCourseMasterFullRecord(request, response);

			break;
		case "listCourseMasterRecordById":
			listCourseMasterFullRecordById(request, response);

			break;
			
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}

	
	private void AddCourseCategory(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching Course Category value");
		String catName = request.getParameter("c_name");
		String catCode = request.getParameter("c_code");

		CourseCategoryEntity courseCategoryEntity = new CourseCategoryEntity(catName, catCode);
		System.out.println("calling dao");
		CourseCategoryDao cc = new CourseCategoryDao();
		cc.addCourseCategory(courseCategoryEntity);
		response.sendRedirect(request.getContextPath() + "/CourseController?action=listCourseRecord");
	}

	private void AddCourseMaster(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching Course Master value");

		int catId = Integer.parseInt(request.getParameter("category"));
		String cName = request.getParameter("c_name");
		String cCode = request.getParameter("c_code");
		String description = request.getParameter("desc");
		int semester = Integer.parseInt(request.getParameter("semester"));

		CourseEntity courseEntity = new CourseEntity(catId, cName, cCode, semester, description);

		System.out.println("calling dao");

		CourseMasterDao courseMasterDao = new CourseMasterDao();
		courseMasterDao.addCourseDetails(courseEntity);

		response.sendRedirect(request.getContextPath() + "/CourseController?action=listCourseMasterRecord");
	}

	private void listCourseCategoryFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<CourseCategoryEntity> listCourseCategory = new CourseCategoryDao().getCourseCategoryFullDetails();
		request.setAttribute("courseCategoryRecord", listCourseCategory);
		request.getRequestDispatcher("Admin/Course/CourseCategory.jsp").forward(request, response);
	}

	private void listCourseMasterFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<CourseCategoryEntity> listCourseCategory = new CourseCategoryDao().getCourseCategoryFullDetails();
		List<CourseEntity>courseEntities = new CourseMasterDao(). getCourseFullDetails();
		request.setAttribute("courseCategoryRecord", listCourseCategory);
		request.setAttribute("courseMasterRecord", courseEntities);
		request.getRequestDispatcher("Admin/Course/CourseMaster.jsp").forward(request, response);
	}

	private void listCourseMasterFullRecordById(HttpServletRequest request, HttpServletResponse response) {
		
		int cId = Integer.parseInt(request.getParameter("courseCode"));
		CourseEntity entity = new CourseMasterDao().getCourseFullDetailsById(cId);
		request.setAttribute("courseMasterRecord", entity);
	}


}
