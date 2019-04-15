/**
 * 
 */
package com.dao.hostel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.hostel.HostelDetailEntity;


/**
 * @author Devil
 *
 */
public class HostelDetailDao {

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
	public void addHostelDetail(HostelDetailEntity entity) {
		System.out.println("inside add dao method");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}

	public void updateRoomAllocationStatusByHostelId(int id) {
		createSession();
		HostelDetailEntity room = session1.get(HostelDetailEntity.class, id);

		room.setHostel_Room_Allocation_Status(1);
		session1.save(room);
		commitTransaction();
		destroysession();
	}

	// Fetch Hostel Detail Full Record
	@SuppressWarnings("deprecation")
	public List<HostelDetailEntity> getHostelFullDetails() {

		createSession();
		Criteria criteria = session1.createCriteria(HostelDetailEntity.class).add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<HostelDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}
	
	// Fetch Hostel Detail Full Record
		@SuppressWarnings("deprecation")
		public List<HostelDetailEntity> getHostelFullDetailOfUnDefinedRooms() {

			createSession();
			Criteria criteria = session1.createCriteria(HostelDetailEntity.class).add(Restrictions.eq("delete_Status", 0))
					.add(Restrictions.eq("hostel_Room_Allocation_Status", 0));

			@SuppressWarnings("unchecked")
			List<HostelDetailEntity> list = criteria.list();
			
			destroysession();
			return list;

		}

	// Fetch Hostel Detail Full Record
	@SuppressWarnings("deprecation")
	public HostelDetailEntity getHostelFullDetailById(int id) {

		createSession();
		Criteria criteria = session1.createCriteria(HostelDetailEntity.class).add(Restrictions.eq("delete_Status", 0))
				.add(Restrictions.eq("hostel_Id", id));

		@SuppressWarnings("unchecked")
		List<HostelDetailEntity> list = criteria.list();
		HostelDetailEntity entity = new HostelDetailEntity();
		for (HostelDetailEntity e : list) {
			entity = e;
		}
		destroysession();
		return entity;

	}

	
	// Fetch Hostel Detail Full Record
			@SuppressWarnings("deprecation")
			public List<HostelDetailEntity> getHostelFullDetailBasedOnGender(String gender) {

				createSession();
				Criteria criteria = session1.createCriteria(HostelDetailEntity.class).add(Restrictions.eq("delete_Status", 0))
						.add(Restrictions.eq("hostel_For", gender));

				@SuppressWarnings("unchecked")
				List<HostelDetailEntity> list = criteria.list();
				
				destroysession();
				return list;

			}

	
}
