package com.dao.course;


import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.course.CourseCategoryEntity;

@SuppressWarnings("deprecation")
public class CourseCategoryDao {

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
	public void addCourseCategory(CourseCategoryEntity courseCategoryEntity) {

		createSession();
		session1.save(courseCategoryEntity);
		commitTransaction();
		destroysession();
	}
	
	//Fetch AcademicYear Full Record
	public  List<CourseCategoryEntity> getCourseCategoryFullDetails() {
		
		createSession();
		Criteria criteria = session1.createCriteria(CourseCategoryEntity.class).add(Restrictions.eq("deleteStatus",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<CourseCategoryEntity> listCourseCategory = criteria.list();
		destroysession();
		return listCourseCategory;
		
		
	}
	
	//Fetch AcademicYear Full Record
		public CourseCategoryEntity getCourseCategoryFullDetailsById(int catId) {
			
			createSession();
			Criteria criteria = session1.createCriteria(CourseCategoryEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("id",catId));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<CourseCategoryEntity> listCourseCategory = criteria.list();
			CourseCategoryEntity courseCategory =null;
			for(CourseCategoryEntity courseCategory1:listCourseCategory) {
				courseCategory = courseCategory1;
			}
			destroysession();
			return courseCategory;
			
			
		}

}
