package com.Master.Customer.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.Master.Customer.entity.CustomerEntity;
import com.config.HibernateUtil;

public class CustomerDao {
	static org.hibernate.Session session1;
	static Transaction transaction;

	// Session Creation
	public static void createSession() {
		session1 = HibernateUtil.getSessionFactory().openSession();
		transaction = session1.beginTransaction();
	}

	// Transaction Commit
	public static void commitTransaction() {

		session1.getTransaction().commit();
	}

	// Destroy Session
	public static void destroysession() {
		session1.close();
	}

	public void CustomerAdd(CustomerEntity custentity)
	{
		createSession();
		session1.save(custentity);
		commitTransaction();
		destroysession();
	}

	public static List<CustomerEntity> getCustomerlist() {
		
		createSession();
		@SuppressWarnings({ "unchecked" })
		Query<CustomerEntity> query = session1.createQuery("FROM com.Master.Customer.entity.CustomerEntity", CustomerEntity.class);
		List<CustomerEntity> list = query.getResultList();
		destroysession();
		System.out.println(list);
		return list;
		// TODO Auto-generated method stub
		
	}

	public List<CustomerEntity> getCustomerDetailsByName(String customername, String location) {
		// TODO Auto-generated method stub
		createSession();
		@SuppressWarnings({ "unchecked" })
		Query<CustomerEntity> query = session1.createQuery("FROM com.Master.Customer.entity.CustomerEntity where customername='"+customername+"' and location='"+location+"'", CustomerEntity.class);
		List<CustomerEntity> list = query.getResultList();
		destroysession();
		System.out.println(list);
		return list;	}

	public void CustomerModify(CustomerEntity custentity_mod) {
		// TODO Auto-generated method stub
		
		createSession();
		CustomerEntity custentity= session1.get(com.Master.Customer.entity.CustomerEntity.class,custentity_mod.getId());
		custentity.setId(custentity_mod.getId());
		custentity.setCustomername(custentity_mod.getCustomername());
		custentity.setCustomercode(custentity_mod.getCustomercode());
		custentity.setPanno(custentity_mod.getPanno());
		custentity.setCusttype(custentity_mod.getCusttype());
		custentity.setWeburl(custentity_mod.getWeburl());
		custentity.setFac(custentity_mod.getFac());
		custentity.setTelephone1(custentity_mod.getTelephone1());
		custentity.setTelephone2(custentity_mod.getTelephone2());
		custentity.setLocation(custentity_mod.getLocation());
		custentity.setExportemail(custentity_mod.getExportemail());
		custentity.setImportemail(custentity_mod.getImportemail());
		custentity.setMktname_exp(custentity_mod.getMktname_exp());
		custentity.setMktname_imp(custentity_mod.getMktname_imp());
		custentity.setCs_exp(custentity_mod.getCs_exp());
		custentity.setCs_imp(custentity_mod.getCs_imp());
		custentity.setMktname_air_exp(custentity_mod.getMktname_air_exp());
		custentity.setMktname_air_imp(custentity_mod.getMktname_air_imp());
		custentity.setCs_air_exp(custentity_mod.getCs_air_exp());
		custentity.setCs_air_imp(custentity_mod.getCs_air_imp());
		custentity.setCustomeraddress(custentity_mod.getCustomeraddress());
		custentity.setKpname(custentity_mod.getKpname());
		custentity.setKpdesgn(custentity_mod.getKpdesgn());
		custentity.setKpname(custentity_mod.getKpname());
		custentity.setKpmob(custentity_mod.getKpmob());
		custentity.setKptel(custentity_mod.getKptel());
		custentity.setKpemail(custentity_mod.getKpemail());
		custentity.setStatus(custentity_mod.getStatus());
		custentity.setUsername(custentity_mod.getUsername());
		custentity.setLastmoddate(custentity_mod.getLastmoddate());
		custentity.setCustdetailsgst(custentity_mod.getCustdetailsgst());
		custentity.setCustdetailsalert(custentity_mod.getCustdetailsalert());
		custentity.setCustdetailscredit(custentity_mod.getCustdetailscredit());
		custentity.setAccountdetails(custentity_mod.getAccountdetails());
		session1.save(custentity);
		commitTransaction();
		destroysession();
	}
	
}
