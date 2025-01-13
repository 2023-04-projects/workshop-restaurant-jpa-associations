<%@page import="com.khadri.jakarta.jpa.form.SaladForm"%>
<%@page import="com.khadri.jakarta.jpa.form.CheckoutCartForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");
if (cart == null || cart.getSnacks().isEmpty()) {
    out.println("<h2>Your cart is empty!</h2>");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>View Cart</title>
<style>
table {
	width: 80%;
	margin: 8px; auto;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	background-color: #bc8f8f;
	text-align: center;
	padding: 8px;
}

th {
background-color: #bc8f8f;
}

 td {
background-color: #bc8f8f;
 }
</style>

</head>
<body>
	<h1>Cart</h1>
	<table>
		<thead>
			<tr>
				<th>Menu</th>
				<th>Salad Name</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Total Price</th>
			</tr>
		</thead>
		<tbody>
			<%
			double grandTotal = 0;
			for (SaladForm salad : cart.getSalads()) {
				grandTotal += salad.getTotalPrice();
			%>
			<tr>
				<td><%=salad.getMenuName()%></td>
				<td><%=salad.getSaladName()%></td>
				<td><%=salad.getQuantity()%></td>
				<td><%=salad.getPrice()%></td>
				<td><%=salad.getTotalPrice()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
		<tfoot>
			<tr>
				<th colspan="4">Grand Total</th>
				<th><%=grandTotal%></th>
			</tr>
		</tfoot>
	</table>

	<form action="placeOrder" method="post">
		<button type="submit">Order Placed</button>
	</form>
</body>
</html>