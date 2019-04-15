package com.dao.academicsetting;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.config.HibernateUtil;

import com.entity.academicsetting.DesignationEntity;

@SuppressWarnings("deprecation")
public class DesignationDao {
	
	
	static org.hibernate.Session session1;
	static Transaction transaction;

//Session Creation

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
	
	
	//inserting academic year record
		public void addDesignation(DesignationEntity designation) {

			createSession();
			session1.save(designation);
			commitTransaction();
			destroysession();
		}
		//Fetch Departement Type Full Record
		public  List<DesignationEntity> getDesignationTypeFullRecord() {
			
			createSession();
			@SuppressWarnings({ "unchecked" })
			Query<DesignationEntity> query = session1.createQuery("FROM DesignationEntity");
			List<DesignationEntity> list = query.getResultList();
			destroysession();
			return list;
			
			
		}

}
