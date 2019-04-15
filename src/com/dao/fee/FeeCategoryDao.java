/**
 * 
 */
package com.dao.fee;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.fee.FeeCategoryEntity;

/**
 * @author Devil
 *
 */
public class FeeCategoryDao {

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
		public void addFeeCategory(FeeCategoryEntity categoryEntity) {
			System.out.println("inside addFeeCategory dao");
			createSession();
			
			session1.save(categoryEntity);
			commitTransaction();
			destroysession();
		}//addFeeCategory
		
		//Fetch AcademicYear Full Record
		@SuppressWarnings("deprecation")
		public  List<FeeCategoryEntity> getFeeCategoryFullDetails() {
			
			createSession();
			Criteria criteria = session1.createCriteria(FeeCategoryEntity.class).add(Restrictions.eq("deleteStatus",0));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<FeeCategoryEntity> list = criteria.list();
			destroysession();
			return list;
			
			
		}
		
	
}
