package com.dao.batch;


import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.batch.BatchEntity;



@SuppressWarnings("deprecation")
public class BatchDao {

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
	public void addBatchDetails(BatchEntity batchEntity) {

		createSession();
		session1.save(batchEntity);
		commitTransaction();
		destroysession();
	}
	
	//Fetch AcademicYear Full Record
	public  List<BatchEntity> getBatchFullDetails() {
		
		createSession();
		Criteria criteria = session1.createCriteria(BatchEntity.class).add(Restrictions.eq("deleteStatus",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<BatchEntity> listBatch = criteria.list();
		destroysession();
		return listBatch;
		
		
	}
	
	//Fetch AcademicYear Full Record
			public  BatchEntity getBatchFullDetailsById(int id) {
				
				createSession();
				System.out.print(id);
				Criteria criteria = session1.createCriteria(BatchEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("id",id));
				//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
				@SuppressWarnings("unchecked")
				List<BatchEntity> listCourse = criteria.list();
				BatchEntity entity = null;
				for(BatchEntity e: listCourse) {
					entity=e;
				}
				destroysession();
				return entity;
				
				
			}
	
}
