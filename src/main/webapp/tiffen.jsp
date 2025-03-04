<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Tiffen</title>
<style>
body {
	font-family: Arial, sans-serif;
	text-align: center;
	margin-top: 50px;
}

table {
	margin: 0 auto;
	border: 1px solid black;
	padding: 20px;
	background-color: #f4c2c2;
	width: 400px;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 5px;
	margin: 5px 0;
}

input[readonly] {
	background-color: #e6e6e6;
}

button {
	padding: 10px 20px;
	background-color: #bc8f8f;
	color: white;
	border: none;
	cursor: pointer;
}

button:hover {
	background-color: #a05252;
}
</style>
<script>
	function calculateTotalPrice() {
		var quantity = document.getElementById("quantity").value;
		var price = document.getElementById("price").value;

		if (quantity && !isNaN(quantity)) {
			var totalPrice = quantity * price;

			document.getElementById("totalPrice").value = totalPrice;
		} else {
			document.getElementById("totalPrice").value = "";
		}
	}
</script>
</head>
<body>
	<h1>Order Tiffen</h1>
	<form action="addcart.jsp" method="post">
		<table>
			<tr>
				<td>Tiffen Name:</td>
				<td><input type="text" name="tiffenName"
					value="<%=request.getParameter("tiffenname")%>" readonly></td>
			</tr>
			<tr>
				<td>Quantity:</td>
				<td><input type="number" id="quantity" name="quantity" required
					onchange="calculateTotalPrice()"></td>
			</tr>
			<tr>
				<td>Price (per one):</td>
				<td><input type="text" id="price" name="price" value="<%=request.getParameter("tiffenprice")%>"
					readonly></td>
			</tr>
			<tr>
				<td>Total Price:</td>
				<td><input type="text" id="totalPrice" name="totalPrice"
					readonly></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">Add to Cart</button></td>
			</tr>
			
		</table>
		
		<input type="hidden" name="menuname" value="Tiffen">
	</form>
</body>
</html>