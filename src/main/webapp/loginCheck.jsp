<%@page import="com.khadri.jakarta.jpa.form.CheckoutCartForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String username = request.getParameter("username");

if (username != null && !username.isEmpty()) {
	
	CheckoutCartForm checkoutCart = new CheckoutCartForm();
	session.setAttribute("checkout", checkoutCart);
	session.setAttribute("user", username);

	response.sendRedirect("main.jsp");
} else {
	out.println("<script>alert('Invalid phone number! Please try again.');</script>");
	response.sendRedirect("login.jsp");
}
%>