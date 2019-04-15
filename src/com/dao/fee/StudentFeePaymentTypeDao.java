/**
 * 
 */
package com.dao.fee;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.fee.StudentFeePaymentTypeEntity;

/**
 * @author Devil
 *
 */
public class StudentFeePaymentTypeDao {

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
	public void addStudentFeePaymentType(StudentFeePaymentTypeEntity entity) {
		System.out.println("inside addStudentFeePaymentType dao");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addStudentFeePaymentType

	// Fetch FeePaymentType Full Record
	@SuppressWarnings("deprecation")
	public List<StudentFeePaymentTypeEntity> getStudentFeePaymentTypeFullDetails() {

		createSession();
		Criteria criteria = session1.createCriteria(StudentFeePaymentTypeEntity.class).add(Restrictions.eq("delete_Status", 0));
		
		@SuppressWarnings("unchecked")
		List<StudentFeePaymentTypeEntity> list = criteria.list();
		destroysession();
		return list;

	}// getFeeAmountFullDetails
	
	// Fetch FeePaymentType Full Record
		@SuppressWarnings("deprecation")
		public StudentFeePaymentTypeEntity getStudentFeePaymentTypeDetailsByStudentId(int studId) {

			createSession();
			Criteria criteria = session1.createCriteria(StudentFeePaymentTypeEntity.class).add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("student_Id", studId));
			
			@SuppressWarnings("unchecked")
			List<StudentFeePaymentTypeEntity> list = criteria.list();
			StudentFeePaymentTypeEntity entity = new StudentFeePaymentTypeEntity();
			for(StudentFeePaymentTypeEntity s: list) {
				entity = s;
			}
			destroysession();
			return entity;

		}// getFeeAmountFullDetails

}
