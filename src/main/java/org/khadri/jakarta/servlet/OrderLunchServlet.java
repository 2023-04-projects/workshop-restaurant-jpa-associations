package org.khadri.jakarta.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.khadri.jakarta.jpa.Lunch;
import org.khadri.jakarta.jpa.Order;
import org.khadri.jakarta.jpa.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/OrderLunchServlet")
public class OrderLunchServlet extends HttpServlet {

		private static final long serialVersionUID = 1L;

	public class OrderServlet extends HttpServlet {

		private static final long serialVersionUID = 1L;
		private EntityManagerFactory entityManagerFactory;

		@Override
		public void init() throws ServletException {
			entityManagerFactory = Persistence.createEntityManagerFactory("PERSISTENCE_UNIT");
		}

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String iteamName = req.getParameter("iteamName");
			int quantity = Integer.parseInt(req.getParameter("quantity"));
			double price = Double.parseDouble(req.getParameter("price"));

			double totalPrice = quantity * price;

			EntityManager entityManager = entityManagerFactory.createEntityManager();

			entityManager.getTransaction().begin();
			User user = new User();

			Lunch lunch = new Lunch();
			lunch.setName(iteamName);
			lunch.setPrice(price);

			Order order = new Order();
			order.setIteamName(iteamName);
			order.setQuantity(quantity);
			order.setTotalPrice(totalPrice);
			order.setUser(user);

			List<Lunch> lunchList = new ArrayList<>();
			lunchList.add(lunch);
			order.setLunch(lunchList);

			List<Order> orderList = new ArrayList<>();
			orderList.add(order);
			user.setOrders(orderList);

			entityManager.persist(user);
			entityManager.persist(lunch);
			entityManager.persist(order);

			entityManager.getTransaction().commit();

			entityManager.close();

			resp.getWriter().write("Order placed successfully!");
		}
	}
}