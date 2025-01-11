package com.khadri.jakarta.jpa.repository;

import org.khadri.jakarta.jpa.entity.Salads;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

public class SaladsRepository {

    private EntityManagerFactory entityManagerFactory;

    public SaladsRepository(EntityManagerFactory entityManagerFactory) {
        this.entityManagerFactory = entityManagerFactory;
    }

    public void save(Salads salad) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(salad);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public Salads findById(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Salads salad = entityManager.find(Salads.class, id);
        entityManager.close();
        return salad;
    }

    // Add other CRUD operations as needed
}
