/**
 * 
 */
package com.dao.hostel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.hostel.HostelInventoryDetailEntity;


/**
 * @author Devil
 *
 */

public class HostelInventoryDetailDao {

	
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
	public void addHostelInventoryDetail(HostelInventoryDetailEntity entity) {
		System.out.println("inside add dao method");
		createSession();
		
		session1.save(entity);
		commitTransaction();
		destroysession();
	}
	
	
	//=========================================Update Section============================================
	
		public void updateHostelInventoryAllocationToStudent(HostelInventoryDetailEntity entity,int value) {
			createSession();
			HostelInventoryDetailEntity inv = session1.get(HostelInventoryDetailEntity.class, entity.getInv_Id());
			int allocation = inv.getInv_Allocated();
			inv.setInv_Allocated(allocation+1);
			session1.save(inv);
			commitTransaction();
			destroysession();
		}
		

	// Fetch Hostel Detail Full Record
	@SuppressWarnings("deprecation")
	public List<HostelInventoryDetailEntity> getHostelInventoryFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(HostelInventoryDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0));
		
		@SuppressWarnings("unchecked")
		List<HostelInventoryDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}
	
	
	// Fetch Hostel Detail Full Record
		@SuppressWarnings("deprecation")
		public HostelInventoryDetailEntity getHostelInventoryFullDetailByCatId(int cat_Id) {

			createSession();
			Criteria criteria = session1.createCriteria(HostelInventoryDetailEntity.class)
					.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("inv_Cat_Id", cat_Id));
			
			@SuppressWarnings("unchecked")
			List<HostelInventoryDetailEntity> list = criteria.list();
			HostelInventoryDetailEntity entity = new HostelInventoryDetailEntity();
			for(HostelInventoryDetailEntity e: list) {
				entity = e;
			}
			destroysession();
			return entity;

		}

}
