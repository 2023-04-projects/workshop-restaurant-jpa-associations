package com.khadri.jakarta.jpa;

import com.khadri.jakarta.jpa.entity.Salad;
import com.khadri.jakarta.jpa.entity.Snack;
import com.khadri.jakarta.jpa.entity.Tiffen;
import com.khadri.jakarta.jpa.entity.User;

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

	public void insertSnack(Snack snack) {
		entityManager.getTransaction().begin();
		entityManager.persist(snack);
		entityManager.getTransaction().commit();
	}

	public void insertTiffen(Tiffen tiffen) {
		entityManager.getTransaction().begin();
		entityManager.persist(tiffen);
		entityManager.getTransaction().commit();

	}

	public void insertSalad(Salad salad) {
		entityManager.getTransaction().begin();
		entityManager.persist(salad);
		entityManager.getTransaction().commit();

	}

}
