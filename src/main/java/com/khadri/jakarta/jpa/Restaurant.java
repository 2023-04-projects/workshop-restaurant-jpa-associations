package com.khadri.jakarta.jpa;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.khadri.jakarta.jpa.entity.Order;
import org.khadri.jakarta.jpa.entity.Salads;
import org.khadri.jakarta.jpa.entity.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Servlet")
public class Restaurant extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@PersistenceContext(unitName = "PERSISTENCE_UNIT")
	private EntityManagerFactory entityManagerFactory;

	/*
	 * @Override public void init() throws ServletException { entityManagerFactory =
	 * Persistence.createEntityManagerFactory("PERSISTENCE_UNIT"); }
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String saladName = request.getParameter("saladName");
		int qty = Integer.parseInt(request.getParameter("quantity"));
		double price = Double.parseDouble(request.getParameter("price"));
		double totalPrice = qty * price;
		
		try {
		    EntityManager entityManager = this.entityManagerFactory.createEntityManager();
		} catch (NullPointerException e) {
		    System.out.println("EntityManagerFactory is null: " + e.getMessage());
		}

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();

		User user = new User();

		Salads salad = new Salads();
		salad.setName(saladName);
		salad.setPrice(price);

		Order order = new Order();
		order.setName(saladName);
		order.setQuantity(qty);
		order.setTotalPrice(totalPrice);
		order.setUser(user);

		List<Salads> saladList = new ArrayList();
		saladList.add(salad);
		order.setSalad(saladList);

		List<Order> orderList = new ArrayList();
		orderList.add(order);
		user.setOrder(orderList);

		entityManager.persist(user);
		entityManager.persist(order);
		entityManager.persist(salad);
		entityManager.getTransaction().commit();

		entityManager.close();

		response.getWriter().write("Order Placed Successfully......!");

	}
}
