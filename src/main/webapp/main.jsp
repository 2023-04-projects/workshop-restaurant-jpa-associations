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
int cartCount = (cart != null && cart.getSalads() != null) ? cart.getSalads().size() : 0;
%>

<!DOCTYPE html>
<html>
<head>

<title>KHADRI RESTAURANT</title>
<style>
table {
	width: 150%;
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
}

.logout-form {
	display: inline;
}

.logout-button {
	margin-left: 10px;
	padding: 5px 10px;
	background-color: #bc8f8f;
	color: white;
	border: none;
	cursor: pointer;
}

.logout-button:hover {
	background-color: #a56f6f;
}

.cart-info {
	display: inline-block;
	margin-left: 20px;
	cart-color: black;
}

.cart-info img {
	vertical-align: right;
	width: 20px;
	height: 20px;
	color: black;
}

.cart-icon {
	display: inline-block;
	width: 24px;
	height: 24px;
	background-color: black;
	
	mask:
		url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M7 18c-1.104.001-2-.896-2-2 0-1.104.896-2 2-2 1.104 0 2 .896 2 2-.001 1.104-.897 2-2 2zm0-3c-.553.001-1 .447-1 1 0 .553.447 1 1 1 .553 0 1-.447 1-1-.001-.553-.447-1-1-1zm9 3c-1.104.001-2-.896-2-2 0-1.104.896-2 2-2 1.104 0 2 .896 2 2-.001 1.104-.897 2-2 2zm0-3c-.553.001-1 .447-1 1 0 .553.447 1 1 1 .553 0 1-.447 1-1-.001-.553-.447-1-1-1zm2.896-4.447c-.2-.311-.49-.553-.82-.697-.33-.145-.696-.215-1.064-.215H7.988l-.295-1.47L5.528 4H2V3h3.522l2.022 6.958 1.146.354c.186-.283.474-.498.81-.606.334-.108.694-.136 1.046-.05.352.086.674.273.919.542.244.269.414.62.495.996.081.377.064.772-.048 1.14l-.7 2.487-.021.075c.075-.003.15-.005.225-.005h8.823l.93-4.65H7.934L7.45 8.58h9.357c.65 0 1.29.242 1.782.677.493.435.832 1.048.968 1.71l1.306 6.531h.007v.007c-.028.15-.12.289-.25.381-.131.092-.294.139-.458.128H7.573c-.012-.002-.024-.002-.036-.002-.056 0-.112.012-.166.035-.053.022-.101.055-.142.095-.042.041-.076.089-.097.142-.021.053-.033.109-.033.166s.012.112.033.166c.021.053.055.101.097.142.041.04.089.074.142.095.054.023.11.035.166.035.012 0 .024 0 .036-.002h13.004c.352 0 .678-.145.91-.402.231-.257.354-.598.354-.95v-.007h-.007l-1.307-6.53z"/></svg>');
	mask-size: contain;
	-webkit-mask:
		url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M7 18c-1.104.001-2-.896-2-2 0-1.104.896-2 2-2 1.104 0 2 .896 2 2-.001 1.104-.897 2-2 2zm0-3c-.553.001-1 .447-1 1 0 .553.447 1 1 1 .553 0 1-.447 1-1-.001-.553-.447-1-1-1zm9 3c-1.104.001-2-.896-2-2 0-1.104.896-2 2-2 1.104 0 2 .896 2 2-.001 1.104-.897 2-2 2zm0-3c-.553.001-1 .447-1 1 0 .553.447 1 1 1 .553 0 1-.447 1-1-.001-.553-.447-1-1-1zm2.896-4.447c-.2-.311-.49-.553-.82-.697-.33-.145-.696-.215-1.064-.215H7.988l-.295-1.47L5.528 4H2V3h3.522l2.022 6.958 1.146.354c.186-.283.474-.498.81-.606.334-.108.694-.136 1.046-.05.352.086.674.273.919.542.244.269.414.62.495.996.081.377.064.772-.048 1.14l-.7 2.487-.021.075c.075-.003.15-.005.225-.005h8.823l.93-4.65H7.934L7.45 8.58h9.357c.65 0 1.29.242 1.782.677.493.435.832 1.048.968 1.71l1.306 6.531h.007v.007c-.028.15-.12.289-.25.381-.131.092-.294.139-.458.128H7.573c-.012-.002-.024-.002-.036-.002-.056 0-.112.012-.166.035-.053.022-.101.055-.142.095-.042.041-.076.089-.097.142-.021.053-.033.109-.033.166s.012.112.033.166c.021.053.055.101.097.142.041.04.089.074.142.095.054.023.11.035.166.035.012 0 .024 0 .036-.002h13.004c.352 0 .678-.145.91-.402.231-.257.354-.598.354-.95v-.007h-.007l-1.307-6.53z"/></svg>');
	-webkit-mask-size: contain;
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
}

iframe {
	width: 100%;
	height: 320px;
	border: none;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>
				<div>
					<h2>KHADRI RESTAURANT</h2>
					<div class="user-info">
						User:
						<%=user%>
						<form action="logout.jsp" method="post">
							<button type="submit">Logout</button>
						</form>
						<div class="cart-info">
                             <span style="font-size: 20px;"> 
                             <a href="salad.jsp" target="content-frame">&#128722</a></span>
                              <span><%= cartCount %></span>
                              
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
						<a href="salad.jsp?saladname=fruitsalad&saladprice=120"	target="content-frame">Fruit Salad</a> 
						<a href="salad.jsp?saladname=vegsalad&saladprice=100" target="content-frame">Veg Salad</a> 
						<a href="salad.jsp?saladname=greeksalad&saladprice=150" target="content-frame">Greek Salad</a> 
						<a href="salad.jsp?saladname=nonvegsalad&saladprice=190" target="content-frame">NonVegSalad</a>
					</div>
				</div>
			</th>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Tiffens</button>
					<div class="dropdown-content">
						<a href="idly.jsp" target="content-frame">Idly</a> <a href="vada"
							target="content-frame">Vada</a> <a href="Dosa"
							target="content-frame">Dosa</a> <a href="pongal"
							target="content-frame">Pongal</a>
					</div>
				</div>
			</th>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Lunch</button>
					<div class="dropdown-content">
						<a href="Meals" target="content-frame">Meals</a> <a
							href="Fried_rice" target="content-frame">Fried_rice</a> <a
							href="Curd_rice" target="content-frame">Curd_rice</a> <a
							href="Biryani" target="content-frame">Biryani</a>
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
							href="snack.jsp?snackname=biscuit&snackprice=30"
							target="content-frame">Biscuits</a>
					</div>
				</div>
			</th>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Dinner</button>
					<div class="dropdown-content">
						<a href="Chapati" target="content-frame">Chapati</a> <a
							href="Butternaan" target="content-frame">Butternaan</a> <a
							href="Rice" target="content-frame">Rice</a>
					</div>
				</div>
			</th>
		</tr>
	</table>
	 <div class="footer-image">
	<iframe name="content-frame" src="images/Restaurant.jpg" id="content-frame"></iframe>
    </div>
</body>
</html>