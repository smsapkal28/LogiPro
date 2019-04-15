package com.dao.course;


import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;


import com.entity.course.CourseEntity;

@SuppressWarnings("deprecation")
public class CourseMasterDao {

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
	public void addCourseDetails(CourseEntity courseEntity) {

		createSession();
		session1.save(courseEntity);
		commitTransaction();
		destroysession();
	}
	
	//Fetch AcademicYear Full Record
	public  List<CourseEntity> getCourseFullDetails() {
		
		createSession();
		Criteria criteria = session1.createCriteria(CourseEntity.class).add(Restrictions.eq("deleteStatus",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<CourseEntity> listCourse = criteria.list();
		destroysession();
		return listCourse;
		
		
	}
	
	//Fetch AcademicYear Full Record
		public  CourseEntity getCourseFullDetailsById(int id) {
			
			createSession();
			System.out.print(id);
			Criteria criteria = session1.createCriteria(CourseEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("id",id));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<CourseEntity> listCourse = criteria.list();
			CourseEntity entity = null;
			for(CourseEntity e: listCourse) {
				entity=e;
			}
			destroysession();
			return entity;
			
			
		}
	

}
