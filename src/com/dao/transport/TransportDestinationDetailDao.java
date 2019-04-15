/**
 * 
 */
package com.dao.transport;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.transport.TransportDestinationDetailEntity;

/**
 * @author Devil
 *
 */
public class TransportDestinationDetailDao {


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
	public void addTransportDestination(TransportDestinationDetailEntity entity) {

		createSession();
		session1.save(entity);
		commitTransaction();
		destroysession();
	}
	
	
	//Fetch AcademicYear Full Record
	public  List<TransportDestinationDetailEntity> getTransportDestinationFullDetails() {
		
		createSession();
		@SuppressWarnings("deprecation")
		Criteria criteria = session1.createCriteria(TransportDestinationDetailEntity.class).add(Restrictions.eq("delete_Status",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<TransportDestinationDetailEntity> list = criteria.list();
		destroysession();
		return list;
		
		
	}
	

}
