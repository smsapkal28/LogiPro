package com.dao.library;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.library.LibrarySettingEntity;

/**
 * @author Devil
 *
 */
public class LibrarySettingDao {

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

	// ============================Insert Section=========================
	// inserting academic year record
	public void addLibrarySettingDetail(LibrarySettingEntity entity) {
		System.out.println("inside add dao method");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addLibrarySettingDetail
	
	
	//=================Update Section==================
	public void updateLibrarySetting(LibrarySettingEntity entity) {
		createSession();
		LibrarySettingEntity lib = session1.get(LibrarySettingEntity.class, entity.getSetting_Id());
		lib.setLib_Id(entity.getLib_Id());
		lib.setIssue_Duration(entity.getIssue_Duration());
		lib.setDelay_Return_Time(entity.getDelay_Return_Time());
		lib.setDelay_Return_Fine(entity.getDelay_Return_Fine());
		lib.setLast_Modify_Date(new Date());
		session1.save(lib);
		commitTransaction();
		destroysession();
	}

//==========================Delete Section================

	public void deleteLibrarySettingByLibraryId(int lib_Id) {
		LibrarySettingEntity entity = new LibrarySettingEntity();
		entity = getLibrarySettingDetailByLibId(lib_Id);
		if (entity == null||entity.equals(null)) {
		}else {
			deleteLibrarySettingById(entity.getSetting_Id());
		}
	}

	public void deleteLibrarySettingById(int setting_Id) {
		createSession();
		LibrarySettingEntity lib = session1.get(LibrarySettingEntity.class, setting_Id);
		lib.setDeletion_Date(new Date());
		lib.setDelete_Status(1);
		session1.save(lib);
		commitTransaction();
		destroysession();
	}

//===========================Display Section===================	
	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public List<LibrarySettingEntity> getLibrarySettingFullDetails() {

		createSession();
		Criteria criteria = session1.createCriteria(LibrarySettingEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibrarySettingEntity> list = criteria.list();
		destroysession();
		return list;

	}// getLibrarySettingFullDetails

	// Fetch librarySetting by lib id
	@SuppressWarnings("deprecation")
	public LibrarySettingEntity getLibrarySettingDetailByLibId(int id) {

		createSession();
		Criteria criteria = session1.createCriteria(LibrarySettingEntity.class).add(Restrictions.eq("delete_Status", 0))
				.add(Restrictions.eq("lib_Id", id));

		@SuppressWarnings("unchecked")
		List<LibrarySettingEntity> list = criteria.list();
		LibrarySettingEntity entity = new LibrarySettingEntity();
		for (LibrarySettingEntity e : list) {
			entity = e;
		}
		destroysession();
		return entity;

	}// getLibrarySettingDetailByLibId
	
	
	// Fetch librarySetting by lib id
		@SuppressWarnings("deprecation")
		public LibrarySettingEntity getLibrarySettingDetailBySettingId(int id) {

			createSession();
			Criteria criteria = session1.createCriteria(LibrarySettingEntity.class).add(Restrictions.eq("delete_Status", 0))
					.add(Restrictions.eq("setting_Id", id));

			@SuppressWarnings("unchecked")
			List<LibrarySettingEntity> list = criteria.list();
			LibrarySettingEntity entity = new LibrarySettingEntity();
			for (LibrarySettingEntity e : list) {
				entity = e;
			}
			destroysession();
			return entity;

		}// getLibrarySettingDetailBySettingId


}
