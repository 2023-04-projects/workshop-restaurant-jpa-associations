package org.khadri.jakarta.jpa;

import org.khadri.jakarta.jpa.salads.entity.Salads;
import org.khadri.jakarta.jpa.salads.entity.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

public class EntityRepository {

	private EntityManagerFactory factory;
	private EntityManager entityManager;

	public EntityRepository(EntityManagerFactory factory) {
		this.entityManager = factory.createEntityManager();
	}

	public void insertUser(User user) {
		entityManager.getTransaction().begin();
		entityManager.persist(user);
		entityManager.getTransaction().commit();
	}

	public void insertSalads(Salads salad) {
		entityManager.getTransaction().begin();
		entityManager.persist(salad);
		entityManager.getTransaction().commit();

	}

}