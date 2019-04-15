/**
 * 
 */
package com.dao.library;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;
import com.entity.library.LibraryBookDamagedEntity;


/**
 * @author Devil
 *
 */
public class LibraryBookDamagedDao {

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

//==================================Insert Section====================	

	// inserting academic year record
	public void addLibraryBookDamegedDetail(LibraryBookDamagedEntity entity) {
		System.out.println("inside add dao method");

		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addLibraryStudentDetail

//=======================Update Section=========================	
	
	// Fetch getLibraryStudent Full Record
	
		public void updateLibraryBookDamagedDetail(LibraryBookDamagedEntity entity) {

			createSession();
			LibraryBookDamagedEntity damage = session1.get(LibraryBookDamagedEntity.class, entity.getDamage_Id());
			damage.setLib_Id(entity.getLib_Id());
			damage.setBook_Id(entity.getBook_Id());
			damage.setQuantity(entity.getQuantity());
			damage.setDamage_Date(entity.getDamage_Date());
			session1.save(damage);
			destroysession();
		

		}// getLibraryStudentFullDetail

//=======================Display Section=========================	

	// Fetch getLibraryStudent Full Record
	@SuppressWarnings("deprecation")
	public List<LibraryBookDamagedEntity> getLibraryBookDamagedFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryBookDamagedEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibraryBookDamagedEntity> list = criteria.list();
		destroysession();
		return list;

	}// getLibraryStudentFullDetail
	

	// Fetch getLibraryStudent Full Record
	
	public LibraryBookDamagedEntity getLibraryBookDamagedFullDetailById(int damage_Id) {

		createSession();
		LibraryBookDamagedEntity entity = session1.get(LibraryBookDamagedEntity.class, damage_Id);
		destroysession();
		return entity;

	}// getLibraryStudentFullDetail


}
