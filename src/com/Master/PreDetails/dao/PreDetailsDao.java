package com.Master.PreDetails.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.Master.PreDetails.entity.AlertEntity;
import com.Master.PreDetails.entity.CounterEntity;
import com.Master.PreDetails.entity.StateEntity;
import com.config.HibernateUtil;


@SuppressWarnings("deprecation")
public class PreDetailsDao {

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

	@SuppressWarnings("deprecation")
	public List<StateEntity> getStatelist() {
		// TODO Auto-generated method stub
		createSession();
		System.out.println("Checking for state details");
		@SuppressWarnings({ "unchecked" })
		Query<StateEntity> query = session1.createQuery("FROM com.Master.PreDetails.entity.StateEntity", StateEntity.class);
		List<StateEntity> list = query.getResultList();
		destroysession();
		System.out.println(list);
		return list;
	}

	@SuppressWarnings("deprecation")
	public List<AlertEntity> getAlertlist() {
		// TODO Auto-generated method stub
		createSession();
		@SuppressWarnings({ "unchecked" })
		Query<AlertEntity> query = session1.createQuery("FROM com.Master.PreDetails.entity.AlertEntity", AlertEntity.class);
		List<AlertEntity> list = query.getResultList();
		destroysession();
		System.out.println(list);
		return list;
	}

	
	public void UpdateCustCode(CounterEntity counterentity)
	{
		createSession();
		CounterEntity mod_counterentity=session1.get(com.Master.PreDetails.entity.CounterEntity.class, counterentity.getId());
		mod_counterentity.setId(counterentity.getId());
		mod_counterentity.setCustcode(counterentity.getCustcode());
		session1.save(mod_counterentity);
		commitTransaction();
		destroysession();
	}
	public List<CounterEntity> getMaxCustCode() {
		createSession();
		@SuppressWarnings({"unchecked"})
		Query<CounterEntity> query = session1.createQuery(" FROM com.Master.PreDetails.entity.CounterEntity", CounterEntity.class);
		List<CounterEntity> list = query.getResultList();
		
		destroysession();
		System.out.println(list);
		return list;
	}
}
