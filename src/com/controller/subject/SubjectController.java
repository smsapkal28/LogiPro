package com.controller.subject;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.batch.BatchDao;
import com.dao.course.CourseMasterDao;
import com.dao.subject.SubjectCategoryDao;
import com.dao.subject.SubjectMasterDao;
import com.dao.subject.SubjectToBatchDao;
import com.entity.batch.BatchEntity;
import com.entity.course.CourseEntity;
import com.entity.subject.SubjectCategoryEntity;
import com.entity.subject.SubjectMasterEntity;
import com.entity.subject.SubjectToBatchEntity;

/**
 * @author Devil
 *
 */
@WebServlet(description = "SubjectController", urlPatterns = { "/SubjectController" })
public class SubjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SubjectController() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddSubjectCategory":
			addSubjectCategory(request, response);
			break;

		case "AddSubjectMaster":
			addSubjectMaster(request, response);
			break;
		case "AddSubjectToBatch":
			addSubjectToBatch(request, response);
			break;
			
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}// Switch Ends

	}// doPost Ends

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {
		case "listSubjectCategoryRecord":

			listSubjectCategoryFullRecord(request, response);
			break;

		case "listSubjectMasterRecord":

			listSubjectMasterFullRecord(request, response);
			break;

		case "listAssignedSubjectToCategory":

			listAssignedSubjectToCategory(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}// Switch Ends

	}// doGet Ends

//===================================================Adding Section===========================================================================	
	private void addSubjectCategory(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching subject Category value");

		String subCatogry = request.getParameter("subCatogry");
		String subCode = request.getParameter("subCode");
		String subDesc = request.getParameter("subDesc");

		SubjectCategoryEntity subjectCategoryEntity = new SubjectCategoryEntity(subCatogry, subCode, subDesc);

		System.out.println("calling dao");

		SubjectCategoryDao subjectCategoryDao = new SubjectCategoryDao();
		subjectCategoryDao.addSubjectCategory(subjectCategoryEntity);

		response.sendRedirect(request.getContextPath() + "/SubjectController?action=listSubjectCategoryRecord");
	}

	private void addSubjectMaster(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching subject Master value");

		int courseCode = Integer.parseInt(request.getParameter("courseCode"));
	//	int semester = Integer.parseInt(request.getParameter("semester"));
		/* int subCat = Integer.parseInt(request.getParameter("subCat")); */
		String subName = request.getParameter("subName");
		String subCode = request.getParameter("subCode");
		String subDesc = request.getParameter("subDesc");

		SubjectMasterEntity subjectMasterEntity = new SubjectMasterEntity(courseCode,  subName, subCode,
				subDesc);

		System.out.println("calling dao");

		SubjectMasterDao subjectMasterDao = new SubjectMasterDao();
		subjectMasterDao.addSubjectMaster(subjectMasterEntity);

		response.sendRedirect(request.getContextPath() + "/SubjectController?action=listSubjectMasterRecord");
	}
	
	private void addSubjectToBatch(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching AssignSubject value");

		int courseCode = Integer.parseInt(request.getParameter("courseCode"));
		int batchCode = Integer.parseInt(request.getParameter("batchCode"));
		int subCatCode = Integer.parseInt(request.getParameter("subCatCode"));
		String[] subjects = request.getParameterValues("subjects");
		
		String subjectsList = null;
		for (String s : subjects) {
			if (subjectsList == null) {
				subjectsList = s;
			} else {
				subjectsList = subjectsList + "," + s;
			}
		}
		SubjectToBatchEntity subjectToBatchEntity = new SubjectToBatchEntity(courseCode, batchCode, subCatCode, subjectsList);

		System.out.println("calling dao");

		SubjectToBatchDao subjectToBatchDao = new SubjectToBatchDao();
		subjectToBatchDao.addSubjectToBatch(subjectToBatchEntity);
		

		response.sendRedirect(request.getContextPath() + "/SubjectController?action=listAssignedSubjectToCategory");
	}

	
//==========================================Listing Section====================================================================================

	private void listSubjectCategoryFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Listing Subject Category Full Record");

		List<SubjectCategoryEntity> subjectCategoryEntities = new SubjectCategoryDao().getSubjectCategoryFullDetails();
		request.setAttribute("subjectCategoryRecord", subjectCategoryEntities);
		request.getRequestDispatcher("Admin/Course/SubjectCategory.jsp").forward(request, response);
	}// listSubjectCategoryFullRecord ends

	private void listSubjectMasterFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<CourseEntity> courseEntities = new CourseMasterDao().getCourseFullDetails();
		List<SubjectCategoryEntity> subjectCategoryEntities = new SubjectCategoryDao().getSubjectCategoryFullDetails();
		List<SubjectMasterEntity> subjectMasterEntities = new SubjectMasterDao().getSubjectMasterFullDetails();
		request.setAttribute("subjectCategoryRecord", subjectCategoryEntities);
		request.setAttribute("courseMasterRecord", courseEntities);
		request.setAttribute("SubjectMasterRecord", subjectMasterEntities);
		request.getRequestDispatcher("Admin/Course/SubjectMaster.jsp").forward(request, response);

	}// listSubjectMasterFullRecord ends

	private void listAssignedSubjectToCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<CourseEntity> courseEntities = new CourseMasterDao().getCourseFullDetails();
		List<BatchEntity> listBatch = new BatchDao().getBatchFullDetails();
		List<SubjectCategoryEntity> subjectCategoryEntities = new SubjectCategoryDao().getSubjectCategoryFullDetails();
		List<SubjectToBatchEntity> subjectToBatchEntities = new SubjectToBatchDao().getSubjectToBatchFullDetails();
		request.setAttribute("subjectCategoryRecord", subjectCategoryEntities);
		request.setAttribute("courseMasterRecord", courseEntities);
		request.setAttribute("batchRecord", listBatch);
		request.setAttribute("subjectToBatchRecord", subjectToBatchEntities);
		request.getRequestDispatcher("Admin/Course/AssignSubject.jsp").forward(request, response);

	}// listAssignedSubjectToCategory ends

}// Class End
