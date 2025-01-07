<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    <center>
        <h1>Login Customer</h1>
        <form action="loginCheck.jsp" method="post">
            <label for="username">Phone Number:</label>
            <input type="text" id="username" name="username" required>
            <br><br>
            <input type="submit" value="Login">
        </form>
    </center>
</body>
</html>
