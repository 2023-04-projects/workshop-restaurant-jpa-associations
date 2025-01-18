<%@page import="com.khadri.jakarta.jpa.form.CheckoutCartForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
response.setHeader("Refresh", "50");
String user = (String) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("login.jsp");
}

CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");
int itemCountSnacks = (cart != null && cart.getSnacks() != null) ? cart.getSnacks().size() : 0;
int itemCountTiffens = (cart != null && cart.getTiffen() != null) ? cart.getTiffen().size() : 0;
int itemCountLunch = (cart != null && cart.getLunch()!= null) ? cart.getLunch().size() : 0;
int itemCountDinner = (cart != null && cart.getDinner() != null) ? cart.getDinner().size() : 0;
int itemCountSalads = (cart != null && cart.getSalads() != null) ? cart.getSalads().size() : 0;
int itemCount = itemCountSnacks + itemCountTiffens + itemCountLunch + itemCountSalads+itemCountDinner;
%>
<!DOCTYPE html>
<html>
<head>
<title>KHADRI RESTAURANT</title>

<style>
table {
	width: 150%;
	height: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	background-color: #bc8f8f;
	text-align: center;
	padding: 8px;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.user-info {
	text-align: right;
	margin-right: 10px;
	display: flex;
	flex-direction: column;
	align-items: flex-end;
}

.cart-container {
	margin-top: 10px;
	display: flex;
	align-items: center;
}

.cart-icon {
	font-size: 18px;
	margin-right: 5px;

	color: #e3ac14;
}

.cart-count {
	font-size: 16px;
	font-weight: bold;
	color: #333;
}

.logout-button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
}

.logout-form {
	display: inline;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #ffb6c1;
	min-width: 100px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0, 2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #bc8f8f;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #bc8f8f;
}

.dropbtn {
	width: 320px;
	height: 50px;
	background-color: #bc8f8f;
}

.footer-image {
	text-align: center;
	margin-top: 20px;
	width: 20px;
	height: 50px;
}

iframe {
	width: 100%;
	height: 500px;
	border: none;
}
</style>
</head>
<body>

	<table>
		<tr>
			<th>
				<div>
					<h1>KHADRI RESTAURANT</h1>
					<div class="user-info">
						User:
						<%=user%>

						<form action="logout.jsp" method="post">
							<button class="logout-button"
								onclick="window.location.href='logout.jsp'">Logout</button>

						</form>
						<div class="cart-container">
							<div class="cart-count"><%=itemCount%>
								items <a href="viewcart.jsp" target="content-frame">🛒</a>
							</div>
						</div>
					</div>
				</div>

			</th>
		</tr>
	</table>

	<table>
		<tr>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Salads</button>
					<div class="dropdown-content">
						<a href="salad.jsp?saladname=fruitsalad&saladprice=120"
							target="content-frame">Fruit Salad</a> <a
							href="salad.jsp?saladname=vegsalad&saladprice=100"
							target="content-frame">Veg Salad</a> <a
							href="salad.jsp?saladname=greeksalad&saladprice=150"
							target="content-frame">Greek Salad</a> <a
							href="salad.jsp?saladname=nonvegsalad&saladprice=190"
							target="content-frame">NonVeg Salad</a>
					</div>
				</div>
			</th>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Tiffen</button>
					<div class="dropdown-content">

						<a href="tiffen.jsp?tiffenname=idly&tiffenprice=10"
							target="content-frame">Idly</a> <a
							href="tiffen.jsp?tiffenname=voda&tiffenprice=15"
							target="content-frame">Voda</a> <a
							href="tiffen.jsp?tiffenname=puri&tiffenprice=20"
							target="content-frame">Puri</a> <a
							href="tiffen.jsp?tiffenname=pongal&tiffenprice=45"
							target="content-frame">Pongal</a>
					</div>
				</div>
			</th>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Lunch</button>
					<div class="dropdown-content">
					
						<a href="lunch.jsp?lunchname=meals&lunchprice=150" target="content-frame">Meals</a> <a
							href="lunch.jsp?lunchname=friedrice&lunchprice=70" target="content-frame">Fried_rice</a> <a
							href="lunch.jsp?lunchname=curdrice&lunchprice=100" target="content-frame">Curd_rice</a> <a
							href="lunch.jsp?lunchname=biryani&lunchprice=500" target="content-frame">Biryani</a>
					</div>
				</div>
			</th>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Snacks</button>
					<div class="dropdown-content">
						<a href="snack.jsp?snackname=tea&snackprice=10"
							target="content-frame">Tea</a> <a
							href="snack.jsp?snackname=coffee&snackprice=15"
							target="content-frame">Coffee</a> <a
							href="snack.jsp?snackname=samosa&snackprice=20"
							target="content-frame">Samosa</a> <a
							href="snack.jsp?snackname=biscuit&snackprice=5"
							target="content-frame">Biscuits</a>
					</div>
				</div>
			</th>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Dinner</button>
					<div class="dropdown-content">
						<a href="dinner.jsp?dinnerName=Chapati&price=30"
						 target="content-frame">Chapati</a> <a
							href="dinner.jsp?dinnerName=Butternaan&price=20"
							 target="content-frame">Butternaan</a> <a
							href="dinner.jsp?dinnerName=Rice&price=40" target="content-frame">Rice</a>
					</div>
				</div>
			</th>
		</tr>
	</table>
	<iframe name="content-frame" src="images/Restaurant.jpg"
		id="content-frame" width="100" height="5"></iframe>

</body>
</html>