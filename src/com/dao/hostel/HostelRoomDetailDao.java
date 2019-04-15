/**
 * 
 */
package com.dao.hostel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.hostel.HostelRoomDetailEntity;

/**
 * @author Devil
 *
 */
public class HostelRoomDetailDao {

	
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
	
	
	//============================================insert Section===========================================

	// inserting academic year record
	public void addHostelRoomDetail(HostelRoomDetailEntity entity) {
		System.out.println("inside add dao method");
		HostelDetailDao dao = new HostelDetailDao();
		dao.updateRoomAllocationStatusByHostelId(entity.getHostel_Id());
		createSession();
		
		session1.save(entity);
		commitTransaction();
		destroysession();
	}

	//=========================================Update Section============================================
	
	public void updateStudentRoomAllocationStatusByRoomId(int id) {
		createSession();
		HostelRoomDetailEntity room = session1.get(HostelRoomDetailEntity.class, id);
		int allocation = room.getAllocated_Beds();
		room.setAllocated_Beds(allocation+1);
		session1.save(room);
		commitTransaction();
		destroysession();
	}
	
	
	//=======================================Fetch Section=================================================
	
	// Fetch Hostel Detail Full Record
	@SuppressWarnings("deprecation")
	public List<HostelRoomDetailEntity> getHostelRoomFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(HostelRoomDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0));
		
		@SuppressWarnings("unchecked")
		List<HostelRoomDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}
	
	
	
	
	// Fetch Hostel Detail Full Record
		@SuppressWarnings("deprecation")
		public List<HostelRoomDetailEntity> getHostelRoomFullDetailByHostelId(int hostel_Id) {

			createSession();
			Criteria criteria = session1.createCriteria(HostelRoomDetailEntity.class)
					.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("hostel_Id", hostel_Id));
			
			@SuppressWarnings("unchecked")
			List<HostelRoomDetailEntity> list = criteria.list();
			destroysession();
			return list;

		}

}
