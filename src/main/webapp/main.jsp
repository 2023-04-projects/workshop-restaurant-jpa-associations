<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
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
    </style>
    <script>
        function navigateTo(selectedItem) {
            if (selectedItem !== "default") {
                window.location.href = selectedItem;
            }
        }
    </script>
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
                    <select onchange="navigateTo(this.value)">
                        <option value="default">Select Tiffen</option>
                        <option value="Idly">Idly</option>
                        <option value="vada">Vada</option>
                        <option value="Dosa">Dosa</option>
                        <option value="pongal">Pongal</option>
                    </select>
                </td>
                <td>
                    <select onchange="navigateTo(this.value)">
                        <option value="default">Select Lunch</option>
                        <option value="Meals">Meals</option>
                        <option value="Fried Rice">Fried Rice</option>
                        <option value="Curd Rice">Curd Rice</option>
                    </select>
                </td>
                <td>
                    <select onchange="navigateTo(this.value)">
                        <option value="default">Select Snack</option>
                        <option value="Tea">Tea</option>
                        <option value="Biscuits">Biscuits</option>
                        <option value="Samosa">Samosa</option>
                    </select>
                </td>
                <td>
                    <select onchange="navigateTo(this.value)">
                        <option value="default">Select Dinner</option>
                        <option value="Chapati">Chapati</option>
                        <option value="Pulav">Pulav</option>
                        <option value="Paneer Curry">Paneer Curry</option>
                    </select>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
