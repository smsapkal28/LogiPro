/**
 * 
 */
package com.dao.library;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.library.LibraryDetailEntity;

/**
 * @author Devil
 *
 */
public class LibraryDetailDao {

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

//=====================================Insert Section=================================	

	// inserting academic year record
	public void addLibraryDetail(LibraryDetailEntity entity) {
		System.out.println("inside add dao method");

		int count = 0;
		List<LibraryDetailEntity> libraryList = getLibraryFullDetails();

		for (LibraryDetailEntity library : libraryList) {

			if (library.getLib_Code().equalsIgnoreCase(entity.getLib_Code())
					|| library.getLib_Name().equalsIgnoreCase(entity.getLib_Name()))
				count++;
		}

		if (count == 0) {
			createSession();
			session1.save(entity);
			commitTransaction();
			destroysession();
		}

	}

//====================================Delete Section=================================
	public void deleteLibraryById(int lib_Id) {
		createSession();
		LibraryDetailEntity lib = session1.get(LibraryDetailEntity.class, lib_Id);
		lib.setDeletion_Date(new Date());
		lib.setDelete_Status(1);
		session1.save(lib);
		commitTransaction();
		destroysession();
	}

	// ================================Update Section==============================
	public void updateLibraryDetail(LibraryDetailEntity entity) {
		createSession();
		LibraryDetailEntity lib = session1.get(LibraryDetailEntity.class, entity.getLib_Id());
		lib.setLib_Name(entity.getLib_Name());
		lib.setLib_Code(entity.getLib_Code());
		lib.setLast_Modified_Date(entity.getLast_Modified_Date());
		session1.save(lib);
		commitTransaction();
		destroysession();
	}
	
	
	public void updateLibrarySettingStatus(int lib_Id, int value) {
		createSession();
		LibraryDetailEntity lib = session1.get(LibraryDetailEntity.class, lib_Id);
		lib.setSetting_Status(value);
		session1.save(lib);
		commitTransaction();
		destroysession();
	}

//==================================Display Section===============================	

	// Fetch Library Full Record
	@SuppressWarnings("deprecation")
	public List<LibraryDetailEntity> getLibraryFullDetails() {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryDetailEntity.class).add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibraryDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}
	


		// Fetch Library Full Record
		@SuppressWarnings("deprecation")
		public LibraryDetailEntity getLibraryFullDetailsById(int lib_Id) {

			createSession();
			Criteria criteria = session1.createCriteria(LibraryDetailEntity.class).add(Restrictions.eq("delete_Status", 0))
					.add(Restrictions.eq("lib_Id", lib_Id));

			@SuppressWarnings("unchecked")
			List<LibraryDetailEntity> list = criteria.list();
			LibraryDetailEntity entity = new LibraryDetailEntity();
			for(LibraryDetailEntity e: list) {
				entity = e;
			}
			destroysession();
			return entity;

		}

}
