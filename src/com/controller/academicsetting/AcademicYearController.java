package com.controller.academicsetting;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.academicsetting.AcademicYearDao;
import com.entity.academicsetting.AcademicYearEntity;

/**
 * @author Devil
 *
 */

@WebServlet(description = "AcademicYearController", urlPatterns = { "/AcademicYearController" })
public class AcademicYearController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AcademicYearController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddAcademicYear":
			addAcademicYear(request, response);
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
		case "listAcademicYearRecord":
			listAcademicYearFullRecord(request, response);
			break;

		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}

	public void addAcademicYear(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("fetching academic year value");
		String academicYearName = request.getParameter("academicYear");
		int startMonth = Integer.parseInt(request.getParameter("startMonth"));
		String startYear = request.getParameter("startYear");
		int endMonth = Integer.parseInt(request.getParameter("endMonth"));
		String endYear = request.getParameter("endYear");
		int status = Integer.parseInt(request.getParameter("status"));

		AcademicYearEntity academicYearEntity = new AcademicYearEntity();
		academicYearEntity.setAcademicYearName(academicYearName);
		academicYearEntity.setStartMonth(startMonth);
		academicYearEntity.setStartYear(startYear);
		academicYearEntity.setEndMonth(endMonth);
		academicYearEntity.setEndYear(endYear);
		academicYearEntity.setStatus(status);
		academicYearEntity.setDeleteStatus(0);

		System.out.println("calling dao");
		AcademicYearDao academicYearDao = new AcademicYearDao();
		academicYearDao.addAcademicYear(academicYearEntity);
		listAcademicYearFullRecord(request, response);
	}

	private void listAcademicYearFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<AcademicYearEntity> list = new AcademicYearDao().getAcademicYearFullDetails();
		
		request.setAttribute("record", list);
		
		request.getRequestDispatcher("Admin/Academic/AddAcademicYear.jsp").forward(request, response);

	}
}
