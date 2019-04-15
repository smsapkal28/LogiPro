package com.Master.Customer.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.Accounts.Master.entity.AccountDetails;
import com.Master.Customer.dao.CustomerDao;
import com.Master.Customer.entity.CustomerDetailsAlertEntity;
import com.Master.Customer.entity.CustomerDetailsCreditRateEntity;
import com.Master.Customer.entity.CustomerDetailsGstEntity;
import com.Master.Customer.entity.CustomerEntity;
import com.Master.PreDetails.dao.PreDetailsDao;
import com.Master.PreDetails.entity.AlertEntity;
import com.Master.PreDetails.entity.CounterEntity;
import com.Master.PreDetails.entity.StateEntity;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CustomerController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");

		switch (action) {
		case "PreCustDetails":

			PreCustDetails(request, response);
			break;
		case "CustList":

			CustomerList(request, response);
			break;
		case "CustListMod":

			CustomerListMod(request, response);
			break;
		case "GetCustDetsils":

			GetCustomerDetails(request, response);
			break;
		default:
		}
	}

	

	private void CustomerListMod(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<CustomerEntity> list_cust = new CustomerDao().getCustomerlist();
		List<StateEntity> list_state = new PreDetailsDao().getStatelist();
		List<AlertEntity> list_alert = new PreDetailsDao().getAlertlist();
		request.setAttribute("staterecord", list_state);
		request.setAttribute("alertrecord", list_alert);
		request.setAttribute("custrecord", list_cust);
		request.getRequestDispatcher("Masters/ModifyCustomer.jsp").forward(request, response);
	}

	private void PreCustDetails(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<StateEntity> list_state = new PreDetailsDao().getStatelist();
		List<AlertEntity> list_alert = new PreDetailsDao().getAlertlist();
		request.setAttribute("staterecord", list_state);
		request.setAttribute("alertrecord", list_alert);
		request.getRequestDispatcher("Masters/AddCustomer.jsp").forward(request, response);

	}
	private void CustomerList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<CustomerEntity> list_cust = new CustomerDao().getCustomerlist();
		request.setAttribute("custrecord", list_cust);
		request.getRequestDispatcher("Masters/ListCustomer.jsp").forward(request, response);

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
		case "CustomerAdd":
			try {
				AddCustomerDetails(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			break;
		case "CustomerModify":
			try {
				ModifyCustomerDetails(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			break;
		default:
		}
	}

	

	private void AddCustomerDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		try {
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

			String customername = request.getParameter("customername");
			String panno = request.getParameter("panno");
			String custtype = request.getParameter("custtype");
			String weburl = request.getParameter("weburl");
			String fac = request.getParameter("fac");
			String telephone1 = request.getParameter("telephone1");
			String telephone2 = request.getParameter("telephone2");
			String exportemail = request.getParameter("exportemail");
			String importemail = request.getParameter("importemail");
			String mktname_exp = request.getParameter("mktname_exp");
			String mktname_imp = request.getParameter("mktname_imp");
			String cs_exp = request.getParameter("cs_exp");
			String cs_imp = request.getParameter("cs_imp");
			String mktname_air_exp = request.getParameter("mktname_air_exp");
			String mktname_air_imp = request.getParameter("mktname_air_imp");
			String cs_air_exp = request.getParameter("cs_air_exp");
			String cs_air_imp = request.getParameter("cs_air_imp");
			String customeraddress = request.getParameter("customeraddress");
			String kpname = request.getParameter("kpname");
			String kpdesgn = request.getParameter("kpdesgn");
			String kptel = request.getParameter("kptel");
			String kpmob = request.getParameter("kpmob");
			String kpemail = request.getParameter("kpemail");
			String status1 = request.getParameter("status");			
			String gstlist = request.getParameter("gstlist");
			String alertlist = request.getParameter("alertlist");
			String creditratelist = request.getParameter("creditratelist");
			System.out.println("====gstlist===" + gstlist);
			System.out.println("====alertlist===" + alertlist);
			System.out.println("====creditratelist===" + creditratelist);

			String accountcode = "SDRS00";
/**********Code Generateion***********/
			int code=0,id=0;
			CustomerDao custdao = new CustomerDao();
			PreDetailsDao predao=new PreDetailsDao();
			List<CounterEntity> codelist=predao.getMaxCustCode();
			Iterator<CounterEntity> itr=codelist.iterator();    
		    while(itr.hasNext()){    
		    	CounterEntity q=itr.next();    
		        System.out.println("Question Name: "+q.getCustcode());
		        code=q.getCustcode();
		        id=q.getId();
		        
		    }
			code=code+1;
			accountcode = "SDRS00" + code;
			System.out.println(status1+"code=========="+code);
			CounterEntity  counterentity=new CounterEntity();
			counterentity.setId(id);
			counterentity.setCustcode(code);
			
/*******************end****************/
			
			
			CustomerEntity custentity = new CustomerEntity();
			custentity.setCustomername(customername);
			custentity.setCustomercode(accountcode);
			custentity.setPanno(panno);
			custentity.setCusttype(custtype);
			custentity.setWeburl(weburl);
			custentity.setFac(fac);
			custentity.setTelephone1(telephone1);
			custentity.setTelephone2(telephone2);
			custentity.setLocation(location);
			custentity.setExportemail(exportemail);
			custentity.setImportemail(importemail);
			custentity.setMktname_exp(mktname_exp);
			custentity.setMktname_imp(mktname_imp);
			custentity.setCs_exp(cs_exp);
			custentity.setCs_imp(cs_imp);
			custentity.setMktname_air_exp(mktname_air_exp);
			custentity.setMktname_air_imp(mktname_air_imp);
			custentity.setCs_air_exp(cs_air_exp);
			custentity.setCs_air_imp(cs_air_imp);
			custentity.setCustomeraddress(customeraddress);
			custentity.setKpname(kpname);
			custentity.setKpdesgn(kpdesgn);
			custentity.setKpname(kpname);
			custentity.setKpmob(kpmob);
			custentity.setKptel(kptel);
			custentity.setKpemail(kpemail);
			custentity.setStatus(status1);
			custentity.setUsername(username);
			custentity.setLastmoddate(lastmoddate);

			List<CustomerDetailsGstEntity> gstentity = new ArrayList<CustomerDetailsGstEntity>();
			StringTokenizer str21 = new StringTokenizer(gstlist, "*");
			while (str21.hasMoreTokens()) {
				CustomerDetailsGstEntity custgstentity = new CustomerDetailsGstEntity();
				String gst = str21.nextToken();
				String address = str21.nextToken();
				String state = str21.nextToken();
				String city = str21.nextToken();
				String postal_code = str21.nextToken();
				String telephone = str21.nextToken();
				String fax = str21.nextToken();
				String email = str21.nextToken();
				String contact_person = str21.nextToken();
				String sez = str21.nextToken();

				custgstentity.setCustomername(customername);
				custgstentity.setGst(gst);
				custgstentity.setAddress(address);
				custgstentity.setState(state);
				custgstentity.setCity(city);
				custgstentity.setPostal_code(postal_code);
				custgstentity.setTelephone(telephone);
				custgstentity.setFax(fax);
				custgstentity.setEmail(email);
				custgstentity.setContact_person(contact_person);
				custgstentity.setSez(sez);
				custgstentity.setUsername(username);
				custgstentity.setLastmoddate(lastmoddate);

				gstentity.add(custgstentity);
			}

			List<CustomerDetailsAlertEntity> alertentity = new ArrayList<CustomerDetailsAlertEntity>();
			StringTokenizer stralert = new StringTokenizer(alertlist, "*");
			while (stralert.hasMoreTokens()) {
				CustomerDetailsAlertEntity custalertentity = new CustomerDetailsAlertEntity();
				String alertname = stralert.nextToken();
				String shiptype = stralert.nextToken();
				String toname = stralert.nextToken();
				String toemaiid = stralert.nextToken();

				custalertentity.setCustomername(customername);
				custalertentity.setAlertname(alertname);
				custalertentity.setShiptype(shiptype);
				custalertentity.setToname(toname);
				custalertentity.setToemaiid(toemaiid);
				custalertentity.setUsername(username);
				custalertentity.setLastmoddate(lastmoddate);

				alertentity.add(custalertentity);
			}

			List<CustomerDetailsCreditRateEntity> creditentity = new ArrayList<CustomerDetailsCreditRateEntity>();
			StringTokenizer strcredit = new StringTokenizer(creditratelist, "*");
			while (strcredit.hasMoreTokens()) {
				CustomerDetailsCreditRateEntity custcreditentity = new CustomerDetailsCreditRateEntity();
				String shiptype_cr = strcredit.nextToken();
				String pdc = strcredit.nextToken();
				String noofdays = strcredit.nextToken();
				String amount_cr = strcredit.nextToken();

				custcreditentity.setCustomername(customername);
				custcreditentity.setShiptype_cr(shiptype_cr);
				custcreditentity.setPdc(pdc);
				custcreditentity.setNoofdays(Integer.parseInt(noofdays));
				custcreditentity.setAmount_cr(Double.parseDouble(amount_cr));
				custcreditentity.setUsername(username);
				custcreditentity.setLastmoddate(lastmoddate);

				creditentity.add(custcreditentity);
			}

			String pgroup = "SDRS";
			Double opbal = 0.0;
			String crdr = "Dr";
			boolean common = false;
			boolean status = true;
			if(status1.equals("Active"))
			{
				status = true;
			}
			if(status1.equals("De-Active"))
			{
				status = false;
			}
			List<AccountDetails> accdata = new ArrayList<AccountDetails>();
			AccountDetails accountdetails = new AccountDetails();
			accountdetails.setAccountcode(accountcode);
			accountdetails.setAccountname(customername);
			accountdetails.setPgroup(pgroup);
			accountdetails.setLocation(location);
			accountdetails.setOpbal(opbal);
			accountdetails.setCrdr(crdr);
			accountdetails.setCommon(common);
			accountdetails.setStatus(status);
			accountdetails.setUsername(username);
			accountdetails.setLastmoddate(lastmoddate);
			accdata.add(accountdetails);
		
			custentity.setCustdetailsgst(gstentity);
			custentity.setCustdetailsalert(alertentity);
			custentity.setCustdetailscredit(creditentity);
			custentity.setAccountdetails(accdata);

			
			custdao.CustomerAdd(custentity);
			predao.UpdateCustCode(counterentity);
			request.setAttribute("message", "Customer Added Successfully...!");
			response.sendRedirect(request.getContextPath() + "/CustomerController?action=PreCustDetails");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", ""+e.getMessage());
			response.sendRedirect(request.getContextPath() + "/CustomerController?action=PreCustDetails");
		}

	}
	private void ModifyCustomerDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		try {
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
			
			String customername = request.getParameter("customername");
			String cust_id = request.getParameter("cust_id");
			String accountcode = request.getParameter("customercode");			
			String panno = request.getParameter("panno");
			String custtype = request.getParameter("custtype");
			String weburl = request.getParameter("weburl");
			String fac = request.getParameter("fac");
			String telephone1 = request.getParameter("telephone1");
			String telephone2 = request.getParameter("telephone2");
			String exportemail = request.getParameter("exportemail");
			String importemail = request.getParameter("importemail");
			String mktname_exp = request.getParameter("mktname_exp");
			String mktname_imp = request.getParameter("mktname_imp");
			String cs_exp = request.getParameter("cs_exp");
			String cs_imp = request.getParameter("cs_imp");
			String mktname_air_exp = request.getParameter("mktname_air_exp");
			String mktname_air_imp = request.getParameter("mktname_air_imp");
			String cs_air_exp = request.getParameter("cs_air_exp");
			String cs_air_imp = request.getParameter("cs_air_imp");
			String customeraddress = request.getParameter("customeraddress");
			String kpname = request.getParameter("kpname");
			String kpdesgn = request.getParameter("kpdesgn");
			String kptel = request.getParameter("kptel");
			String kpmob = request.getParameter("kpmob");
			String kpemail = request.getParameter("kpemail");
			String status1 = request.getParameter("status");			
			String gstlist = request.getParameter("gstlist");
			String alertlist = request.getParameter("alertlist");
			String creditratelist = request.getParameter("creditratelist");
			System.out.println("====gstlist===" + gstlist);
			System.out.println("====alertlist===" + alertlist);
			System.out.println("====creditratelist===" + creditratelist);

			java.util.Date lastmoddate = new java.util.Date();

			
			
			CustomerEntity custentity = new CustomerEntity();
			custentity.setId(Integer.parseInt(cust_id));			
			custentity.setCustomername(customername);
			custentity.setCustomercode(accountcode);
			custentity.setPanno(panno);
			custentity.setCusttype(custtype);
			custentity.setWeburl(weburl);
			custentity.setFac(fac);
			custentity.setTelephone1(telephone1);
			custentity.setTelephone2(telephone2);
			custentity.setLocation(location);
			custentity.setExportemail(exportemail);
			custentity.setImportemail(importemail);
			custentity.setMktname_exp(mktname_exp);
			custentity.setMktname_imp(mktname_imp);
			custentity.setCs_exp(cs_exp);
			custentity.setCs_imp(cs_imp);
			custentity.setMktname_air_exp(mktname_air_exp);
			custentity.setMktname_air_imp(mktname_air_imp);
			custentity.setCs_air_exp(cs_air_exp);
			custentity.setCs_air_imp(cs_air_imp);
			custentity.setCustomeraddress(customeraddress);
			custentity.setKpname(kpname);
			custentity.setKpdesgn(kpdesgn);
			custentity.setKpname(kpname);
			custentity.setKpmob(kpmob);
			custentity.setKptel(kptel);
			custentity.setKpemail(kpemail);
			custentity.setStatus(status1);
			custentity.setUsername(username);
			custentity.setLastmoddate(lastmoddate);

			List<CustomerDetailsGstEntity> gstentity = new ArrayList<CustomerDetailsGstEntity>();
			StringTokenizer str21 = new StringTokenizer(gstlist, "*");
			while (str21.hasMoreTokens()) {
				CustomerDetailsGstEntity custgstentity = new CustomerDetailsGstEntity();
				String gst = str21.nextToken();
				String address = str21.nextToken();
				String state = str21.nextToken();
				String city = str21.nextToken();
				String postal_code = str21.nextToken();
				String telephone = str21.nextToken();
				String fax = str21.nextToken();
				String email = str21.nextToken();
				String contact_person = str21.nextToken();
				String sez = str21.nextToken();

				custgstentity.setCustomername(customername);
				custgstentity.setGst(gst);
				custgstentity.setAddress(address);
				custgstentity.setState(state);
				custgstentity.setCity(city);
				custgstentity.setPostal_code(postal_code);
				custgstentity.setTelephone(telephone);
				custgstentity.setFax(fax);
				custgstentity.setEmail(email);
				custgstentity.setContact_person(contact_person);
				custgstentity.setSez(sez);
				custgstentity.setUsername(username);
				custgstentity.setLastmoddate(lastmoddate);

				gstentity.add(custgstentity);
			}

			List<CustomerDetailsAlertEntity> alertentity = new ArrayList<CustomerDetailsAlertEntity>();
			StringTokenizer stralert = new StringTokenizer(alertlist, "*");
			while (stralert.hasMoreTokens()) {
				CustomerDetailsAlertEntity custalertentity = new CustomerDetailsAlertEntity();
				String alertname = stralert.nextToken();
				String shiptype = stralert.nextToken();
				String toname = stralert.nextToken();
				String toemaiid = stralert.nextToken();

				custalertentity.setCustomername(customername);
				custalertentity.setAlertname(alertname);
				custalertentity.setShiptype(shiptype);
				custalertentity.setToname(toname);
				custalertentity.setToemaiid(toemaiid);
				custalertentity.setUsername(username);
				custalertentity.setLastmoddate(lastmoddate);

				alertentity.add(custalertentity);
			}

			List<CustomerDetailsCreditRateEntity> creditentity = new ArrayList<CustomerDetailsCreditRateEntity>();
			StringTokenizer strcredit = new StringTokenizer(creditratelist, "*");
			while (strcredit.hasMoreTokens()) {
				CustomerDetailsCreditRateEntity custcreditentity = new CustomerDetailsCreditRateEntity();
				String shiptype_cr = strcredit.nextToken();
				String pdc = strcredit.nextToken();
				String noofdays = strcredit.nextToken();
				String amount_cr = strcredit.nextToken();

				custcreditentity.setCustomername(customername);
				custcreditentity.setShiptype_cr(shiptype_cr);
				custcreditentity.setPdc(pdc);
				custcreditentity.setNoofdays(Integer.parseInt(noofdays));
				custcreditentity.setAmount_cr(Double.parseDouble(amount_cr));
				custcreditentity.setUsername(username);
				custcreditentity.setLastmoddate(lastmoddate);

				creditentity.add(custcreditentity);
			}

			String pgroup = "SDRS";
			Double opbal = 0.0;
			String crdr = "Dr";
			boolean common = false;
			boolean status = true;
			if(status1.equals("Active"))
			{
				status = true;
			}
			if(status1.equals("De-Active"))
			{
				status = false;
			}
			List<AccountDetails> accdata = new ArrayList<AccountDetails>();
			AccountDetails accountdetails = new AccountDetails();
			accountdetails.setAccountcode(accountcode);
			accountdetails.setAccountname(customername);
			accountdetails.setPgroup(pgroup);
			accountdetails.setLocation(location);
			accountdetails.setOpbal(opbal);
			accountdetails.setCrdr(crdr);
			accountdetails.setCommon(common);
			accountdetails.setStatus(status);
			accountdetails.setUsername(username);
			accountdetails.setLastmoddate(lastmoddate);
			accdata.add(accountdetails);
		
			custentity.setCustdetailsgst(gstentity);
			custentity.setCustdetailsalert(alertentity);
			custentity.setCustdetailscredit(creditentity);
			custentity.setAccountdetails(accdata);

			CustomerDao custdao = new CustomerDao();
			custdao.CustomerModify(custentity);
	
			request.setAttribute("message", "Customer Added Successfully...!");
			response.sendRedirect(request.getContextPath() + "/CustomerController?action=CustListMod");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", ""+e.getMessage());
			response.sendRedirect(request.getContextPath() + "/CustomerController?action=CustListMod");
		}
		
	}
	private void GetCustomerDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
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
		String customername = request.getParameter("customername");
        JSONObject jsonobj = new JSONObject();
        JSONObject jsonsub_obj = new JSONObject();
        @SuppressWarnings("unused")
		JSONArray jsonarray =new JSONArray();
        @SuppressWarnings("unused")
		JSONArray jsonarray1 =new JSONArray();
        @SuppressWarnings("unused")
		JSONArray jsonarray2 =new JSONArray();
        @SuppressWarnings("unused")
		JSONArray subarray = null;
        @SuppressWarnings("unused")
		JSONArray subarray1 = null;
        @SuppressWarnings("unused")
		JSONArray subarray2 = null;
        
		List<CustomerEntity> list_cust = new CustomerDao().getCustomerDetailsByName(customername,location);
		for(CustomerEntity q:list_cust)
		{		
			jsonobj.put("response","SUCCESS");
	        jsonsub_obj.put("cust_id",q.getId());
	        jsonsub_obj.put("customername",q.getCustomername());
	        jsonsub_obj.put("customercode",q.getCustomercode());	        
	        jsonsub_obj.put("panno",q.getPanno());
	        jsonsub_obj.put("custtype",q.getCusttype());
	        jsonsub_obj.put("weburl",q.getWeburl());
	        jsonsub_obj.put("fac",q.getFac());
	        jsonsub_obj.put("telephone1",q.getTelephone1());
	        jsonsub_obj.put("telephone2",q.getTelephone2());
	        jsonsub_obj.put("location",q.getLocation());
	        jsonsub_obj.put("exportemail",q.getExportemail());
	        jsonsub_obj.put("importemail",q.getImportemail());
	        jsonsub_obj.put("mktname_exp",q.getMktname_exp());
	        jsonsub_obj.put("mktname_imp",q.getMktname_imp());
	        jsonsub_obj.put("cs_exp",q.getCs_exp());
	        jsonsub_obj.put("cs_imp",q.getCs_imp());
	        jsonsub_obj.put("mktname_air_exp",q.getMktname_air_exp());
	        jsonsub_obj.put("mktname_air_imp",q.getMktname_air_imp());
	        jsonsub_obj.put("cs_air_exp",q.getCs_air_exp());
	        jsonsub_obj.put("cs_air_imp",q.getCs_air_imp());
	        jsonsub_obj.put("customeraddress",q.getCustomeraddress());
	        jsonsub_obj.put("status",q.getStatus());
	        jsonsub_obj.put("kpname",q.getKpname());
	        jsonsub_obj.put("kpdesgn",q.getKpdesgn());
	        jsonsub_obj.put("kptel",q.getKptel());
	        jsonsub_obj.put("kpmob",q.getKpmob());
	        jsonsub_obj.put("kpemail",q.getKpemail());

	        System.out.println(q.getId()+"sssssssssbbbbbbbbb"+q.getCustdetailsgst());
			List<CustomerDetailsGstEntity> gstentity = q.getCustdetailsgst();
			for(CustomerDetailsGstEntity g : gstentity)
			{
	            subarray = new JSONArray();
	            
	        	subarray.add(""+g.getGst());
	        	subarray.add(""+g.getAddress());
	        	subarray.add(""+g.getState());
	        	subarray.add(""+g.getCity());
	        	subarray.add(""+g.getPostal_code());
	        	subarray.add(""+g.getTelephone());
	        	subarray.add(""+g.getFax());
	        	subarray.add(""+g.getEmail());
	        	subarray.add(""+g.getContact_person());
	        	subarray.add(""+g.getSez());
	        	
	        	jsonarray.add(subarray);
			}
			
			List<CustomerDetailsAlertEntity> alertentity = q.getCustdetailsalert();
			for(CustomerDetailsAlertEntity a:alertentity)
			{
	            subarray1 = new JSONArray();
	            
	        	subarray1.add(""+a.getAlertname());
	        	subarray1.add(""+a.getShiptype());
	        	subarray1.add(""+a.getToname());
	        	subarray1.add(""+a.getToemaiid());
	        	
	        	jsonarray1.add(subarray1);
			}
			List<CustomerDetailsCreditRateEntity> creditntity = q.getCustdetailscredit();
			for(CustomerDetailsCreditRateEntity r:creditntity)
			{
	            subarray2 = new JSONArray();
	            
	        	subarray2.add(""+r.getShiptype_cr());
	        	subarray2.add(""+r.getPdc());
	        	subarray2.add(""+r.getNoofdays());
	        	subarray2.add(""+r.getAmount_cr());
	        	
	        	jsonarray2.add(subarray2);
			}

		}
		jsonobj.put("custdetails",jsonsub_obj);
		 jsonobj.put("gstdetails",jsonarray);
		 jsonobj.put("alertdetails",jsonarray1);
		 jsonobj.put("creditdetails",jsonarray2);

		System.out.println("sssssssss"+jsonobj);
		 response.setContentType("json");
        response.setHeader("Cache-Control", "no-cache");
        response.getWriter().write(jsonobj.toString());


	}
}
