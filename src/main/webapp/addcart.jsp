<%@page import="com.khadri.jakarta.jpa.form.SaladForm"%>
<%@page import="com.khadri.jakarta.jpa.form.SnackForm"%>
<%@page import="com.khadri.jakarta.jpa.form.CheckoutCartForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");
String menuName = (String) request.getParameter("menuname");
if (menuName != null) {
	switch (menuName) {

	case "Snacks":
		String snackName = request.getParameter("snackName");
		Integer qty = Integer.parseInt(request.getParameter("quantity"));
		Double price = Double.parseDouble(request.getParameter("price"));
		Double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		SnackForm form = new SnackForm(snackName, qty, price, totalPrice, menuName);
		cart.getSnacks().add(form);
		break;

		
	case "Salads":
		String saladName = request.getParameter("saladName");
		Integer qty1 = Integer.parseInt(request.getParameter("quantity"));
		Double price1 = Double.parseDouble(request.getParameter("price"));
		Double totalPrice1 = Double.parseDouble(request.getParameter("totalPrice"));
		SaladForm salad = new SaladForm(saladName, qty1, price1, totalPrice1, menuName);
		cart.getSalads().add(salad);
		break;
		
	default:
		break;
	}

}
%>