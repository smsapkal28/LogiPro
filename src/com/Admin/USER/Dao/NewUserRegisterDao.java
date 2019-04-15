/**
 * 
 */
package com.Admin.USER.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.Admin.USER.Entity.NewUserRegisteEntity;
import com.config.HibernateUtil;
/**
 * @author USER 14
 *
 */
public class NewUserRegisterDao {

	static org.hibernate.Session session1;
	static Transaction transaction;

	// Session Creation
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
	
	// Insert User Record In database
			public void NewUserEntrydao(NewUserRegisteEntity userentity) {
				// TODO Auto-generated method stub
				createSession();
				session1.save(userentity);
				commitTransaction();
				destroysession();
			}

			public List<NewUserRegisteEntity> getUserlist() {
				// TODO Auto-generated method stub
				createSession();	
				@SuppressWarnings({ "unchecked" })
				Query<NewUserRegisteEntity> query = session1.createQuery("FROM com.Admin.USER.Entity.NewUserRegisteEntity", NewUserRegisteEntity.class);
				List<NewUserRegisteEntity> list = query.getResultList();
				destroysession();

				return list;
			}

			public List<NewUserRegisteEntity> getUserlistById(String user_Id) {
				
				// TODO Auto-generated method stub
				createSession();
				@SuppressWarnings({ "unchecked" })
				Query<NewUserRegisteEntity> query = session1.createQuery("FROM com.Admin.USER.Entity.NewUserRegisteEntity where id='"+user_Id+"'", NewUserRegisteEntity.class);
				List<NewUserRegisteEntity> list = query.getResultList();
				destroysession();

				return list;			}

			public String ModifyUserEntrydao(NewUserRegisteEntity userentity) {
				// TODO Auto-generated method stub
				try{
				java.util.Date lastmoddate= new java.util.Date();
				createSession();
				NewUserRegisteEntity userentity_mod=session1.get(com.Admin.USER.Entity.NewUserRegisteEntity.class, userentity.getId());
				userentity_mod.setId(userentity.getId());
				userentity_mod.setFirstname(userentity.getFirstname());
				userentity_mod.setLastname(userentity.getLastname());
				userentity_mod.setUsername(userentity.getUsername());
				userentity_mod.setPassword(userentity.getPassword());
				userentity_mod.setDob(userentity.getDob());
				userentity_mod.setMobile(userentity.getMobile());
				userentity_mod.setEmailid(userentity.getEmailid());
				userentity_mod.setLastmoddate(lastmoddate);
				userentity_mod.setLastmodby(userentity.getUsername());
				userentity_mod.setStatus(userentity.getStatus());
				userentity_mod.setLocation(userentity.getLocation());
				session1.save(userentity_mod);
				commitTransaction();
				destroysession();
				return "SUCCESS";
				}
				catch(Exception e)
				{
					return "FAIL";
				}
				
			}

			public String DeleteUserEntrydao(long l) {
				try{
				java.util.Date lastmoddate= new java.util.Date();
				createSession();
				Query q=session1.createQuery("delete from com.Admin.USER.Entity.NewUserRegisteEntity where id=:userId");  
		        q.setParameter("userId",l);  

		        q.executeUpdate(); 
				commitTransaction();
				destroysession();
				return "SUCCESS";
				}
				catch(Exception e)
				{
					e.printStackTrace();
					return "FAIL";
				}
				// TODO Auto-generated method stub
			}

			public List<NewUserRegisteEntity> CheckUserCredDao(String username, String password) {
				
				createSession();
				Query<NewUserRegisteEntity> query = session1.createQuery("FROM com.Admin.USER.Entity.NewUserRegisteEntity where username='"+username+"' and password='"+password+"'", NewUserRegisteEntity.class);
				List<NewUserRegisteEntity> list = query.getResultList();
				commitTransaction();
				destroysession();
				return list;
			}

			
}
