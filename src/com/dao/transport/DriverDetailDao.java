/**
 * 
 */
package com.dao.transport;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;
import com.entity.transport.DriverDetailEntity;



/**
 * @author Devil
 *
 */
public class DriverDetailDao {

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
	public void addDriver(DriverDetailEntity entity) {

		createSession();
		session1.save(entity);
		commitTransaction();
		destroysession();
	}
	
	public void setDriverVehicleAllocation(int id) {
		createSession();
		
		DriverDetailEntity entity = session1.get(DriverDetailEntity.class, id);
		entity.setAllocation_Status(1);
		session1.save(entity);
		commitTransaction();
		destroysession();
	}//setDriverVehicleAllocation
	
	
	//Fetch AcademicYear Full Record
	public  List<DriverDetailEntity> getDriverFullDetails() {
		
		createSession();
		@SuppressWarnings("deprecation")
		Criteria criteria = session1.createCriteria(DriverDetailEntity.class).add(Restrictions.eq("delete_Status",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<DriverDetailEntity> list = criteria.list();
		destroysession();
		return list;
		
		
	}
	
	//Fetch AcademicYear Full Record
		public  List<DriverDetailEntity> getUnAllocatedDriverDetails() {
			
			createSession();
			@SuppressWarnings("deprecation")
			Criteria criteria = session1.createCriteria(DriverDetailEntity.class).add(Restrictions.eq("delete_Status",0)).add(Restrictions.eq("allocation_Status",0));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<DriverDetailEntity> list = criteria.list();
			destroysession();
			return list;
			
			
		}//getUnAllocatedDriverDetails
	

}
