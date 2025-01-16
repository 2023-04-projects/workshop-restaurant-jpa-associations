<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
/* Styling for the login button */
.login-button {
	background-color: #4CAF50; /* Green background */
	color: white; /* White text color */
	border: none; /* No border */
	padding: 10px 20px; /* Padding around the button */
	font-size: 16px; /* Font size */
	cursor: pointer; /* Pointer cursor on hover */
	border-radius: 5px; /* Rounded corners */
}

.login-button:hover {
	background-color: #45a049; /* Darker green when hovered */
}
</style>
</head>
<body>
	<center>
		<h1>Login Customer</h1>
		<form action="loginCheck.jsp" method="post">
			<label for="username">Phone Number:</label> <input type="text"
				id="username" name="username" required> <br>
			<br> <input type="submit" value="Login" class="login-button">
		</form>
	</center>
</body>
</html>
