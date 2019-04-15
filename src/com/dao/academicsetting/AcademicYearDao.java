package com.dao.academicsetting;

import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;
import com.entity.academicsetting.AcademicYearEntity;

/**
 * @author Devil
 *
 */
@SuppressWarnings("deprecation")
public class AcademicYearDao {

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

	// inserting academic year record
	public void addAcademicYear(AcademicYearEntity academicYearEntity) {

		createSession();
		session1.save(academicYearEntity);
		commitTransaction();
		destroysession();
	}

	// Fetch AcademicYear Full Record
	@SuppressWarnings("unchecked")
	public List<AcademicYearEntity> getAcademicYearFullDetails() {

		createSession();
		// Query<AcademicYearEntity> query = session1.createQuery("FROM
		// AcademicYearEntity");
		Criteria criteria = session1.createCriteria(AcademicYearEntity.class).add(Restrictions.eq("deleteStatus", 0));
		List<AcademicYearEntity> listay = criteria.list();
		destroysession();
		return listay;

	}

	// Fetch AcademicYear Full Record
	@SuppressWarnings("unchecked")
	public AcademicYearEntity getAcademicYearFullDetailsById(int id) {

		createSession();

		// Query<AcademicYearEntity> query = session1.createQuery("FROM
		// AcademicYearEntity");
		Criteria criteria = session1.createCriteria(AcademicYearEntity.class).add(Restrictions.eq("deleteStatus", 0))
				.add(Restrictions.eq("id", id));
		List<AcademicYearEntity> listay = criteria.list();
		AcademicYearEntity aye = null;
		for (AcademicYearEntity ay : listay) {
			aye = ay;
		}
		destroysession();
		return aye;

	}

}
