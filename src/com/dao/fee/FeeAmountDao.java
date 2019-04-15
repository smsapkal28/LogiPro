/**
 * 
 */
package com.dao.fee;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;
import com.entity.fee.FeeAmountEntity;


/**
 * @author Devil
 *
 */
public class FeeAmountDao {

	

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

		// adding fee category 
		public void addFeeAmount(FeeAmountEntity entity) {
			System.out.println("inside addFeeAmount dao");
			createSession();
			
			session1.save(entity);
			commitTransaction();
			destroysession();
		}//addFeeAmount
		
		//Fetch FeeAmount Full Record
		@SuppressWarnings("deprecation")
		public  List<FeeAmountEntity> getFeeAmountFullDetails() {
			
			createSession();
			Criteria criteria = session1.createCriteria(FeeAmountEntity.class).add(Restrictions.eq("deleteStatus",0));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<FeeAmountEntity> list = criteria.list();
			destroysession();
			return list;
			
			
		}//getFeeAmountFullDetails
		
	

}
