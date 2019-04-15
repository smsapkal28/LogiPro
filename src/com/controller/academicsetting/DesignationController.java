package com.controller.academicsetting;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.academicsetting.DesignationDao;
import com.entity.academicsetting.DesignationEntity;


/**
 * @author Devil
 *
 */

@WebServlet(description = "DesignationController", urlPatterns = { "/DesignationController" })
public class DesignationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DesignationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddDesignationType":
			addDesignationType(request, response);
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
		case "listDesignationRecord":
			listDesignationFullRecord(request, response);
			break;

		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}
	public void addDesignationType(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("fetching designation type value");
		String desigationValue = request.getParameter("designation");
		

		DesignationEntity designation = new DesignationEntity();
		designation.setDesigation(desigationValue);
		designation.setDeleteStatus(0);
		
		

		System.out.println("calling dao");
		DesignationDao designationDao = new DesignationDao(); 
		designationDao.addDesignation(designation);
		listDesignationFullRecord(request, response);
	}

	private void listDesignationFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<DesignationEntity> list = new DesignationDao().getDesignationTypeFullRecord();
		request.setAttribute("record", list);

		request.getRequestDispatcher("Admin/Academic/AddDesignation.jsp").forward(request, response);

	}

    
    
}


