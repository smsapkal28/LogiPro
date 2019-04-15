/**
 * 
 */
package com.dao.student;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;

import com.entity.student.StudentRegistrationEntity;


/**
 * @author Devil
 *
 */
public class StudentRegistrationDao {
	
	
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

	
	//inserting Student registration record
		public void addStudentRegDetails(StudentRegistrationEntity stud) {
			
			createSession();
			
			session1.save(stud);
			commitTransaction();
			destroysession();
		}
		

		public  void updateEnrolStatusBasedOnStudRegId(int id)
		{
			createSession();
			StudentRegistrationEntity studreg =  session1.get(StudentRegistrationEntity.class, id);
			
			studreg.setEnrollStatus(1);
			session1.save(studreg);
			commitTransaction();
			destroysession();
		}
		
		
		//Fetch Student Registration Full Record
			@SuppressWarnings("deprecation")
			public  List<StudentRegistrationEntity> getStudentRegistraionEntityFullDetails() {
				
				createSession();
				Criteria criteria = session1.createCriteria(StudentRegistrationEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("enrollStatus",0));
				
				@SuppressWarnings("unchecked")
				List<StudentRegistrationEntity> listStudentReg = criteria.list();
				destroysession();
				return listStudentReg;
				
				
			}
			
			@SuppressWarnings("deprecation")
			public  int getStudentRegRowCounts() {
				
				createSession();
				Criteria criteria = session1.createCriteria(StudentRegistrationEntity.class);
				//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
				@SuppressWarnings("unchecked")
				List<StudentRegistrationEntity> list = criteria.list();
				int size = list.size();
				destroysession();
				return size;
				
				
			}
			
			//Fetch Student Registration Full Record
			@SuppressWarnings("deprecation")
			public  StudentRegistrationEntity getStudentRegistraionEntityDetailsById(int id) {
				
				createSession();
				Criteria criteria = session1.createCriteria(StudentRegistrationEntity.class).add(Restrictions.eq("deleteStatus",0)).add(Restrictions.eq("studId",id));
				
				@SuppressWarnings("unchecked")
				List<StudentRegistrationEntity> listStudentReg = criteria.list();
				StudentRegistrationEntity stdEnty = null;
				for(StudentRegistrationEntity std: listStudentReg) {
					stdEnty = std;
				}
				destroysession();
				return stdEnty;
				
				
			}
			
			
			
}
