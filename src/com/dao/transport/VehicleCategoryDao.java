/**
 * 
 */
package com.dao.transport;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.transport.VehicleCategoryEntity;

/**
 * @author Devil
 *
 */
public class VehicleCategoryDao {

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

	//inserting academic year record
	public void addVehicleCategory(VehicleCategoryEntity entity) {

		createSession();
		session1.save(entity);
		commitTransaction();
		destroysession();
	}
	
	//Fetch AcademicYear Full Record
	public  List<VehicleCategoryEntity> getVehicleCategoryFullDetails() {
		
		createSession();
		@SuppressWarnings("deprecation")
		Criteria criteria = session1.createCriteria(VehicleCategoryEntity.class).add(Restrictions.eq("delete_Status",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<VehicleCategoryEntity> list = criteria.list();
		destroysession();
		return list;
		
		
	}
	
	
}
