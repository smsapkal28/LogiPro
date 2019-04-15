package com.Admin.USER.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Admin.USER.Dao.NewUserRegisterDao;
import com.Admin.USER.Entity.NewUserRegisteEntity;


/**
 * Servlet implementation class NewUserRegisteController
 */
@WebServlet(description = "/NewUserRegisteController", urlPatterns="/NewUserRegisteController")
public class NewUserRegisteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewUserRegisteController() {
        super();
        // TODO Auto-generated constructor stub
    }

    ServletConfig sc;
    public void init(ServletConfig sc)
    {
       this.sc=sc;
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		
		switch(action){
		case "userrecord":
		try{
			UserList(request,response);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		break;
		default:
		}	}

	private void UserList(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			List<NewUserRegisteEntity> userrecord = new NewUserRegisterDao().getUserlist();
			request.setAttribute("userrecord", userrecord);
			request.getRequestDispatcher("/Admin/USER/UserList.jsp").forward(request, response);			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		System.out.println("=======action===="+action);
		switch(action){
		case  "NewUserRegister":
		try{
			RegisterNewUser(request,response);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		break;
		case "ModifyUser":
			try{
				ModifyUser(request,response);
			}
			catch (Exception e) {
				// TODO: handle exception
			}	
			break;
		case "DeleteUser":
			try{
				System.out.println("DELETE Method");
				DeleteUser(request,response);
			}
			catch (Exception e) {
				// TODO: handle exception
			}	
			break;
			
		default:
		}
	}

	private void DeleteUser(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			String id=request.getParameter("id_del");
			NewUserRegisteEntity userentity=new NewUserRegisteEntity();
			userentity.setId(Integer.parseInt(id));
			System.out.println("=====delete ===id====="+id);
			NewUserRegisterDao userdao=new NewUserRegisterDao();
			String message=userdao.DeleteUserEntrydao(Long.parseLong(id));
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	private void ModifyUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			String id=request.getParameter("id");
			String firstname=request.getParameter("firstname");
			String lastname=request.getParameter("lastname");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			Date dob=(Date) new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("dob"));
			String mobile=request.getParameter("mobileno");
			String emailid=request.getParameter("emailid");
			String lastmodby=request.getParameter("username");
			String status=request.getParameter("status");
			String location=request.getParameter("location");
			java.util.Date lastmoddate= new java.util.Date();
			
			NewUserRegisteEntity userentity=new NewUserRegisteEntity();
			userentity.setId(Integer.parseInt(id));
			userentity.setFirstname(firstname);
			userentity.setLastname(lastname);
			userentity.setUsername(username);
			userentity.setPassword(password);
			userentity.setDob(dob);
			userentity.setMobile(mobile);
			userentity.setEmailid(emailid);
			userentity.setLastmoddate(lastmoddate);
			userentity.setLastmodby(lastmodby);
			userentity.setStatus(status);
			userentity.setLocation(location);
			
			NewUserRegisterDao userdao=new NewUserRegisterDao();
					String message=userdao.ModifyUserEntrydao(userentity);	
					System.out.println("==========message====="+message);
					if(message=="SUCCESS")
					{
						System.out.println(username+"======222====message====="+message);
					response.sendRedirect(request.getContextPath() + "/NewUserRegisteController?action=userrecord");
					}
					else
					{
						response.sendRedirect(request.getContextPath() + "/NewUserRegisteController?action=userrecord");
					}
			}
			catch (Exception e) {
				System.out.println("%%%%%%%%%%%%%%%%===="+e.getMessage());
				request.setAttribute("message", ""+e.getMessage());
				sc.getServletContext().getRequestDispatcher("/NewUserRegisteController?action=userrecord").forward(request,response);
				e.printStackTrace();

				// TODO: handle exception
			}
		
	}

	private void RegisterNewUser(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException, ServletException {
		// TODO Auto-generated method stub
		try{
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Date dob=(Date) new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("dob"));
		String mobile=request.getParameter("mobileno");
		String emailid=request.getParameter("emailid");
		String lastmodby=request.getParameter("username");
		String status=request.getParameter("status");
		String location=request.getParameter("location");
		java.util.Date lastmoddate= new java.util.Date();
		
		NewUserRegisteEntity userentity=new NewUserRegisteEntity();
		userentity.setFirstname(firstname);
		userentity.setLastname(lastname);
		userentity.setUsername(username);
		userentity.setPassword(password);
		userentity.setDob(dob);
		userentity.setMobile(mobile);
		userentity.setEmailid(emailid);
		userentity.setLastmoddate(lastmoddate);
		userentity.setLastmodby(lastmodby);
		userentity.setStatus(status);
		userentity.setLocation(location);

		NewUserRegisterDao userdao=new NewUserRegisterDao();
				userdao.NewUserEntrydao(userentity);	
				request.setAttribute("message", "User "+username+" Registered Successfully...!");
				sc.getServletContext().getRequestDispatcher("/Admin/USER/NewUserRegister.jsp").forward(request,response);
		}
		catch (Exception e) {
			System.out.println("%%%%%%%%%%%%%%%%===="+e.getMessage());
			request.setAttribute("message", ""+e.getMessage());
			sc.getServletContext().getRequestDispatcher("/Admin/USER/NewUserRegister.jsp").forward(request,response);
			e.printStackTrace();

			// TODO: handle exception
		}
	}

}
