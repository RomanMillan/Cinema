package com.jacaranda.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.SelectionQuery;

import com.jacaranda.model.Cine;
import com.jacaranda.util.BdUtil;

import jakarta.transaction.SystemException;



public class CineRepository {

//	añadir cine
	public static Cine annadirCine(Cine c) throws IllegalStateException, SystemException {
		Transaction transaction = null;
		Cine result = null;
		
		Session session = BdUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();
		
		try {
			session.merge(c);			
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		}
		
		session.close();
		return result;
	}
	
//	borrar cine
	public static Cine deleteCine(Cine c) throws IllegalStateException, SystemException {
		Transaction transaction = null;
		Cine result = null;
		
		Session session = BdUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();
		
		try {
			session.remove(c);			
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		}
		
		session.close();
		return result;
	}
	
//	obtener todos los cines
	public static List<Cine> getCine(){
		Session session = BdUtil.getSessionFactory().openSession();
//		IMPORTANTE: se hace la sentencia sql a la clase no a la base de datos
		List<Cine> c = (List<Cine>) session.createSelectionQuery("From Cine").getResultList();
		return c;
	}
	
//	obtener cine
	public static Cine getCine(String id) {
		Cine result = null;
		Session session = BdUtil.getSessionFactory().openSession();
		
		SelectionQuery<Cine> c = session.createSelectionQuery("From Cine where cine = :cine", Cine.class);
		c.setParameter("cine", id);
		List<Cine> cines = c.getResultList();
		if(cines.size() != 0) {					
			result = cines.get(0);
		}
		return result;
		
	}
	
	
}
