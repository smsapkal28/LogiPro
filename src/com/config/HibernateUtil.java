package com.config;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static SessionFactory sessionFactory = buildSessionFactory();
	 
	   private static SessionFactory buildSessionFactory()
	   {
	      try
	      {
	         if (sessionFactory == null)
	         {
	            Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	            
	            sessionFactory = configuration.buildSessionFactory();
	        	 
	        	//sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	        	 
	        	 /*onfiguration configuration = new Configuration();
	             configuration.configure("hibernate.cfg.xml");
	             StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
	              sessionFactory = configuration.buildSessionFactory(ssrb.build());*/
	         }
	         return sessionFactory;
	      } catch (Throwable ex)
	      {
	         System.err.println("Initial SessionFactory creation failed." + ex);
	         throw new ExceptionInInitializerError(ex);
	      }
	   }
	 
	   public static SessionFactory getSessionFactory()
	   {
	      return sessionFactory;
	   }
	 
	   public static void shutdown()
	   {
	      getSessionFactory().close();
	   }
	}
	


