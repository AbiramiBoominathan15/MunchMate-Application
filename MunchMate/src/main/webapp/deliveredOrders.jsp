<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.chainsys.munchmate.model.Cart" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delivered Orders</title>
</head>
<body>
    <h2>Delivered Orders</h2>
    <table border="1">
        <tr>
            <th>User ID</th>
            <th>Hotel ID</th>
            <th>Food ID</th>
            <th>Food Name</th>
            <th>Quantity</th>
            <th>Total Price</th>
            <th>Mealtime</th>
            <th>Delivery Date</th>
            <th>Payment Status</th>
            <th>Delivery Status</th>
        </tr>
        </thead>
        <tbody>
            <% List<Cart> carts = (List<Cart>) request.getAttribute("deliveredOrders");
                for (Cart cartItem : carts) {
            %>
            <tr>
            <td><%=cartItem.getUserId() %></td>
            <td><%=cartItem.getHotelId() %></td>
            <td><%=cartItem.getFoodId()%></td>
            <td><%=cartItem.getFoodName() %></td>
            <td><%=cartItem.getQuantity() %></td>
            <td><%=cartItem.getTotalPrice() %></td>
            <td><%=cartItem.getFoodSession() %></td>
            <td><%=cartItem.currentdate %></td>
            <td><%=cartItem.getPaymentStatus() %></td>
            <td><%=cartItem.deliveryStatus %></td>
            
            <%} %>
            
          </tr>
    </table>
</body>
</html>
 --%>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.chainsys.munchmate.model.Cart" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivered Orders</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
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
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .status-delivered {
            color: #28a745;
        }
        .status-pending {
            color: #ffc107;
        }
        .status-cancelled {
            color: #dc3545;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delivered Orders</h2>
        <table>
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Hotel ID</th>
                    <th>Food ID</th>
                    <th>Food Name</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
            
            
                    <th>Mealtime</th>
                    <th>Delivery Date</th>
                    <th>Payment Status</th>
                    <th>Delivery Status</th>
                </tr>
            </thead>
            <tbody>
                <% List<Cart> carts = (List<Cart>) request.getAttribute("deliveredOrders");
                    for (Cart cartItem : carts) {
                %>
                <tr>
                    <td><%=cartItem.getUserId() %></td>
                    <td><%=cartItem.getHotelId() %></td>
                    <td><%=cartItem.getFoodId()%></td>
                    <td><%=cartItem.getFoodName() %></td>
                    <td><%=cartItem.getQuantity() %></td>
                    <td>$ <%=cartItem.getTotalPrice() %></td>
                    <td><%=cartItem.getFoodSession() %></td>
                    <td><%=cartItem.getCurrentdate() %></td>
                    <td><%=cartItem.getPaymentStatus() %></td>
                    <td class="<%= getStatusClass(cartItem.getDeliveryStatus()) %>"><%=cartItem.getDeliveryStatus() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>

<%! 
    public String getStatusClass(String deliveryStatus) {
        if ("Delivered".equalsIgnoreCase(deliveryStatus)) {
            return "status-delivered";
        } else if ("Pending".equalsIgnoreCase(deliveryStatus)) {
            return "status-pending";
        } else if ("Cancelled".equalsIgnoreCase(deliveryStatus)) {
            return "status-cancelled";
        } else {
            return "";
        }
    }
%>
 