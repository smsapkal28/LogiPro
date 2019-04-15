package com.dao.student;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;
import com.entity.student.StudentEnrolPersonalDetailEntity;

public class StudentEnrolPersonalDetailDao {

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

	// inserting Student registration record
	public void addStudentEnrolDetails(StudentEnrolPersonalDetailEntity stud) {

		createSession();
		session1.save(stud.getStudentEnrolDocDetailEntity());
		session1.save(stud.getStudentEnrolParentDetailEntity());
		session1.save(stud);
		commitTransaction();
		destroysession();
	}

	@SuppressWarnings("deprecation")
	public int getStudentEnrolRowCounts() {

		createSession();
		Criteria criteria = session1.createCriteria(StudentEnrolPersonalDetailEntity.class);
		// Query<AcademicYearEntity> query = session1.createQuery("FROM
		// CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<StudentEnrolPersonalDetailEntity> list = criteria.list();
		int size = list.size();
		destroysession();
		return size;

	}

	@SuppressWarnings("deprecation")
	public List<StudentEnrolPersonalDetailEntity> getStudentEnrolledFullRecord() {

		createSession();
		Criteria criteria = session1.createCriteria(StudentEnrolPersonalDetailEntity.class).add(Restrictions.eq("deleteStatus",0));

		@SuppressWarnings("unchecked")
		List<StudentEnrolPersonalDetailEntity> list = criteria.list();

		destroysession();
		return list;

	}
	
	
	@SuppressWarnings("deprecation")
	public StudentEnrolPersonalDetailEntity getStudentEnrolledRecordById(int id) {

		createSession();
		Criteria criteria = session1.createCriteria(StudentEnrolPersonalDetailEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("studId",id));

		@SuppressWarnings("unchecked")
		List<StudentEnrolPersonalDetailEntity> list = criteria.list();
		StudentEnrolPersonalDetailEntity std=null;
		for(StudentEnrolPersonalDetailEntity s: list) {
			std=s;
		}
		destroysession();
		return std;

	}
	
}
