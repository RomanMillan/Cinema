package com.jacaranda.repository;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.jacaranda.model.Cine;
import com.jacaranda.util.BdUtil;

import jakarta.transaction.SystemException;



public class CineRepository {

	public static Cine annadirCine(Cine c) throws IllegalStateException, SystemException {
		Transaction transaction = null;
		Cine result = null;
		
		Session session = BdUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();
		
		try {
			session.save(c);			
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		}
		
		session.close();
		return result;
	}
	
	
	public static Cine deleteCine(Cine c) throws IllegalStateException, SystemException {
		Transaction transaction = null;
		Cine result = null;
		
		Session session = BdUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();
		
		try {
			session.delete(c);			
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		}
		
		session.close();
		return result;
	}
	
}
