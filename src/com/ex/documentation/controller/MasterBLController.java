/**
 * 
 */
package com.ex.documentation.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ex.documentation.dao.MasterBLDao;
import com.ex.documentation.entity.MasterBLContainerEnity;
import com.ex.documentation.entity.MasterBLEntity;

/**
 * @author USER 13
 *
 */
@WebServlet(description = "MasterBLController", urlPatterns = { "/MasterBLController" })
public class MasterBLController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MasterBLController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "MasterBLEntry":
			try {
				MasterBLEntry(request, response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
			
		//Modify Method
		case "MasterBLEntryModify":
			try {
				MasterBLEntryModify(request, response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				MasterbllistRecord_list(request, response);
			}
			break;
		default:
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");
		System.out.println("action==========="+action);
		switch (action) {
		case "MasterBLList":
			MasterbllistRecord(request, response);
			break;
		case "mblrecord":
			System.out.println("listing enrolled student record");
			MasterbllistRecord_list(request, response);

			break;
		default:
		}
	}

	private void MasterbllistRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<MasterBLEntity> list = new MasterBLDao().getMasterBllist();
		request.setAttribute("mblrecord", list);
		request.getRequestDispatcher("Export/EXDOC/Export_MBLList.jsp").forward(request, response);
	}
	private void MasterbllistRecord_list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<MasterBLEntity> mblrecord = new MasterBLDao().getMasterBllist();
		request.setAttribute("mblrecord", mblrecord);
		request.getRequestDispatcher("Export/EXDOC/Export_MBLEntryModify.jsp").forward(request, response);
	}
	

	private void MasterBLEntry(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		// TODO Auto-generated method stub
		System.out.println("fetching Role type value");

		String mblno = request.getParameter("mblno");

		String mbldate1 = request.getParameter("mbldate");
		Date mbldate;
		mbldate = new SimpleDateFormat("dd/MM/yyyy").parse(mbldate1);

		String date_of_issue1 = request.getParameter("mblissuedate");
		Date date_of_issue;
		date_of_issue = new SimpleDateFormat("dd/MM/yyyy").parse(date_of_issue1);

		String place_of_issue = request.getParameter("mblissueplace");
		String shippername = request.getParameter("mblsname");
		String shippertel = request.getParameter("mblsphone");
		String shipperfax = request.getParameter("mblsfax");
		String shippercontact = request.getParameter("mblcp");
		String shipperaddress = request.getParameter("mblsadd");
		String consigneename = request.getParameter("mblcname");
		String consigneetel = request.getParameter("mblctel");
		String consigneefax = request.getParameter("mblfax");
		String consigneecontact = request.getParameter("mblccontact");
		String consigneeaddress = request.getParameter("mblcadd");
		String notify1name = request.getParameter("mblnname");
		String notify1tel = request.getParameter("mblntel");
		String notify1fax = request.getParameter("mblnfax");
		String notify1contact = request.getParameter("mblncp");
		String notify1address = request.getParameter("mblnadd");
		String notify2name = request.getParameter("mblnnname");
		String notify2tel = request.getParameter("mblnntel");
		String notify2fax = request.getParameter("mblnnfax");
		String notify2contact = request.getParameter("mblnncp");
		String notify2address = request.getParameter("mblnnadd");
		String vesselname = request.getParameter("mblvessel");
		String voyageno = request.getParameter("mblvoyages");

		String pol = request.getParameter("mblpol");
		String pod = request.getParameter("mblpod");
		String fpd = request.getParameter("mblfpd");
		String por = request.getParameter("mblpor");


		String pkgtype = request.getParameter("mblpkgtype");
		double noofpkgs = Double.parseDouble(request.getParameter("mblpkg"));
		double noofpallets = Double.parseDouble(request.getParameter("mblpllets"));
		double netwt = Double.parseDouble(request.getParameter("mblnw"));
		double grosswt = Double.parseDouble(request.getParameter("mblgw"));
		double volume = Double.parseDouble(request.getParameter("mblcbm"));

		String marks = request.getParameter("mblremks");
		String description = request.getParameter("mbldes");
		String containernolist = request.getParameter("containerlist");
		
		
		MasterBLEntity mblentity = new MasterBLEntity();
		mblentity.setMblno(mblno);
		mblentity.setMbldate(mbldate);
		mblentity.setDate_of_issue(date_of_issue);
		mblentity.setPlace_of_issue(place_of_issue);
		mblentity.setVesselname(vesselname);
		mblentity.setVoyageno(voyageno);
		mblentity.setPol(pol);
		mblentity.setPod(pod);
		mblentity.setFpd(fpd);
		mblentity.setFpd(por);
		mblentity.setShippername(shippername);
		mblentity.setShippertel(shippertel);
		mblentity.setShipperfax(shipperfax);
		mblentity.setShippercontact(shippercontact);
		mblentity.setShipperaddress(shipperaddress);
		mblentity.setConsigneename(consigneename);
		mblentity.setConsigneetel(consigneetel);
		mblentity.setConsigneefax(consigneefax);
		mblentity.setConsigneecontact(consigneecontact);
		mblentity.setConsigneeaddress(consigneeaddress);
		mblentity.setNotify1name(notify1name);
		mblentity.setNotify1tel(notify1tel);
		mblentity.setNotify1fax(notify1fax);
		mblentity.setNotify1contact(notify1contact);
		mblentity.setNotify1address(notify1address);
		mblentity.setNotify2name(notify2name);
		mblentity.setNotify2tel(notify2tel);
		mblentity.setNotify2fax(notify2fax);
		mblentity.setNotify2contact(notify2contact);
		mblentity.setNotify2address(notify2address);
		mblentity.setPkgtype(pkgtype);
		mblentity.setNoofpkgs(noofpkgs);
		mblentity.setNoofpallets(noofpallets);
		mblentity.setVolume(volume);
		mblentity.setNetwt(netwt);
		mblentity.setGrosswt(grosswt);
		mblentity.setMarks(marks);
		mblentity.setDescription(description);
		
		System.out.println("---calling Master BL Dao==="+containernolist);
		MasterBLDao mblDao = new MasterBLDao();		
		List<MasterBLContainerEnity> contdetails =new ArrayList<MasterBLContainerEnity>();

        StringTokenizer str21 = new StringTokenizer(containernolist,"*");
        while(str21.hasMoreTokens())
        {
  		MasterBLContainerEnity mblcontentirty = new MasterBLContainerEnity();
		String containerno = str21.nextToken();
		String containertype = str21.nextToken();
		String customsealno = str21.nextToken();
		String agentsealno = str21.nextToken();
		System.out.println("calling Master BL Container Dao==="+containerno);
		mblcontentirty.setMblno(mblno);
		mblcontentirty.setContainerno(containerno);
		mblcontentirty.setContainertype(containertype);
		mblcontentirty.setCustomsealno(customsealno);
		mblcontentirty.setAgentsealno(agentsealno);
		
		contdetails.add(mblcontentirty);
        }
        mblentity.setContDetails(contdetails);
        mblDao.MasterBlEntrydao(mblentity);
        response.sendRedirect(request.getContextPath() + "/MasterBLController?action=MasterBLList");
		//MasterbllistRecord(request, response);
	}
	
	private void MasterBLEntryModify(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		
		try
		{
		// TODO Auto-generated method stub
		System.out.println("fetching Role type value");
        HttpSession session = request.getSession(true);
        String suser=(String)session.getAttribute("username");
        String slocatin=(String)session.getAttribute("locaion");        
		String mblno = request.getParameter("mblno");

		String mbldate1 = request.getParameter("mbldate");
		Date mbldate;
		mbldate = new SimpleDateFormat("dd/MM/yyyy").parse(mbldate1);

		String date_of_issue1 = request.getParameter("mblissuedate");
		Date date_of_issue;
		date_of_issue = new SimpleDateFormat("dd/MM/yyyy").parse(date_of_issue1);

		String place_of_issue = request.getParameter("mblissueplace");
		String shippername = request.getParameter("mblsname");
		String shippertel = request.getParameter("mblsphone");
		String shipperfax = request.getParameter("mblsfax");
		String shippercontact = request.getParameter("mblcp");
		String shipperaddress = request.getParameter("mblsadd");
		String consigneename = request.getParameter("mblcname");
		String consigneetel = request.getParameter("mblctel");
		String consigneefax = request.getParameter("mblfax");
		String consigneecontact = request.getParameter("mblccontact");
		String consigneeaddress = request.getParameter("mblcadd");
		String notify1name = request.getParameter("mblnname");
		String notify1tel = request.getParameter("mblntel");
		String notify1fax = request.getParameter("mblnfax");
		String notify1contact = request.getParameter("mblncp");
		String notify1address = request.getParameter("mblnadd");
		String notify2name = request.getParameter("mblnnname");
		String notify2tel = request.getParameter("mblnntel");
		String notify2fax = request.getParameter("mblnnfax");
		String notify2contact = request.getParameter("mblnncp");
		String notify2address = request.getParameter("mblnnadd");
		String vesselname = request.getParameter("mblvessel");
		String voyageno = request.getParameter("mblvoyages");

		String pol = request.getParameter("mblpol");
		String pod = request.getParameter("mblpod");
		String fpd = request.getParameter("mblfpd");
		String por = request.getParameter("mblpor");


		String pkgtype = request.getParameter("mblpkgtype");
		double noofpkgs = Double.parseDouble(request.getParameter("mblpkg"));
		double noofpallets = Double.parseDouble(request.getParameter("mblpllets"));
		double netwt = Double.parseDouble(request.getParameter("mblnw"));
		double grosswt = Double.parseDouble(request.getParameter("mblgw"));
		double volume = Double.parseDouble(request.getParameter("mblcbm"));

		String marks = request.getParameter("mblremks");
		String description = request.getParameter("mbldes");
		String id= request.getParameter("mblno_id");
		String containernolist = request.getParameter("containerlist");
		
		
		System.out.println("id======================"+id);
		MasterBLEntity mblentity = new MasterBLEntity();
		mblentity.setId(Integer.parseInt(id));
		mblentity.setMblno(mblno);
		mblentity.setMbldate(mbldate);
		mblentity.setDate_of_issue(date_of_issue);
		mblentity.setPlace_of_issue(place_of_issue);
		mblentity.setVesselname(vesselname);
		mblentity.setVoyageno(voyageno);
		mblentity.setPol(pol);
		mblentity.setPod(pod);
		mblentity.setFpd(fpd);
		mblentity.setPor(por);
		mblentity.setShippername(shippername);
		mblentity.setShippertel(shippertel);
		mblentity.setShipperfax(shipperfax);
		mblentity.setShippercontact(shippercontact);
		mblentity.setShipperaddress(shipperaddress);
		mblentity.setConsigneename(consigneename);
		mblentity.setConsigneetel(consigneetel);
		mblentity.setConsigneefax(consigneefax);
		mblentity.setConsigneecontact(consigneecontact);
		mblentity.setConsigneeaddress(consigneeaddress);
		mblentity.setNotify1name(notify1name);
		mblentity.setNotify1tel(notify1tel);
		mblentity.setNotify1fax(notify1fax);
		mblentity.setNotify1contact(notify1contact);
		mblentity.setNotify1address(notify1address);
		mblentity.setNotify2name(notify2name);
		mblentity.setNotify2tel(notify2tel);
		mblentity.setNotify2fax(notify2fax);
		mblentity.setNotify2contact(notify2contact);
		mblentity.setNotify2address(notify2address);
		mblentity.setPkgtype(pkgtype);
		mblentity.setNoofpkgs(noofpkgs);
		mblentity.setNoofpallets(noofpallets);
		mblentity.setVolume(volume);
		mblentity.setNetwt(netwt);
		mblentity.setGrosswt(grosswt);
		mblentity.setMarks(marks);
		mblentity.setDescription(description);
		
		System.out.println(mblentity.getId()+"---calling Master BL Dao==="+containernolist);
		MasterBLDao mblDao = new MasterBLDao();		
		List<MasterBLContainerEnity> contdetails =new ArrayList<MasterBLContainerEnity>();

        StringTokenizer str21 = new StringTokenizer(containernolist,"*");
        while(str21.hasMoreTokens())
        {
  		MasterBLContainerEnity mblcontentirty = new MasterBLContainerEnity();
		String containerno = str21.nextToken();
		String containertype = str21.nextToken();
		String customsealno = str21.nextToken();
		String agentsealno = str21.nextToken();
		System.out.println("calling Master BL Container Dao==="+containerno);
		mblcontentirty.setMblno(mblno);
		mblcontentirty.setContainerno(containerno);
		mblcontentirty.setContainertype(containertype);
		mblcontentirty.setCustomsealno(customsealno);
		mblcontentirty.setAgentsealno(agentsealno);

		contdetails.add(mblcontentirty);
        }
        mblentity.setContDetails(contdetails);
        mblDao.MasterBlEntrydaoModify(mblentity);
        response.sendRedirect(request.getContextPath() + "/MasterBLController?action=mblrecord");
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
	        //response.sendRedirect(request.getContextPath() + "/MasterBLController?action=mblrecord");
		}
	}
}
