package com.controller.academicsetting;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.academicsetting.DepartementTypeDao;
import com.dao.academicsetting.RoleDao;
import com.dao.academicsetting.UserDao;
import com.entity.academicsetting.DepartementTypeEntity;
import com.entity.academicsetting.RoleEntity;
import com.entity.academicsetting.UserEntity;

/**
 * @author Devil
 *
 */
@WebServlet(description = "UserController", urlPatterns = { "/UserController" })
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddUser":
			addUserType(request, response);
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
		case "listUserRecord":

			listUserFullRecord(request, response);
			break;

		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}

	public void addUserType(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("fetching Role type value");

		String empId = request.getParameter("empId");
		String password = request.getParameter("password");
		String userId = request.getParameter("userId");
		String cnfpassword = request.getParameter("CnfPassword");
		int dept = Integer.parseInt(request.getParameter("dept"));
		int role = Integer.parseInt(request.getParameter("role"));
		int status = Integer.parseInt(request.getParameter("status"));

		if (password.equals(cnfpassword)) {
			UserEntity userEntity = new UserEntity();
			userEntity.setEmpId(empId);
			userEntity.setPassword(password);
			userEntity.setUserId(userId);
			userEntity.setDepartment(dept);
			userEntity.setRole(role);
			userEntity.setStatus(status);
			userEntity.setDeleteStatus(0);

			System.out.println("calling dao");
			UserDao userDao = new UserDao();
			userDao.addUser(userEntity);
		}
		//listUserFullRecord(request, response);
		response.sendRedirect(request.getContextPath()+"/UserController?action=listUserRecord");
	}

	private void listUserFullRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<UserEntity> listUser = new UserDao().getUserFullRecord();
		
		ArrayList<ArrayList<String>> userValue2 = new ArrayList<ArrayList<String>>();
		for (UserEntity u : listUser) {
			ArrayList<String> userValue1 = new ArrayList<String>();
			userValue1.add(Integer.toString(u.getId()));
			userValue1.add(u.getEmpId());
			userValue1.add(u.getUserId());
			userValue1.add(new DepartementTypeDao().getDepartmentDetailsById(u.getDepartment()).getDeptType());
			userValue1.add(new RoleDao().getRoleDetailsById(u.getRole()).getRole());
			userValue1.add(u.getPassword());
			if (u.getStatus() == 1) {
				userValue1.add("Active");
			} else {

				userValue1.add("InActive");

			}
			userValue2.add(userValue1);
		}
		List<DepartementTypeEntity> listDept = new DepartementTypeDao().getDepartementTypeFullRecord();
		List<RoleEntity> listRole = new RoleDao().getRoleFullRecord();
		request.setAttribute("userRecord", userValue2);
		request.setAttribute("deptRecord", listDept);
		request.setAttribute("roleRecord", listRole);
		request.getRequestDispatcher("Admin/Academic/AddUser.jsp").forward(request, response);

	}

}
