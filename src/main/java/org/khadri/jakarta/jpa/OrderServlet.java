package org.khadri.jakarta.jpa;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import org.khadri.jakarta.jpa.snacks.entity.Order;
import org.khadri.jakarta.jpa.snacks.entity.Snack;
import org.khadri.jakarta.jpa.snacks.entity.User;
import com.khadri.jakarta.jpa.form.SnackForm;
import com.khadri.jakarta.jpa.form.CheckoutCartForm;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/placeOrder")
public class OrderServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private EntityManagerFactory entityManagerFactory;

	@Override
	public void init() throws ServletException {
		entityManagerFactory = Persistence.createEntityManagerFactory("PERSISTENCE_UNIT");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");

		if (cart == null || cart.getSnacks().isEmpty()) {
			resp.getWriter().write("Your cart is empty!");
			return;
		}

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();

		User user = new User();
		entityManager.persist(user);

		List<Snack> snackEntities = new ArrayList<>();
		double grandTotal = 0;
		StringBuilder snackNames = new StringBuilder();
		String menuName = "";

		for (SnackForm snackForm : cart.getSnacks()) {
			Snack snack = new Snack();
			snack.setName(snackForm.getName());
			snack.setPrice(snackForm.getPrice());
			snack.setUser(user);

			snackEntities.add(snack);
			entityManager.persist(snack);
			grandTotal += snackForm.getTotalPrice();
			snackNames.append(snackForm.getName()).append(", ");

			if (menuName.isEmpty()) {
				menuName = snackForm.getMenuName();
			}

		}

		if (snackNames.length() > 0) {
			snackNames.setLength(snackNames.length() - 2);
		}
		Order order = new Order();
		order.setMenuName(menuName);
		order.setSnackName(snackNames.toString());
		order.setPrice(grandTotal);
		order.setQuantity(cart.getSnacks().size());
		order.setTotalPrice(grandTotal);
		order.setUser(user);

		entityManager.persist(order);
		entityManager.getTransaction().commit();
		entityManager.close();

		cart.getSnacks().clear();
		session.setAttribute("checkout", cart);

		resp.getWriter().write("Order placed successfully!");
	}

}
