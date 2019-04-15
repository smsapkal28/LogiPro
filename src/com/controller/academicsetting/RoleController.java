package com.controller.academicsetting;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.academicsetting.RoleDao;
import com.entity.academicsetting.RoleEntity;


/**
 * @author Devil
 *
 */
@WebServlet(description = "RoleController", urlPatterns = { "/RoleController" })
public class RoleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RoleController() {
        super();
        // TODO Auto-generated constructor stub
    }



    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddRole":
			addRoleType(request, response);
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
		case "listRoleRecord":
			listRoleFullRecord(request, response);
			break;

		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}
	public void addRoleType(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("fetching Role type value");
		String role = request.getParameter("deptRole");
		

		RoleEntity roleEntity =new RoleEntity();
		roleEntity.setRole(role);
		roleEntity.setDeleteStatus(0);
		

		System.out.println("calling dao");
		RoleDao roleDao = new RoleDao();
		roleDao.addRole(roleEntity);
		listRoleFullRecord(request, response);
	}

	private void listRoleFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<RoleEntity> list = new RoleDao().getRoleFullRecord();
		request.setAttribute("record", list);

		request.getRequestDispatcher("Admin/Academic/AddRole.jsp").forward(request, response);

	}

    
    
	
	
}
