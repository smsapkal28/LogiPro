/**
 * 
 */
package com.dao.fee;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.fee.FeeFrequencyEntity;

/**
 * @author Devil
 *
 */
public class FeeFrequencyDao {

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

	// adding fee frequency
	public void addFeeFrequency(FeeFrequencyEntity entity) {
		System.out.println("inside addFeeFrequency dao");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addFeeFrequency

	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public List<FeeFrequencyEntity> getFeeFrequencyFullDetails() {

		createSession();
		Criteria criteria = session1.createCriteria(FeeFrequencyEntity.class).add(Restrictions.eq("deleteStatus", 0));
		
		@SuppressWarnings("unchecked")
		List<FeeFrequencyEntity> list = criteria.list();
		destroysession();
		return list;

	}
	
	// Fetch AcademicYear Full Record
		@SuppressWarnings("deprecation")
		public FeeFrequencyEntity getFeeFrequencyDetailsById(int id) {

			createSession();
			Criteria criteria = session1.createCriteria(FeeFrequencyEntity.class).add(Restrictions.eq("deleteStatus", 0)).add(Restrictions.eq("feqId", id));
			
			@SuppressWarnings("unchecked")
			List<FeeFrequencyEntity> list = criteria.list();
			FeeFrequencyEntity entity = new FeeFrequencyEntity();
			for(FeeFrequencyEntity fe: list) {
				entity=fe;
			}
			destroysession();
			return entity;

		}

}
