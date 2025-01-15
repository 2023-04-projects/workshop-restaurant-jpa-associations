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
		String itemName = request.getParameter("itemName");
		Integer qty = Integer.parseInt(request.getParameter("quantity"));
		Double price = Double.parseDouble(request.getParameter("price"));
		Double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		SnackForm form = new SnackForm(itemName, qty, price, totalPrice, menuName);
		cart.getSnacks().add(form);
		break;

	default:
		break;
	}

}
%>