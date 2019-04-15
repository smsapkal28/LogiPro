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
import com.entity.library.LibraryBookNotReturnEntity;

/**
 * @author Devil
 *
 */
public class LibraryBookNotReturnDao {

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
//==============================Insert Section===================
	// inserting academic year record
	public void addLibraryBookNotreturnDetail(LibraryBookNotReturnEntity entity) {
		System.out.println("inside add dao method");
		createSession();
		
		session1.save(entity);
		commitTransaction();
		destroysession();
	}
	
//======================Delete Section====================	
	
	
	//delete book issue detail by Student Id
	
		public void deleteLibraryBookNotReturnDetailByStudentId(int stud_Id) {
			List<LibraryBookNotReturnEntity> list = getLibraryBookNotReturnDetail();
			for (LibraryBookNotReturnEntity entity : list) {
				if(entity.getStud_Id() == stud_Id) {
					deleteLibraryBookNotReturnDetailById(entity.getIssue_Id());
				}
			
			}
			
		}
		
		// delete book issue record by id
		public void deleteLibraryBookNotReturnDetailById(int issue_Id) {
			createSession();
			LibraryBookNotReturnEntity issue = session1.get(LibraryBookNotReturnEntity.class, issue_Id);
			issue.setDelete_Date(new Date());
			issue.setDelete_Status(1);
			session1.save(issue);
			commitTransaction();
			destroysession();
		}

	
//============================Display Section===============
	// Fetch LibraryBookNotReturnEntity Full Record
	@SuppressWarnings("deprecation")
	public List<LibraryBookNotReturnEntity> getLibraryBookNotReturnDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryBookNotReturnEntity.class)
				.add(Restrictions.eq("delete_Status", 0));
		
		@SuppressWarnings("unchecked")
		List<LibraryBookNotReturnEntity> list = criteria.list();
		destroysession();
		return list;

	}
	
	
	
}
