/**
 * 
 */
package com.dao.hostel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.hostel.HostelStudentRoomAllocationDetailEntity;

/**
 * @author Devil
 *
 */
public class HostelStudentRoomAllocationDetailDao {

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
	public void addHostelStudentRoomAllocation(HostelStudentRoomAllocationDetailEntity entity) {
		System.out.println("inside add dao method");
		HostelRoomDetailDao dao = new HostelRoomDetailDao();
		dao.updateStudentRoomAllocationStatusByRoomId(entity.getRoom_Id());
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}

	// Fetch Hostel Detail Full Record
	@SuppressWarnings("deprecation")
	public List<HostelStudentRoomAllocationDetailEntity> getHostelStudentRoomAllocationFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(HostelStudentRoomAllocationDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<HostelStudentRoomAllocationDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}

}
