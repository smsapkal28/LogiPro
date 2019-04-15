package com.dao.universal;


import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.config.HibernateUtil;


import com.entity.universal.BankNameEntity;
import com.entity.universal.CityEntity;
import com.entity.universal.CountryEntity;
import com.entity.universal.StateEntity;



@SuppressWarnings("deprecation")
public class UniversalDao{

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

	
	//Fetch AcademicYear Full Record
	public  List<CountryEntity> getCountryEntityDetails() {
		
		createSession();
		Criteria criteria = session1.createCriteria(CountryEntity.class);
		//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
		@SuppressWarnings("unchecked")
		List<CountryEntity> countryEntity = criteria.list();
		destroysession();
		return countryEntity;
		
		
	}
	
	
	//Fetch AcademicYear Full Record
		public  List<StateEntity> getStateEntityDetails() {
			
			createSession();
			Criteria criteria = session1.createCriteria(StateEntity.class);
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<StateEntity> stateEntity = criteria.list();
			destroysession();
			return stateEntity;
			
			
		}
		
		public List<StateEntity> getStateEntityDetailsByCountryId(int countryId){
			createSession();
		
			Criteria criteria = session1.createCriteria(StateEntity.class).add(Restrictions.eq("country_id",countryId));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<StateEntity> listState = criteria.list();
			System.out.println(listState);
			destroysession();
			return listState;
			
		}
		
		//Fetch AcademicYear Full Record
		public  List<CityEntity> getCityEntityDetails() {
			
			createSession();
			Criteria criteria = session1.createCriteria(CityEntity.class);
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<CityEntity> cityEntity = criteria.list();
			destroysession();
			return cityEntity;
			
			
		}
		
		public List<CityEntity> getCityEntityDetailsByStateId(int stateId){
			createSession();
		
			Criteria criteria = session1.createCriteria(CityEntity.class).add(Restrictions.eq("state_id",stateId));
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<CityEntity> listState = criteria.list();
			System.out.println(listState);
			destroysession();
			return listState;
			
		}
	
		//Fetch AcademicYear Full Record
		public  List<BankNameEntity> getBankNameEntityDetails() {
			
			createSession();
			Criteria criteria = session1.createCriteria(BankNameEntity.class);
			//Query<AcademicYearEntity> query = session1.createQuery("FROM CourseCategoryEntity");
			@SuppressWarnings("unchecked")
			List<BankNameEntity> bankEntity = criteria.list();
			destroysession();
			return bankEntity;
			
			
		}
		
		
		
		
		
}
