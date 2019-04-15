package com.dao.academicsetting;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Transaction;
import com.config.HibernateUtil;
import com.entity.academicsetting.RoleEntity;

/**
 * @author Devil
 *
 */
@SuppressWarnings("deprecation")
public class RoleDao {

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

	// inserting academic year record
	public void addRole(RoleEntity role) {

		createSession();
		session1.save(role);
		commitTransaction();
		destroysession();
	}

	// Fetch Departement Type Full Record
	public List<RoleEntity> getRoleFullRecord() {

		createSession();
		@SuppressWarnings({ "unchecked" })
		Query<RoleEntity> query = session1.createQuery("FROM RoleEntity");
		List<RoleEntity> list = query.getResultList();
		destroysession();
		return list;

	}

	// Fetching Role Record Based On Id

	public  RoleEntity getRoleDetailsById(int role) {

		createSession();
		RoleEntity rm = new RoleEntity();
		rm = (RoleEntity) session1.get(RoleEntity.class, role);
		destroysession();
		return rm;

	}

}
