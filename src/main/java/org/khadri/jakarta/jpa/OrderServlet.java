package org.khadri.jakarta.jpa;

import java.io.IOException;

import org.khadri.jakarta.jpa.snacks.entity.Snack;
import org.khadri.jakarta.jpa.snacks.entity.User;

import com.khadri.jakarta.jpa.form.CheckoutCartForm;
import com.khadri.jakarta.jpa.form.SnackForm;

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
	private EntityRepository repository;
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("PERSISTENCE_UNIT");

	@Override
	public void init() throws ServletException {
		repository = new EntityRepository(factory);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");

		if (cart == null || cart.getSnacks().isEmpty()) {
			resp.getWriter().write("Your cart is empty!");
			return;
		}

		User user = new User();
		repository.insertUser(user);

		for (SnackForm snackForm : cart.getSnacks()) {
			Snack snack = new Snack();
			snack.setSnackName(snackForm.getSnackName());
			snack.setPrice(snackForm.getPrice());
			snack.setQuantity(snackForm.getQuantity());
			snack.setMenuName(snackForm.getMenuName());
			snack.setTotalPrice(snackForm.getTotalPrice());
			snack.setUser(user);

			repository.insertSnack(snack);
		}

		cart.getSnacks().clear();
		session.setAttribute("checkout", cart);

		resp.getWriter().write("Order placed successfully");
	}

}
