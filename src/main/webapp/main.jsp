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
%>

<!DOCTYPE html>
<html>
<head>
<title>KHADRI RESTAURANT</title>

<style>
table {
	width: 100%;
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
				<div class="header">

					<h2>KHADRI RESTAURANT</h2>
					<div class="user-info">
						User:
						<%=user%>
					
						<form action="logout.jsp" method="post">
							<button type="submit">Logout</button>
						</form>
					</div>
				</div>
				<div class="user-info">
					 <%=cart.getSnacks() %>
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
						<a href="Veg_salad" target="content-frame">Veg_salad</a> <a
							href="Fruits_salad" target="content-frame">Fruits_salad</a> <a
							href="Non_veg_salad" target="content-frame">non_veg_salad</a>
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
						<a href="snack.jsp?snackname=tea&snackprice=10" target="content-frame">Tea</a> <a
							href="snack.jsp?snackname=coffee&snackprice=15" target="content-frame">Coffee</a> <a
							href="snack.jsp?snackname=samosa&snackprice=20" target="content-frame">Samosa</a> <a
							href="snack.jsp?snackname=biscuit&snackprice=30" target="content-frame">Biscuits</a>
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


	<iframe name="content-frame" src="" id="content-frame"></iframe>

</body>
</html>