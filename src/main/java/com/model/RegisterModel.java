package com.model;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.entity.Register;

@Stateless
@TransactionManagement(value = TransactionManagementType.BEAN)
public class RegisterModel implements RegisterRemote{

	@Override
	public String register(Register e) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("register");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		em.persist(e);
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		
		
		
		return "You have been registered successfully";
		
	}

}
