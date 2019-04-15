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

import com.entity.library.LibraryStudentRegistrationEntity;


/**
 * @author Devil
 *
 */
public class LibraryStudentRegistrationDao {

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
	public void addLibraryStudentDetail(LibraryStudentRegistrationEntity entity) {
		System.out.println("inside add dao method");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addLibraryStudentDetail
	
	
	//==================================Update Section====================	
		public void updateLibraryStudent(LibraryStudentRegistrationEntity entity) {
			createSession();
			LibraryStudentRegistrationEntity stud = session1.get(LibraryStudentRegistrationEntity.class, entity.getLib_Stud_Id());
			stud.setStud_Name(entity.getStud_Name());
			stud.setStud_Contact(entity.getStud_Email());
			stud.setStud_Email(entity.getStud_Email());
			stud.setLast_Modified_Date(entity.getLast_Modified_Date());
			session1.save(stud);
			commitTransaction();
			destroysession();
		}
			
		
	
	
	//==================================Delete Section====================	
	public void deleteLibraryStudentBy(int stud_Id) {
		createSession();
		LibraryStudentRegistrationEntity stud = session1.get(LibraryStudentRegistrationEntity.class, stud_Id);
		stud.setStud_Deletion_Date(new Date());
		stud.setDelete_Status(1);
		session1.save(stud);
		commitTransaction();
		destroysession();
	}
		
	

//=======================Display Section=========================	

	// Fetch getLibraryStudent Full Record
	@SuppressWarnings("deprecation")
	public List<LibraryStudentRegistrationEntity> getLibraryStudentFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryStudentRegistrationEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibraryStudentRegistrationEntity> list = criteria.list();
		destroysession();
		return list;

	}// getLibraryStudentFullDetail

	// Fetch getLibraryStudent By Id
	@SuppressWarnings("deprecation")
	public LibraryStudentRegistrationEntity getLibraryStudentDetailById(int id) {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryStudentRegistrationEntity.class)
				.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("lib_Stud_Id", id));

		@SuppressWarnings("unchecked")
		List<LibraryStudentRegistrationEntity> list = criteria.list();
		LibraryStudentRegistrationEntity entity = new LibraryStudentRegistrationEntity();
		for (LibraryStudentRegistrationEntity e : list) {
			entity = e;
		}
		destroysession();
		return entity;

	}// getLibraryStudentDetailById

	@SuppressWarnings("deprecation")
	public int getStudentRegRowCounts() {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryStudentRegistrationEntity.class);
		// Query<AcademicYearEntity> query = session1.createQuery("FROM
		// CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<LibraryStudentRegistrationEntity> list = criteria.list();
		int size = list.size();
		destroysession();
		return size;

	}// getStudentRegRowCounts
}
