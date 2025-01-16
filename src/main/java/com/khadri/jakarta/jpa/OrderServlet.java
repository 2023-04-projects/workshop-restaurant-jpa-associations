package com.khadri.jakarta.jpa;

import java.io.IOException;

import com.khadri.jakarta.jpa.entity.Dinner;
import com.khadri.jakarta.jpa.entity.Snack;
import com.khadri.jakarta.jpa.entity.Tiffen;
import com.khadri.jakarta.jpa.entity.User;
import com.khadri.jakarta.jpa.form.CheckoutCartForm;
import com.khadri.jakarta.jpa.form.SnackForm;
import com.khadri.jakarta.jpa.form.TiffenForm;

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

		if (cart == null || (cart.getSnacks().isEmpty() && cart.getTiffen().isEmpty() && cart.getDinner().isEmpty())) {
			resp.getWriter().write("Your cart is empty!");
			return;
		}
		User user = new User();
		user.setPhoneNumber((Long.parseLong(cart.getUserNumber())));
		repository.insertUser(user);
		cart.getSnacks().stream().forEach(snackForm -> {
			Snack snack = new Snack();
			snack.setSnackName(snackForm.getSnackName());
			snack.setPrice(snackForm.getPrice());
			snack.setQuantity(snackForm.getQuantity());
			snack.setMenuName(snackForm.getMenuName());
			snack.setTotalPrice(snackForm.getTotalPrice());
			snack.setUser(user);
			user.getSnacks().add(snack);
			repository.insertSnack(snack);
		});
		cart.getTiffen().stream().forEach(tiffenForm -> {
			Tiffen tiffen = new Tiffen();
			tiffen.setTiffenName(tiffenForm.getTiffenName());
			tiffen.setPrice(tiffenForm.getPrice());
			tiffen.setQuantity(tiffenForm.getQuantity());
			tiffen.setMenuName(tiffenForm.getMenuName());
			tiffen.setTotalPrice(tiffenForm.getTotalPrice());
			tiffen.setUser(user);
			user.getTiffen().add(tiffen);
			repository.insertTiffen(tiffen);
		});
		cart.getDinner().stream().forEach(dinnerForm -> {
			Dinner dinner = new Dinner();
			dinner.setDinnerName(dinnerForm.getDinnerName());
			dinner.setPrice(dinnerForm.getPrice());
			dinner.setQuantity(dinnerForm.getQuantity());
			dinner.setMenuName(dinnerForm.getMenuName());
			dinner.setTotalPrice(dinnerForm.getTotalPrice());
			dinner.setUser(user);
			user.getDinner().add(dinner);
			repository.insertDinner(dinner);
		});
		

		cart.getSnacks().clear();
		cart.getTiffen().clear();
		cart.getDinner().clear();
		session.setAttribute("checkout", cart);
	}
}
