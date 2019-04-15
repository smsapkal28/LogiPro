/**
 * 
 */
package com.dao.hostel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.hostel.HostelCategoryEntity;

/**
 * @author Devil
 *
 */
public class HostelCategoryDao {

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

	// inserting academic year record
	public void addHostelCategory(HostelCategoryEntity entity) {
		System.out.println("inside add dao method");
		createSession();
		
		session1.save(entity);
		commitTransaction();
		destroysession();
	}

	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public List<HostelCategoryEntity> getHostelCategoryFullDetails() {

		createSession();
		Criteria criteria = session1.createCriteria(HostelCategoryEntity.class)
				.add(Restrictions.eq("delete_Status", 0));
		
		@SuppressWarnings("unchecked")
		List<HostelCategoryEntity> list = criteria.list();
		destroysession();
		return list;

	}

}
