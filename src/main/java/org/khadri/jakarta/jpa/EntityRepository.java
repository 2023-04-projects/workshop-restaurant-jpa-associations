package org.khadri.jakarta.jpa;

import org.khadri.jakarta.jpa.snacks.entity.Snack;
import org.khadri.jakarta.jpa.snacks.entity.User;
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

	public void close() {
		factory.close();
	}
}
