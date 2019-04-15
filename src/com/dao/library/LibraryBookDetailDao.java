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

import com.entity.library.LibraryBookDetailEntity;

/**
 * @author Devil
 *
 */
public class LibraryBookDetailDao {

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
	public void addLibraryBookDetail(LibraryBookDetailEntity entity) {
		System.out.println("inside add dao method");
		createSession();

		session1.save(entity);
		commitTransaction();
		destroysession();
	}

//======================Delete Section====================	
	//deleting book detail by library id
	public void deleteLibraryBookDetailByLibraryId(int lib_Id) {

		List<LibraryBookDetailEntity> list = getLibraryBookDetailBasedOnLibraryId(lib_Id);
		for (LibraryBookDetailEntity entity : list) {
			deleteLibraryBookDetailById(entity.getLib_Book_Id());
		}
	}
	
	//deleting book detail by id
	public void deleteLibraryBookDetailById(int book_Id) {

		
			createSession();
			LibraryBookDetailEntity book = session1.get(LibraryBookDetailEntity.class, book_Id);
			book.setDelete_Date(new Date());
			book.setDelete_Status(1);
			session1.save(book);
			commitTransaction();
			destroysession();
		
	}

//======================Update Section====================	
	
	public void updateBookDetail(LibraryBookDetailEntity entity) {
		createSession();
		LibraryBookDetailEntity book = session1.get(LibraryBookDetailEntity.class, entity.getLib_Book_Id());
		book.setLib_Id(entity.getLib_Id());
		book.setBook_Name(entity.getBook_Name());
		book.setBook_Edition(entity.getBook_Edition());
		book.setBook_Aurthor(entity.getBook_Aurthor());
		book.setBook_Publisher(entity.getBook_Publisher());
		book.setBook_Price(entity.getBook_Price());
		book.setBook_Quantity(entity.getBook_Quantity());
		book.setBook_Purchase_Date(entity.getBook_Purchase_Date());
		book.setLast_Change_Date(entity.getLast_Change_Date());
		session1.save(book);
		commitTransaction();
		destroysession();
	}

	public void updateBookIssuedByBookId(int id) {
		createSession();
		LibraryBookDetailEntity book = session1.get(LibraryBookDetailEntity.class, id);
		book.setBook_Issued(book.getBook_Issued() + 1);
		session1.save(book);
		commitTransaction();
		destroysession();
	}

	public void updateBookReturnByBookId(int id) {
		createSession();
		LibraryBookDetailEntity book = session1.get(LibraryBookDetailEntity.class, id);
		book.setBook_Issued(book.getBook_Issued() - 1);
		session1.save(book);
		commitTransaction();
		destroysession();
	}
	
	
	public void updateBookNotReturnByBookId(int id, int quantity) {
		createSession();
		LibraryBookDetailEntity book = session1.get(LibraryBookDetailEntity.class, id);
		book.setBook_Not_Returned(book.getBook_Not_Returned() + quantity);
		book.setBook_Issued(book.getBook_Issued()-quantity);
		session1.save(book);
		commitTransaction();
		destroysession();
	}

	public void updateBookDamagedByBookId(int id, int quantity) {
		createSession();
		LibraryBookDetailEntity book = session1.get(LibraryBookDetailEntity.class, id);
		book.setBook_Damaged(book.getBook_Damaged() + quantity);
		session1.save(book);
		commitTransaction();
		destroysession();
	}

	
	
//============================Display Section===============
	// Fetch AcademicYear Full Record
	@SuppressWarnings("deprecation")
	public List<LibraryBookDetailEntity> getLibraryBookFullDetail() {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryBookDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0));

		@SuppressWarnings("unchecked")
		List<LibraryBookDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}

	// Fetch Book Detail Based On Library
	@SuppressWarnings("deprecation")
	public List<LibraryBookDetailEntity> getLibraryBookDetailBasedOnLibraryId(int id) {

		createSession();
		Criteria criteria = session1.createCriteria(LibraryBookDetailEntity.class)
				.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("lib_Id", id));

		@SuppressWarnings("unchecked")
		List<LibraryBookDetailEntity> list = criteria.list();
		destroysession();
		return list;

	}
	
	// Fetch Book Detail Based On Library
		@SuppressWarnings("deprecation")
		public LibraryBookDetailEntity getLibraryBookDetailById(int id) {

			createSession();
			Criteria criteria = session1.createCriteria(LibraryBookDetailEntity.class)
					.add(Restrictions.eq("delete_Status", 0)).add(Restrictions.eq("lib_Book_Id", id));

			@SuppressWarnings("unchecked")
			List<LibraryBookDetailEntity> list = criteria.list();
			LibraryBookDetailEntity entity = new LibraryBookDetailEntity();
			for(LibraryBookDetailEntity e: list) {
				entity = e;
			}
			destroysession();
			return entity;

		}

	
	

}
