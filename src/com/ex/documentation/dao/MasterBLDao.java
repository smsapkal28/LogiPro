/**
 * 
 */
package com.ex.documentation.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import com.config.HibernateUtil;
import com.ex.documentation.entity.MasterBLContainerEnity;
import com.ex.documentation.entity.MasterBLEntity;

/**
 * @author USER 13
 *
 */
@SuppressWarnings("deprecation")
public class MasterBLDao {

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

	// Insert Mbl Record In database
	public void MasterBlEntrydao(MasterBLEntity mblentity) {
		// TODO Auto-generated method stub
		createSession();
		session1.save(mblentity);
		commitTransaction();
		destroysession();
	}
	public void MasterBlEntrydaoModify(MasterBLEntity mblentity_mod){
		// TODO Auto-generated method stub
		createSession();
		System.out.println("===="+mblentity_mod.getId());
		MasterBLEntity mblentity= session1.get(com.ex.documentation.entity.MasterBLEntity.class, mblentity_mod.getId());
		System.out.println("===="+mblentity.getId());
		mblentity.setId(mblentity_mod.getId());
		mblentity.setMblno(mblentity_mod.getMblno());
		mblentity.setMbldate(mblentity_mod.getMbldate());
		mblentity.setDate_of_issue(mblentity_mod.getDate_of_issue());
		mblentity.setPlace_of_issue(mblentity_mod.getPlace_of_issue());
		mblentity.setVesselname(mblentity_mod.getVesselname());
		mblentity.setVoyageno(mblentity_mod.getVoyageno());
		mblentity.setPol(mblentity_mod.getPol());
		mblentity.setPod(mblentity_mod.getPod());
		mblentity.setFpd(mblentity_mod.getFpd());
		mblentity.setPor(mblentity_mod.getPor());
		mblentity.setShippername(mblentity_mod.getShippername());
		mblentity.setShippertel(mblentity_mod.getShippertel());
		mblentity.setShipperfax(mblentity_mod.getShipperfax());
		mblentity.setShippercontact(mblentity_mod.getShippercontact());
		mblentity.setShipperaddress(mblentity_mod.getShipperaddress());
		mblentity.setConsigneename(mblentity_mod.getConsigneename());
		mblentity.setConsigneetel(mblentity_mod.getConsigneetel());
		mblentity.setConsigneefax(mblentity_mod.getConsigneefax());
		mblentity.setConsigneecontact(mblentity_mod.getConsigneecontact());
		mblentity.setConsigneeaddress(mblentity_mod.getConsigneeaddress());
		mblentity.setNotify1name(mblentity_mod.getNotify1name());
		mblentity.setNotify1tel(mblentity_mod.getNotify1tel());
		mblentity.setNotify1fax(mblentity_mod.getNotify1fax());
		mblentity.setNotify1contact(mblentity_mod.getNotify1contact());
		mblentity.setNotify1address(mblentity_mod.getNotify1address());
		mblentity.setNotify2name(mblentity_mod.getNotify2name());
		mblentity.setNotify2tel(mblentity_mod.getNotify2tel());
		mblentity.setNotify2fax(mblentity_mod.getNotify2fax());
		mblentity.setNotify2contact(mblentity_mod.getNotify2contact());
		mblentity.setNotify2address(mblentity_mod.getNotify2address());
		mblentity.setPkgtype(mblentity_mod.getPkgtype());
		mblentity.setNoofpkgs(mblentity_mod.getNoofpkgs());
		mblentity.setNoofpallets(mblentity_mod.getNoofpallets());
		mblentity.setVolume(mblentity_mod.getVolume());
		mblentity.setNetwt(mblentity_mod.getNetwt());
		mblentity.setGrosswt(mblentity_mod.getGrosswt());
		mblentity.setMarks(mblentity_mod.getMarks());
		mblentity.setDescription(mblentity_mod.getDescription());
		mblentity.setContDetails(mblentity_mod.getContDetails());
		session1.save(mblentity);
		commitTransaction();
		destroysession();
	}
	// Insert Mbl Record In database
	public void MasterBlContEntrydao(MasterBLContainerEnity mblcontentirty) {
		// TODO Auto-generated method stub
		createSession();
		session1.save(mblcontentirty);
		commitTransaction();
		destroysession();
	}

	// Fetch Mbl Record From Database
	public List<MasterBLEntity> getMasterBllist() {
		createSession();
		@SuppressWarnings({ "unchecked" })
		Query<MasterBLEntity> query = session1.createQuery("FROM com.ex.documentation.entity.MasterBLEntity", MasterBLEntity.class);
		List<MasterBLEntity> list = query.getResultList();
		 Iterator<MasterBLEntity> itr=list.iterator();    
		    while(itr.hasNext()){    
		    	MasterBLEntity q=itr.next();    
		        System.out.println("Question Name: "+q.getMblno());
		        List<MasterBLContainerEnity> list2=q.getContDetails();    
		        Iterator<MasterBLContainerEnity> itr2=list2.iterator();    
		       while(itr2.hasNext())  
		       {  
		    	   MasterBLContainerEnity a=itr2.next();  
		            System.out.println(a.getMblno()+":"+a.getContainerno());  
		        }  
		    }
		destroysession();
		System.out.println(list);
		return list;

	}

	public List<MasterBLEntity> getMasterBllistById(String mblno) {
		// TODO Auto-generated method stub
		
		createSession();
		@SuppressWarnings({ "unchecked" })
		Query<MasterBLEntity> query = session1.createQuery("FROM com.ex.documentation.entity.MasterBLEntity where mblno='"+mblno+"'", MasterBLEntity.class);
		List<MasterBLEntity> list = query.getResultList();
		 Iterator<MasterBLEntity> itr=list.iterator();    
		    while(itr.hasNext()){    
		    	MasterBLEntity q=itr.next();    
		        System.out.println("Question Name: "+q.getMblno());
		        List<MasterBLContainerEnity> contDetails=q.getContDetails(); 
		        Iterator<MasterBLContainerEnity> itr2=contDetails.iterator();    
		       while(itr2.hasNext())  
		       {  
		    	   MasterBLContainerEnity a=itr2.next();  
		            System.out.println(a.getMblno()+":"+a.getContainerno());  
		        }  
		    }
		destroysession();
		System.out.println(list);
		return list;
	}
}
