/**
 * 
 */
package com.dao.hostel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.hostel.HostelStudentDetailEntity;

/**
 * @author Devil
 *
 */
public class HostelStudentDetailDao {

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
	public void addHostelStudentDetail(HostelStudentDetailEntity entity) {
		System.out.println("inside add dao method");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addHostelStudentDetail

	// ========================Update Section==========================

	public void updateStudentRoomAllocationStatusByStudentId(int id) {
		createSession();
		HostelStudentDetailEntity std = session1.get(HostelStudentDetailEntity.class, id);
		std.setRoom_Allocation_Status(1);
		
		session1.save(std);
		commitTransaction();
		destroysession();
	}

	// ==========================Fetch Section===============================
	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public List<HostelStudentDetailEntity> getHostelStudentFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(HostelStudentDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<HostelStudentDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}

	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public HostelStudentDetailEntity getHostelStudentFullDetailById(int stud_Hostel_Id) {

		createSession();
		Criteria criteria = session1.createCriteria(HostelStudentDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("stud_Hostel_Id", stud_Hostel_Id));

		@SuppressWarnings("unchecked")
		List<HostelStudentDetailEntity> list = criteria.list();
		HostelStudentDetailEntity entity = new HostelStudentDetailEntity();
		for (HostelStudentDetailEntity e : list) {
			entity = e;
		}
		destroysession();
		return entity;

	}

}
