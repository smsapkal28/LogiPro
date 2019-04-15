package com.controller.academicsetting;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.academicsetting.DepartementTypeDao;

import com.entity.academicsetting.DepartementTypeEntity;


/**
 * @author Devil
 *
 */
@WebServlet(description = "DepartmentTypeController", urlPatterns = { "/DepartmentTypeController" })
public class DepartmentTypeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DepartmentTypeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddDepartementType":
			addDepartementType(request, response);
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
		case "listDepartmentTypeRecord":
			listDepartementTypeFullRecord(request, response);
			break;

		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}
	public void addDepartementType(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("fetching departement type value");
		String deptName = request.getParameter("deptName");
		

		DepartementTypeEntity departementType = new DepartementTypeEntity(); 
		departementType.setDeptType(deptName);
		departementType.setDeleteStatus(0);
		

		System.out.println("calling dao");
		DepartementTypeDao departementTypeDao = new DepartementTypeDao();
		departementTypeDao.addDepartementType(departementType);
		listDepartementTypeFullRecord(request, response);
	}

	private void listDepartementTypeFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<DepartementTypeEntity> list = new DepartementTypeDao().getDepartementTypeFullRecord();
		request.setAttribute("record", list);

		request.getRequestDispatcher("Admin/Academic/AddDepartmentType.jsp").forward(request, response);

	}

}
