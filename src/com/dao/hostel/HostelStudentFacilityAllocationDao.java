/**
 * 
 */
package com.dao.hostel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.hostel.HostelStudentFacilityAllocationEntity;

/**
 * @author Devil
 *
 */
public class HostelStudentFacilityAllocationDao {

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

	// =====================Insert Section===============================
	// inserting academic year record
	public void addHostelStudentFacilityAllocationDetail(HostelStudentFacilityAllocationEntity entity) {
		System.out.println("inside add dao method");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addHostelStudentDetail

	// ========================Update Section==========================

	

	// ==========================Fetch Section===============================
	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public List<HostelStudentFacilityAllocationEntity> getHostelStudentFacilityAllocationFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(HostelStudentFacilityAllocationEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<HostelStudentFacilityAllocationEntity> list = criteria.list();
		destroysession();
		return list;

	}

	


}
