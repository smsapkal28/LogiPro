package com.controller.batch;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.academicsetting.AcademicYearDao;
import com.dao.batch.BatchDao;
import com.dao.course.CourseMasterDao;
import com.entity.academicsetting.AcademicYearEntity;
import com.entity.batch.BatchEntity;

import com.entity.course.CourseEntity;

/**
 * @author Devil
 *
 */
@WebServlet(description = "BatchController", urlPatterns = { "/BatchController" })
public class BatchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BatchController() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddBatch":
			AddBatchEntity(request, response);
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
		case "listBatchRecord":

			listBatchFullRecord(request, response);
			break;

		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}

	private void AddBatchEntity(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("fetching Course batch value");
		try {
			int academicYear = Integer.parseInt(request.getParameter("academicYear"));
			int courseCode = Integer.parseInt(request.getParameter("courseCode"));
			//int semester = Integer.parseInt(request.getParameter("semester"));
			String batchName = request.getParameter("batchName");
			String batchCode = request.getParameter("batchCode");

			String startDate1 = request.getParameter("startDate");
			String endDate1 = request.getParameter("endDate");

			Date startDate;

			startDate = new SimpleDateFormat("dd/MM/yyyy").parse(startDate1);

			Date endDate = new SimpleDateFormat("dd/MM/yyyy").parse(endDate1);
			int maxStud = Integer.parseInt(request.getParameter("maxStud"));
			int minAttend = Integer.parseInt(request.getParameter("minAttend"));
	
		BatchEntity batchEntity = new BatchEntity(courseCode, academicYear,  batchName, batchCode, startDate,
				endDate,maxStud,minAttend);
		System.out.println("calling dao");

		BatchDao bd = new BatchDao();
		bd.addBatchDetails(batchEntity);
		response.sendRedirect(request.getContextPath() + "/BatchController?action=listBatchRecord");
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
	}

	private void listBatchFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Dispatching Jsp");
		List<AcademicYearEntity> listAcademicYear = new AcademicYearDao().getAcademicYearFullDetails();
		
		List<CourseEntity> courseEntities = new CourseMasterDao().getCourseFullDetails();
		List<BatchEntity> listBatch = new BatchDao().getBatchFullDetails();
		request.setAttribute("BatchRecord", listBatch);
		request.setAttribute("courseMasterRecord", courseEntities);
		request.setAttribute("academicYearRecord", listAcademicYear);
		request.getRequestDispatcher("Admin/Course/BatchMaster.jsp").forward(request, response);
	}

}
