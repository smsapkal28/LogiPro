/**
 * 
 */
package com.dao.subject;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.subject.SubjectToBatchEntity;

/**
 * @author Devil
 *
 */
public class SubjectToBatchDao {

	
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
	public void addSubjectToBatch(SubjectToBatchEntity subjectToBatchEntity) {

		createSession();
		session1.save(subjectToBatchEntity);
		commitTransaction();
		destroysession();
	}// addSubjectMaster ends
	
	
	//Fetch getSubjectToBatchFullDetails Full Record
		@SuppressWarnings("deprecation")
		public  List<SubjectToBatchEntity> getSubjectToBatchFullDetails() {
			
			createSession();
			Criteria criteria = session1.createCriteria(SubjectToBatchEntity.class).add(Restrictions.eq("deleteStatus",0));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<SubjectToBatchEntity> subjectToBatch = criteria.list();
			destroysession();
			return subjectToBatch;
			
			
		}//getSubjectToBatchFullDetails ends
	
}
