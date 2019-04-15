package com.ex.documentation.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.ex.documentation.dao.MasterBLDao;
import com.ex.documentation.entity.MasterBLContainerEnity;
import com.ex.documentation.entity.MasterBLEntity;

/**
 * Servlet implementation class MasterBLModifyController
 */
@WebServlet("/MasterBLModifyController")
public class MasterBLModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MasterBLModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			MasterblModify(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
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
	
	@SuppressWarnings({ "unchecked", "null" })
	public void MasterblModify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException 
	{
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

		String mblno = request.getParameter("sbillno1");
        JSONObject jsonobj = new JSONObject();
        JSONObject jsonsub_obj = new JSONObject();
        @SuppressWarnings("unused")
		JSONArray jsonarray =new JSONArray();
        @SuppressWarnings("unused")
		JSONArray subarray = null;

		List<MasterBLEntity> list = new MasterBLDao().getMasterBllistById(mblno);
		
		for (MasterBLEntity q : list) 
		{
		   	
		jsonobj.put("response","SUCCESS");
        jsonsub_obj.put("mblno_id",q.getId());
        jsonsub_obj.put("mblno",q.getMblno());
        jsonsub_obj.put("mbldate",""+sdf.format(q.getMbldate()));
        jsonsub_obj.put("mblissuedate",""+sdf.format(q.getDate_of_issue()));
        jsonsub_obj.put("mblissueplace",q.getPlace_of_issue());
        jsonsub_obj.put("mblvessel",q.getVesselname());
        jsonsub_obj.put("mblvoyages",q.getVoyageno());
        jsonsub_obj.put("mblpol",q.getPol());
        jsonsub_obj.put("mblpod",q.getPod());
        jsonsub_obj.put("mblfpd",q.getFpd());
        jsonsub_obj.put("mblpor",q.getPor());
        jsonsub_obj.put("mblrouting",q.getPod());
        jsonsub_obj.put("mblsname",q.getShippername());
        jsonsub_obj.put("mblsphone",q.getShippertel());
        jsonsub_obj.put("mblsfax",q.getShipperfax());
        jsonsub_obj.put("mblcp",q.getShippercontact());
        jsonsub_obj.put("mblsadd",q.getShipperaddress());
        jsonsub_obj.put("mblcname",q.getConsigneename());
        jsonsub_obj.put("mblctel",q.getConsigneetel());
        jsonsub_obj.put("mblcfax",q.getConsigneefax());
        jsonsub_obj.put("mblccontact",q.getConsigneecontact());
        jsonsub_obj.put("mblcadd",q.getConsigneeaddress());
        jsonsub_obj.put("mblnname",q.getNotify1name());
        jsonsub_obj.put("mblntel",q.getNotify1tel());
        jsonsub_obj.put("mblnfax",q.getNotify1fax());
        jsonsub_obj.put("mblncp",q.getNotify1contact());
        jsonsub_obj.put("mblnadd",q.getNotify1address());
        jsonsub_obj.put("mblnnname",q.getNotify2name());
        jsonsub_obj.put("mblnntel",q.getNotify2tel());
        jsonsub_obj.put("mblnnfax",q.getNotify2fax());
        jsonsub_obj.put("mblnncp",q.getNotify2contact());
        jsonsub_obj.put("mblnnadd",q.getNotify2contact());
        jsonsub_obj.put("mblpkg",""+q.getNoofpkgs());
        jsonsub_obj.put("mblpkgtype",q.getPkgtype());
        jsonsub_obj.put("mblpllets",""+q.getNoofpallets());
        jsonsub_obj.put("mblcbm",""+q.getVolume());
        jsonsub_obj.put("mblgw",""+q.getGrosswt());
        jsonsub_obj.put("mblnw",""+q.getNetwt());
        jsonsub_obj.put("mblremks",q.getMarks());
        jsonsub_obj.put("mbldes",q.getDescription());
        
        //jsonsub_obj.put("mode","MODIFY");
        System.out.println(q.getId()+"sssssssssbbbbbbbbb"+q.getContDetails());
        List<MasterBLContainerEnity> list_c= q.getContDetails();
        for(MasterBLContainerEnity c:list_c)
	    {  
            subarray = new JSONArray();
            
        	subarray.add(""+c.getContainerno());
        	subarray.add(""+c.getContainertype());
        	subarray.add(""+c.getCustomsealno());
        	subarray.add(""+c.getAgentsealno());
        
            jsonarray.add(subarray);

	    }
		}
		 jsonobj.put("mbldetails",jsonsub_obj);
		 jsonobj.put("contdetails",jsonarray);
		System.out.println("sssssssss"+jsonobj);
		 response.setContentType("json");
         response.setHeader("Cache-Control", "no-cache");
         response.getWriter().write(jsonobj.toString());

	}
}
