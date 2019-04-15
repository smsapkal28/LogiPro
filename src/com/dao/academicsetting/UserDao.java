package com.dao.academicsetting;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Transaction;
import com.config.HibernateUtil;
import com.entity.academicsetting.UserEntity;

@SuppressWarnings("deprecation")
public class UserDao {
	
	
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
		public void addUser(UserEntity role) {

			createSession();
			session1.save(role);
			commitTransaction();
			destroysession();
		}
		//Fetch Departement Type Full Record
		public  List<UserEntity> getUserFullRecord() {
			
			createSession();
			@SuppressWarnings({ "unchecked" })
			Query<UserEntity> query = session1.createQuery("FROM UserEntity");
			List<UserEntity> list = query.getResultList();
			destroysession();
			return list;
			
			
		}

}
