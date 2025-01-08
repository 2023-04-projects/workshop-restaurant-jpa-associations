<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        table {
            width: 100%;
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
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #ffb6c1;
            min-width: 100px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0,2);
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
    </style>
</head>
<body>
<table>
<tr><th>
    <div>
        <h2>KHADRI RESTAURANT</h2>
        <div class="user-info">User: <%= user %></div>
    </div>
    </th>
    </tr>
</table>
    <table>
        <tr>
            <th>
                <div class="dropdown">
                    <button class="dropbtn">Tiffens</button>
                    <div class="dropdown-content">
                        <a href="Idly">Idly</a>
                        <a href="vada">Vada</a>
                        <a href="Dosa">Dosa</a>
                        <a href="pongal">Pongal</a>
                    </div>
                </div>
            </th>
            <th>
                <div class="dropdown">
                    <button class="dropbtn">Lunch</button>
                    <div class="dropdown-content">
                        <a href="Meals">Meals</a>
                        <a href="Fried_rice">Fried_rice</a>
                        <a href="Curd_rice">Curd_rice</a>
                        <a href="Biryani">Biryani</a>
                    </div>
                </div>
            </th>
            <th>
                <div class="dropdown">
                    <button class="dropbtn">Snacks</button>
                    <div class="dropdown-content">
                        <a href="Tea">Tea</a>
                        <a href="Coffee">Coffee</a>
                        <a href="Samosa">Samosa</a>
                        <a href="Biscuits">Biscuits</a>
                    </div>
                </div>
            </th>
            <th>
                <div class="dropdown">
                    <button class="dropbtn">Dinner</button>
                    <div class="dropdown-content">
                        <a href="Chapati">Chapati</a>
                        <a href="Butternaan">Butternaan</a>
                        <a href="Rice">Rice</a>
                    </div>
                </div>
            </th>
        </tr>
    </table>
</body>
</html>
