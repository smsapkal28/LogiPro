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

import com.entity.library.LibraryBookIssuedDetailEntity;

/**
 * @author Devil
 *
 */
public class LibraryBookIssuedDetailDao {

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
	public void addLibraryBookIssuedDetail(LibraryBookIssuedDetailEntity entity) {
		System.out.println("inside add dao method");
		new LibraryBookDetailDao().updateBookIssuedByBookId(entity.getBook_Id());
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}// addLibraryStudentDetail

//======================Delete Section====================	

	// delete book issue detail by library Id
	public void deleteLibraryBookIssuedDetailByLibraryId(int lib_Id) {
		List<LibraryBookIssuedDetailEntity> list = getLibraryBookIssuedFullDetail();
		for (LibraryBookIssuedDetailEntity entity : list) {
			if (entity.getLib_Id() == lib_Id) {
				deleteLibraryBookIssuedDetailById(entity.getIssued_Id());
			}
		}
	}

	//delete book issue detail by Student Id
	
	public void deleteLibraryBookIssuedDetailByStudentId(int stud_Id) {
		List<LibraryBookIssuedDetailEntity> list = getLibraryBookIssuedFullDetail();
		for (LibraryBookIssuedDetailEntity entity : list) {
			if(entity.getStud_Id() == stud_Id) {
				deleteLibraryBookIssuedDetailById(entity.getIssued_Id());
			}
		
		}
		
	}
	
	// delete book issue record by id
	public void deleteLibraryBookIssuedDetailById(int issue_Id) {
		createSession();
		LibraryBookIssuedDetailEntity issue = session1.get(LibraryBookIssuedDetailEntity.class, issue_Id);
		issue.setDelete_Date(new Date());
		issue.setDelete_Status(1);
		session1.save(issue);
		commitTransaction();
		destroysession();
	}

	// ======================Update Section====================

	public void updateBookReturnStatusByIssueId(int id) {
		createSession();
		LibraryBookIssuedDetailEntity issue = session1.get(LibraryBookIssuedDetailEntity.class, id);
		issue.setActual_Return_Date(new Date());
		issue.setReturn_Status(1);
		session1.save(issue);
		commitTransaction();
		destroysession();
	}

//=======================Display Section=========================	

	// Fetch getLibraryStudent Full Record
	@SuppressWarnings("deprecation")
	public List<LibraryBookIssuedDetailEntity> getLibraryBookIssuedFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryBookIssuedDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("return_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibraryBookIssuedDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}// getLibraryStudentFullDetail

	// Fetch book issued detail based on student id
	@SuppressWarnings("deprecation")
	public List<LibraryBookIssuedDetailEntity> getLibraryBookIssuedDetailByStudId(int id) {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryBookIssuedDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("Stud_Id", id))
				.add(Restrictions.eq("return_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibraryBookIssuedDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}// getLibraryBookIssuedDetailByStudId

	@SuppressWarnings("deprecation")
	public int getNoOfBookIssuedCountByBookId(int id) {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryBookIssuedDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibraryBookIssuedDetailEntity> list = criteria.list();
		int size = list.size();
		destroysession();
		return size;

	}// getNoOfBookIssuedCountByBookId

}
