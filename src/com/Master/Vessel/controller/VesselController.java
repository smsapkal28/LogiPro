package com.Master.Vessel.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Master.Vessel.dao.VesselDao;
import com.Master.Vessel.entity.VesselEntity;

/**
 * Servlet implementation class VesselController
 */
@WebServlet("/VesselController")
public class VesselController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VesselController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");

		switch (action) {
		case "AddVessel":
			try {
				AddVesselDetails(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			default:
		}

	}

	private void AddVesselDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		try{
		String username = "null";
		String location = "null";
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
		for(Cookie cookie : cookies){
			System.out.println("userName       =="+username);
			if(cookie.getName().equals("username")) username = cookie.getValue();
			if(cookie.getName().equals("location")) location = cookie.getValue();

		}
		}
		java.util.Date lastmoddate = new java.util.Date();
		String  vesselname= request.getParameter("vesselname");
		String  linename= request.getParameter("linename");
		String  igmvcode= request.getParameter("igmvcode");
		String  imocode= request.getParameter("imocode");
		String  status= request.getParameter("status");

		VesselEntity ventity=new VesselEntity();
		ventity.setVesselname(vesselname);
		ventity.setLinename(linename);
		ventity.setIgmvcode(igmvcode);
		ventity.setImocode(imocode);
		ventity.setStatus(status);
		ventity.setUsername(username);
		ventity.setLastmoddate(lastmoddate);
		ventity.setLocation(location);
		VesselDao vdao= new  VesselDao();
		vdao.addVessel(ventity);
		request.setAttribute("message", "Vessel Added Successfully...!");
		response.sendRedirect(request.getContextPath() + "/Master/VesselMaster.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.setAttribute("message", ""+e.getMessage());
			response.sendRedirect(request.getContextPath() + "/Master/VesselMaster.jsp");
		}
	}
}
