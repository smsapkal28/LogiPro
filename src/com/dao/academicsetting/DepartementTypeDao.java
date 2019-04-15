package com.dao.academicsetting;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Transaction;
import com.config.HibernateUtil;
import com.entity.academicsetting.DepartementTypeEntity;


@SuppressWarnings("deprecation")
public class DepartementTypeDao {

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
		public void addDepartementType(DepartementTypeEntity departementTypeEntity) {

			createSession();
			session1.save(departementTypeEntity);
			commitTransaction();
			destroysession();
		}
		//Fetch Departement Type Full Record
		public  List<DepartementTypeEntity> getDepartementTypeFullRecord() {
			
			createSession();
			@SuppressWarnings({ "unchecked" })
			Query<DepartementTypeEntity> query = session1.createQuery("FROM DepartementTypeEntity");
			List<DepartementTypeEntity> listay = query.getResultList();
			destroysession();
			return listay;
			
			
		}
		//fetching department type by ID
		public  DepartementTypeEntity getDepartmentDetailsById(int deptId) {
			
			
			createSession();
			DepartementTypeEntity dm = new DepartementTypeEntity();
			dm = (DepartementTypeEntity)session1.get(DepartementTypeEntity.class, deptId);
			destroysession();
			return dm;
			
		}
}
