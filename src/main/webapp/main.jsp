<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Check if the user is logged in
    String user = (String) session.getAttribute("user");
    if (user == null) {
        // Redirect to login page if session is not set
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>KHADRI RESTAURANT</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .frame {
            width: 70%;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            text-align: center;
            padding: 20px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            background-color: #f2f2f2;
            border-bottom: 1px solid #ddd;
        }
        .header h2 {
            margin: 0;
        }
        .header div {
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="frame">
        <div class="header">
            <h2>KHADRI RESTAURANT</h2>
            <div>User: <%= user %></div>
        </div>
        <table>
            <tr>
                <th>Tiffens</th>
                <th>Lunch</th>
                <th>Snacks</th>
                <th>Dinner</th>
            </tr>
            <tr>
                <td>
                    <ul>
                        <li><a href="Idly">Idly</a></li>
                        <li><a href="vada">vada</a></li>
                        <li><a href="Dosa">dosa</a></li>
                        <li><a href="pongal">pongal</a></li>
                    </ul>
                </td>
                <td>
                    <ul>
                        <li><a href="Meals">meals</a></li>
                        <li><a href="Fried Rice">Fried Rice</a></li>
                        <li><a href="Curd Rice">Curd Rice</a></li>
                    </ul>
                </td>
                <td>
                    <ul>
                        <li><a href="Tea">tea</a></li>
                        <li><a href="Biscuits">Biscuits</a></li>
                        <li><a href="Samosa">Samosa</a></li>
                    </ul>
                </td>
                <td>
                    <ul>
                        <li><a href="Chapati">Chapati</a></li>
                        <li><a href="Pulav">Pulav</a></li>
                        <li><a href="Paneer Curry">Paneer Curry</a></li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
