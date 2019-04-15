package com.Admin.USER.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Admin.USER.Dao.NewUserRegisterDao;
import com.Admin.USER.Entity.NewUserRegisteEntity;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	ServletConfig sc;

	public void init(ServletConfig sc) {
		this.sc = sc;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");
		switch (action) {
		case "CheckUser":
			try {
				UserAuth(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "Logout":
			try {
				LogoutUser(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:
		}
	}

	private void LogoutUser(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try{
		request.setAttribute("message", "Session Expired...!");
		sc.getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			
		}
		
	}

	private void UserAuth(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		try {

			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String usernametc = "";
			String passwordtc = "";
			String location = "";

			NewUserRegisterDao userdao = new NewUserRegisterDao();
			List<NewUserRegisteEntity> list = userdao.CheckUserCredDao(username, password);
			for (NewUserRegisteEntity q : list) {
				usernametc = "" + q.getUsername();
				passwordtc = "" + q.getPassword();
				location  = "" + q.getLocation();
			}
			System.out.println(usernametc + "======" + passwordtc);
			if (usernametc.equals(username) && passwordtc.equals(password)) {
				// sc.getServletContext().getRequestDispatcher("Dashboard.jsp").forward(request,
				// response);
				Cookie loginCookie = new Cookie("username", usernametc);
				loginCookie.setMaxAge(20*60);
				response.addCookie(loginCookie);
				Cookie loginCookie2 = new Cookie("location", location);
				loginCookie.setMaxAge(20*60);
				response.addCookie(loginCookie2);
				request.setAttribute("username", usernametc);
				request.setAttribute("location", location);
				response.sendRedirect(request.getContextPath() + "/Dashboard.jsp");
			} else {
				request.setAttribute("message", "Username or Password is Incorrect...");
				sc.getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
