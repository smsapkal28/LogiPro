package com.dao.subject;


import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;


import com.entity.subject.SubjectCategoryEntity;

@SuppressWarnings("deprecation")
public class SubjectCategoryDao {

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
	public void addSubjectCategory(SubjectCategoryEntity subjectCategoryEntity) {

		createSession();
		session1.save(subjectCategoryEntity);
		commitTransaction();
		destroysession();
	}
	
	//Fetch AcademicYear Full Record
	public  List<SubjectCategoryEntity> getSubjectCategoryFullDetails() {
		
		createSession();
		Criteria criteria = session1.createCriteria(SubjectCategoryEntity.class).add(Restrictions.eq("deleteStatus",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<SubjectCategoryEntity> listSubjectCategory = criteria.list();
		destroysession();
		return listSubjectCategory;
		
		
	}
	
	//Fetch AcademicYear Full Record
		public SubjectCategoryEntity getSubjectCategoryFullDetailsById(int catId) {
			
			createSession();
			Criteria criteria = session1.createCriteria(SubjectCategoryEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("id",catId));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<SubjectCategoryEntity> listCourseCategory = criteria.list();
			SubjectCategoryEntity courseCategory =null;
			for(SubjectCategoryEntity courseCategory1:listCourseCategory) {
				courseCategory = courseCategory1;
			}
			destroysession();
			return courseCategory;
			
			
		}

}
