package com.Admin.USER.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.Admin.USER.Dao.NewUserRegisterDao;
import com.Admin.USER.Entity.NewUserRegisteEntity;
import com.ex.documentation.dao.MasterBLDao;
import com.ex.documentation.entity.MasterBLEntity;

/**
 * Servlet implementation class UserModifyController
 */
@WebServlet("/UserModifyController")
public class UserModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			UserModify(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	}

	@SuppressWarnings("unchecked")
	private void UserModify(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		try{
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

		String user_Id = request.getParameter("user_Id");
        JSONObject jsonobj = new JSONObject();
        JSONObject jsonsub_obj = new JSONObject();
        @SuppressWarnings("unused")
		JSONArray jsonarray =new JSONArray();
        @SuppressWarnings("unused")
		JSONArray subarray = null;

		List<NewUserRegisteEntity> list = new NewUserRegisterDao().getUserlistById(user_Id);
		
		for (NewUserRegisteEntity q : list) 
		{
		   	
		jsonobj.put("response","SUCCESS");
        jsonsub_obj.put("id",""+q.getId());
        jsonsub_obj.put("firstname",q.getFirstname());
        jsonsub_obj.put("lastname",q.getLastname());
        jsonsub_obj.put("username",q.getUsername());
        jsonsub_obj.put("password",q.getPassword());
        jsonsub_obj.put("conpassword",q.getPassword());
        jsonsub_obj.put("dob",""+sdf.format(q.getDob()));
        jsonsub_obj.put("mobileno",q.getMobile());
        jsonsub_obj.put("emailid",q.getEmailid());
        jsonsub_obj.put("status",q.getStatus());
        jsonsub_obj.put("location",q.getLocation());

        
		}
		 jsonobj.put("userdetails",jsonsub_obj);
		System.out.println("sssssssss"+jsonobj);
		 response.setContentType("json");
        response.setHeader("Cache-Control", "no-cache");
        response.getWriter().write(jsonobj.toString());
		}
		catch (Exception e) {
			// TODO: handle exception
	        JSONObject jsonobj = new JSONObject();
			jsonobj.put("response","FAIL");
			System.out.println("sssssssss"+jsonobj);
			 response.setContentType("json");
	        response.setHeader("Cache-Control", "no-cache");
	        response.getWriter().write(jsonobj.toString());
	        e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
