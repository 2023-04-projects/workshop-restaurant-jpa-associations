<%@page import="com.khadri.jakarta.jpa.form.SnackForm"%>
<%@page import="com.khadri.jakarta.jpa.form.CheckoutCartForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
CheckoutCartForm cart = (CheckoutCartForm) session.getAttribute("checkout");
if (cart == null || cart.getSnacks().isEmpty()) {
    out.println("<h2>Your cart is empty!</h2>");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>View Cart</title>
    <style>
        body {
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            text-align: center;
            padding: 10px;
        }

        th {
            background-color: #bc8f8f;
        }

        td {
            background-color: #f4c2c2;
        }

        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th colspan="5" style="font-size: 1.5em;">Your Cart</th>
            </tr>
            <tr>
                <th>Menu Name</th>
                <th>Item Name</th>
                <th>Quantity</th>
                <th>Price (₹)</th>
                <th>Total Price</th>
            </tr>
        </thead>
        <tbody>
            <%
            double grandTotal = 0;
            for (SnackForm snack : cart.getSnacks()) {
                grandTotal += snack.getTotalPrice();
            %>
            <tr>
                <td><%=snack.getMenuName()%></td>
                <td><%=snack.getItemName()%></td>
                <td><%=snack.getQuantity()%></td>
                <td><%=snack.getPrice()%></td>
                <td><%=snack.getTotalPrice()%></td>
            </tr>
            <% } %>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="4">Grand Total</th>
                <th><%=grandTotal%></th>
            </tr>
            <tr>
                <td colspan="4"></td>
                <td>
                    <form action="placeOrder" method="post">
                        <button type="submit">Order</button>
                    </form>
                </td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
