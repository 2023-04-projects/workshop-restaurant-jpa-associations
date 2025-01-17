<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.khadri.jakarta.jpa.form.SnackForm"%>
<%@page import="com.khadri.jakarta.jpa.form.TiffenForm"%>
<%@page import="com.khadri.jakarta.jpa.form.DinnerForm"%>
<%@page import="com.khadri.jakarta.jpa.form.SaladForm"%>
<%@page import="com.khadri.jakarta.jpa.form.CheckoutCartForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");
if (cart == null) {
	cart = new CheckoutCartForm();
	System.out.println("Addcartpage " + (String) session.getAttribute("user"));
	session.setAttribute("checkout", cart);
}

String menuName = request.getParameter("menuname");

if (menuName != null) {
	if ("Snacks".equalsIgnoreCase(menuName)) {
		String snackName = request.getParameter("snackName");
		Integer qty = Integer.parseInt(request.getParameter("quantity"));
		Double price = Double.parseDouble(request.getParameter("price"));
		Double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));

		SnackForm snackForm = new SnackForm(snackName, qty, price, totalPrice, menuName);
		cart.getSnacks().add(snackForm);
	} else if ("Tiffen".equalsIgnoreCase(menuName)) {
		String tiffenName = request.getParameter("tiffenName");
		Integer qty = Integer.parseInt(request.getParameter("quantity"));
		Double price = Double.parseDouble(request.getParameter("price"));
		Double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));

		TiffenForm tiffenForm = new TiffenForm(tiffenName, qty, price, totalPrice, menuName);
		cart.getTiffen().add(tiffenForm);

	} else if ("Dinner".equalsIgnoreCase(menuName)) {
		String dinnerName = request.getParameter("dinnerName");
		Integer qty = Integer.parseInt(request.getParameter("quantity"));
		Double price = Double.parseDouble(request.getParameter("price"));
		Double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));

		DinnerForm dinnerForm = new DinnerForm(dinnerName, qty, price, totalPrice, menuName);
		cart.getDinner().add(dinnerForm);

	}

} else if ("Salads".equalsIgnoreCase(menuName)) {
	String saladName = request.getParameter("saladName");
	Integer qty = Integer.parseInt(request.getParameter("quantity"));
	Double price = Double.parseDouble(request.getParameter("price"));
	Double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));

	SaladForm saladForm = new SaladForm(saladName, qty, price, totalPrice, menuName);
	cart.getSalads().add(saladForm);
}
%>
