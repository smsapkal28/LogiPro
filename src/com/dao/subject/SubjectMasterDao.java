package com.dao.subject;


import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;



import com.entity.subject.SubjectMasterEntity;

@SuppressWarnings("deprecation")
public class SubjectMasterDao {

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

	//inserting SubjectMaster record
	public void addSubjectMaster(SubjectMasterEntity subjectMasterEntity) {

		createSession();
		session1.save(subjectMasterEntity);
		commitTransaction();
		destroysession();
	}// addSubjectMaster ends
	
	//Fetch Subject Master Full Record
	public  List<SubjectMasterEntity> getSubjectMasterFullDetails() {
		
		createSession();
		Criteria criteria = session1.createCriteria(SubjectMasterEntity.class).add(Restrictions.eq("deleteStatus",0));
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<SubjectMasterEntity> listSubjectMaster = criteria.list();
		destroysession();
		return listSubjectMaster;
		
		
	}//getSubjectMasterFullDetails ends
	
	//Fetch Subject Master  Full Record Based on  Id
		public SubjectMasterEntity getCourseMasterFullDetailsById(int catId) {
			
			createSession();
			Criteria criteria = session1.createCriteria(SubjectMasterEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("id",catId));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<SubjectMasterEntity> listCourseMaster = criteria.list();
			SubjectMasterEntity courseMaster =null;
			for(SubjectMasterEntity courseMaster1:listCourseMaster) {
				courseMaster = courseMaster1;
			}
			destroysession();
			return courseMaster;
			
			
		}//getCourseMasterFullDetailsById ends
		
		//Fetch Subject Master  Full Record Based on Course Id
		public  List<SubjectMasterEntity> getSubjectMasterFullDetailsByCourseId(int courseId) {
			
			createSession();
			Criteria criteria = session1.createCriteria(SubjectMasterEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("subCourseCode",courseId));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<SubjectMasterEntity> listSubjectMaster = criteria.list();
			destroysession();
			return listSubjectMaster;
			
			
		}//getSubjectMasterFullDetailsByCourseId ends

}
