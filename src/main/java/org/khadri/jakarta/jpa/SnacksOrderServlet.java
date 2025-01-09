package org.khadri.jakarta.jpa;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.khadri.jakarta.jpa.snacks.entity.Order;
import org.khadri.jakarta.jpa.snacks.entity.Snacks;
import org.khadri.jakarta.jpa.snacks.entity.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/placeOrder")
public class SnacksOrderServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private EntityManagerFactory entityManagerFactory;

	@Override
	public void init() throws ServletException {
		entityManagerFactory = Persistence.createEntityManagerFactory("PERSISTENCE_UNIT");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String snackName = req.getParameter("snackName");
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		double price = Double.parseDouble(req.getParameter("price"));

		double totalPrice = quantity * price;

		EntityManager entityManager = entityManagerFactory.createEntityManager();

		entityManager.getTransaction().begin();
		User user = new User();

		Snacks snacks = new Snacks();
		snacks.setName(snackName);
		snacks.setPrice(price);

		Order order = new Order();
		order.setSnackName(snackName);
		order.setQuantity(quantity);
		order.setTotalPrice(totalPrice);
		order.setUser(user);

		List<Snacks> snacksList = new ArrayList<>();
		snacksList.add(snacks);
		order.setSnacks(snacksList);

		List<Order> orderList = new ArrayList<>();
		orderList.add(order);
		user.setOrders(orderList);

		entityManager.persist(user);
		entityManager.persist(snacks);
		entityManager.persist(order);

		entityManager.getTransaction().commit();

		entityManager.close();

		resp.getWriter().write("Order placed successfully!");
	}
}
