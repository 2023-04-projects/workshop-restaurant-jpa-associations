<%@page import="com.khadri.jakarta.jpa.form.LunchForm"%>
<%@page import="com.khadri.jakarta.jpa.form.TiffenForm"%>
<%@page import="com.khadri.jakarta.jpa.form.SnackForm"%>
<%@page import="com.khadri.jakarta.jpa.form.DinnerForm"%>
<%@page import="com.khadri.jakarta.jpa.form.SaladForm"%>
<%@page import="com.khadri.jakarta.jpa.form.CheckoutCartForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");
System.out.println("viewcartpage " + (String) session.getAttribute("user"));
cart.setUserNumber((String) session.getAttribute("user"));
%>
<!DOCTYPE html>
<html>
<head>
<title>View Cart</title>
<style>
body {
	text-align: center;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	text-align: center;
	padding: 10px;
}

th {
	background-color: #bc8f8f;
}

td {
	background-color: #bc8f8f;
}

h1 {
	text-align: center;
}

tfoot th {
	text-align: right;
	padding-right: 10px;
}

tfoot td {
	text-align: center;
}

form {
	text-align: right;
	margin-top: 20px;
}
</style>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th colspan="5">
					<h1>Your Cart</h1>
				</th>
			</tr>
			<tr>
				<th>MenuName</th>
				<th>Item Name</th>
				<th>Quantity</th>
				<th>Price (₹)</th>
				<th>Total Price</th>
			</tr>
		</thead>
		<tbody>
			<%
			double grandTotal = 0;
			for (SnackForm snack : cart.getSnacks()) {
				grandTotal += snack.getTotalPrice();
			%>
			<tr>
				<td>Snack</td>
				<td><%=snack.getSnackName()%></td>
				<td><%=snack.getQuantity()%></td>
				<td><%=snack.getPrice()%></td>
				<td><%=snack.getTotalPrice()%></td>
			</tr>
			<%
			}
			for (TiffenForm tiffen : cart.getTiffen()) {
			grandTotal += tiffen.getTotalPrice();
			%>
			<tr>
				<td>Tiffen</td>
				<td><%=tiffen.getTiffenName()%></td>
				<td><%=tiffen.getQuantity()%></td>
				<td><%=tiffen.getPrice()%></td>
				<td><%=tiffen.getTotalPrice()%></td>
			</tr>
			<%
			}
			for (LunchForm lunch : cart.getLunch()) {
			grandTotal += lunch.getTotalPrice();
			%>
			<tr>
				<td>Lunch</td>
				<td><%=lunch.getLunchName()%></td>
				<td><%=lunch.getQuantity()%></td>
				<td><%=lunch.getPrice()%></td>
				<td><%=lunch.getTotalPrice()%></td>
			</tr>
			<%
			}
			for (DinnerForm dinner : cart.getDinner()) {
			grandTotal += dinner.getTotalPrice();
			%>
			<tr>
				<td>Dinner</td>
				<td><%=dinner.getDinnerName()%></td>
				<td><%=dinner.getQuantity()%></td>
				<td><%=dinner.getPrice()%></td>
				<td><%=dinner.getTotalPrice()%></td>
			</tr>
			<%
			}
			for (SaladForm salad : cart.getSalads()) {
				grandTotal += salad.getTotalPrice();
			%>
			<tr>
			<td>Salad</td>
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
				<td><%=grandTotal%></td>
			</tr>
			<tr>
				<td colspan="5">
					<form action="placeOrder" method="post">
						<button type="submit">Order</button>
					</form>
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>