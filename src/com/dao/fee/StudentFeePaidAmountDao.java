/**
 * 
 */
package com.dao.fee;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.fee.StudentFeePaidAmountEntity;

/**
 * @author Devil
 *
 */
public class StudentFeePaidAmountDao {

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

	// adding fee category
	public void addFeePaidAMount(StudentFeePaidAmountEntity entity) {
		System.out.println("inside addFeeCategory dao");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addFeeCategory

	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public List<StudentFeePaidAmountEntity> getStudentFeePaidAmountDetails() {

		createSession();
		Criteria criteria = session1.createCriteria(StudentFeePaidAmountEntity.class)
				.add(Restrictions.eq("deleteStatus", 0));
		// Query<AcademicYearEntity> query = session1.createQuery("FROM
		// CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<StudentFeePaidAmountEntity> list = criteria.list();
		destroysession();
		return list;

	}

}
