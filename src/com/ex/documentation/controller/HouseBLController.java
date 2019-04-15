/**
 * 
 */
package com.ex.documentation.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ex.documentation.dao.HouseBLDao;
import com.ex.documentation.entity.HouseBLContainerEntity;
import com.ex.documentation.entity.HouseBLEntity;

/**
 * @author USER 13
 *
 */
@WebServlet(description = "HouseBLController", urlPatterns = { "/HouseBLController" })
public class HouseBLController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public HouseBLController() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "HouseBLEntry":
			try {
				HouseBLEntry(request, response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:
		}
	}

	private void HouseBLEntry(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException{
		// TODO Auto-generated method stub
		System.out.println("fetching Role type value");

		//String hblno = request.getParameter("hblno");
		//String containerno = request.getParameter("hblcontainerno");
		//int id = 1;
		String hblno = "HBL0001";
		//String containerno="CONT001";
		
		HouseBLEntity hblentity = new HouseBLEntity();
		//hblentity.setId(id);
		hblentity.setHblno(hblno);
		
		/*HouseBLContainerEntity hblcontentity = new HouseBLContainerEntity();
		hblcontentity.setHblno(hblno);
		hblcontentity.setContainerno(containerno);
		hblcontentity.setHblentity(hblentity);*/
		
		HouseBLContainerEntity hblcontentity = new HouseBLContainerEntity("HBL0001","cont001");
		HouseBLContainerEntity hblcontentity1 = new HouseBLContainerEntity("HBL0001","cont002");			
		hblentity.setContDetails(Arrays.asList(hblcontentity,hblcontentity1));
		
		System.out.println(hblentity.getHblno()+"==calling House BL Dao==");
		
		HouseBLDao hblDao = new HouseBLDao();
		hblDao.HouseBlEntrydao(hblentity);		
		hblDao.HouseBlContEntrydao(hblcontentity);
		hblDao.HouseBlContEntrydao(hblcontentity1);
		//response.sendRedirect(request.getContextPath() + "/HouseBLController?action=HouseBLList");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {
		case "HouseBLList":
			HousebillistRecord(request, response);
			break;

		default:
		}
	}

	private void HousebillistRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		List<HouseBLEntity> list = new HouseBLDao().getHouseBllist();
		request.setAttribute("hblrecord", list);

		request.getRequestDispatcher("Export/EXDOC/Export_HBLList.jsp").forward(request, response);
	}
}
