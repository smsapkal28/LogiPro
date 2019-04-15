package com.Master.Vessel.dao;

import org.hibernate.Transaction;

import com.Master.Vessel.entity.VesselEntity;
import com.config.HibernateUtil;

public class VesselDao {
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

	public void addVessel(VesselEntity ventity) {
		// TODO Auto-generated method stub
		createSession();
		session1.save(ventity);
		commitTransaction();
		destroysession();
		
	}


}
