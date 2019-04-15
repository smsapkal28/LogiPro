/**
 * 
 */
package com.dao.transport;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.transport.VehicleDetailEntity;

/**
 * @author Devil
 *
 */
public class VehicleDetailDao {

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

	//===========================================================Insert Section=============================================================
	// inserting academic year record
	public void addVehicle(VehicleDetailEntity entity) {

		createSession();
		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addVehicle
	
	//=======================================================Update Section=================================================================
	public void setDriverVehicleAllocation(int id) {
		createSession();
		
		VehicleDetailEntity entity = session1.get(VehicleDetailEntity.class, id);
		entity.setAllocation_Status(1);
		session1.save(entity);
		commitTransaction();
		destroysession();
	}//setDriverVehicleAllocation

	//========================================================Display Section=================================================================
	// Fetch getVehicleFullDetail
	public List<VehicleDetailEntity> getVehicleFullDetail() {

		createSession();
		@SuppressWarnings("deprecation")
		Criteria criteria = session1.createCriteria(VehicleDetailEntity.class).add(Restrictions.eq("delete_Status", 0));
		// Query<AcademicYearEntity> query = session1.createQuery("FROM
		// CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<VehicleDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}// getVehicleFullDetail
	
	// Fetch getVehicleFullDetail
		public List<VehicleDetailEntity> getUnAllocatedVehicleDetail() {

			createSession();
			@SuppressWarnings("deprecation")
			Criteria criteria = session1.createCriteria(VehicleDetailEntity.class).add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("allocation_Status", 0));
			// Query<AcademicYearEntity> query = session1.createQuery("FROM
			// CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<VehicleDetailEntity> list = criteria.list();
			destroysession();
			return list;

		}// getUnAllocatedVehicleDetail
}
