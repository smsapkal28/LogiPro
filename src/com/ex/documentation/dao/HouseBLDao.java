/**
 * 
 */
package com.ex.documentation.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.config.HibernateUtil;
import com.ex.documentation.entity.HouseBLContainerEntity;
import com.ex.documentation.entity.HouseBLEntity;

/**
 * @author USER 13
 *
 */
@SuppressWarnings("deprecation")
public class HouseBLDao {

	static org.hibernate.Session session1;
	static Transaction transaction;

	// Session Creation
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
	
	// Insert HBL Record In database
		public void HouseBlEntrydao(HouseBLEntity hblentity) {
			// TODO Auto-generated method stub
			createSession();
			session1.save(hblentity);
			commitTransaction();
			destroysession();
		}

		// Insert Mbl Record In database
		public void HouseBlContEntrydao(HouseBLContainerEntity hblcontentity) {
			// TODO Auto-generated method stub
			createSession();
			session1.save(hblcontentity);
			commitTransaction();
			destroysession();
		}

		// Fetch Mbl Record From Database
		public List<HouseBLEntity> getHouseBllist() {
			createSession();
			@SuppressWarnings({ "unchecked" })
			Query<HouseBLEntity> query = session1.createQuery("FROM HouseBLEntity");
			List<HouseBLEntity> list = query.getResultList();
			destroysession();
			System.out.println(list);
			return list;

		}
}
