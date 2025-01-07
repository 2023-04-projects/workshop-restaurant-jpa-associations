<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("user");

    if (user == null || user.isEmpty()) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<title>KHADRI RESTAURANT</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
	text-align: center;
	margin: 20px 0;
}

th, td {
	border: 1px solid black;
	padding: 10px;
}

th {
	background-color: #f2f2f2;
}

.header {
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<div class="header">
		<h2>KHADRI RESTAURANT</h2>
		<div>
			User:
			<%=request.getParameter("user") != null ? request.getParameter("user") : "Guest"%></div>
	</div>
	<table>
		<tr>
			<th>
				<div class="dropdown">
					<button class="dropbtn">Tiffens</button>
					<div class="dropdown-content"></div>
				</div>
			</th>
			<th><div class="dropdown">
					<button class="dropbtn">Lunch</button>
					<div class="dropdown-content"></div>
				</div></th>
			<th><div class="dropdown">
					<button class="dropbtn">Snacks</button>
					<div class="dropdown-content"></div>
				</div></th>
			<th><div class="dropdown">
					<button class="dropbtn">Dinner</button>
					<div class="dropdown-content"></div>
				</div></th>
		</tr>
		<tr>
			<td>
				<ul>
					<li><a href="Idly">Idly</a><br> </li>
					<li> <a href="Vada">Vada </a><br></li>
					<li><a href="Dosa">Dosa</a><br></li>
					<li><a href="Pongal">Pongal</a></li>
				</ul>
			</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>


</body>
</html>