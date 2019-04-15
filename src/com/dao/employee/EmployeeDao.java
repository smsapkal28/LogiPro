package com.dao.employee;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;
import com.entity.course.CourseCategoryEntity;
import com.entity.employee.EmployeeDetailsEntity;

public class EmployeeDao {

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
	public void addEmployee(EmployeeDetailsEntity emp) {
		System.out.println("inside emp dao");
		createSession();
		session1.save(emp.getEmpbdm());
		session1.save(emp.getEmpdm());
		session1.save(emp.getEmpjdm());
		session1.save(emp);
		commitTransaction();
		destroysession();
	}
	//Fetch AcademicYear Full Record
		@SuppressWarnings("deprecation")
		public  List<EmployeeDetailsEntity> getEmployeeEntityFullDetails() {
			
			createSession();
			Criteria criteria = session1.createCriteria(EmployeeDetailsEntity.class).add(Restrictions.eq("deleteStatus",0));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<EmployeeDetailsEntity> listCourseCategory = criteria.list();
			destroysession();
			return listCourseCategory;
			
			
		}
		
	
		@SuppressWarnings("deprecation")
		public  int getCourseCategoryActiveRowCounts() {
			
			createSession();
			Criteria criteria = session1.createCriteria(CourseCategoryEntity.class);
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<CourseCategoryEntity> listCourseCategory = criteria.list();
			int size = listCourseCategory.size();
			destroysession();
			return size;
			
			
		}

}
