<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.Cart" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order View</title>
    <style>
        /* Add your custom styles here */
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e2e2e2;
        }
    </style>
</head>
<body>
    <h1>Order View for Hotel ID: ${hotelId}</h1>
    <table>
        <thead>
            <tr>
                <th>User ID</th>
                <th>Food ID</th>
                <th>Hotel ID</th>
                <th>Food Name</th>
                <th>Quantity</th>
                <th>Total Price</th>
                <th>Meal Time</th>
            </tr>
        </thead>
        <tbody>
		<%
			int hotelId = (int)	session.getAttribute("hotelId");
		List<Cart>carts=(List<Cart>) request.getAttribute("cartItems");
		for(Cart cartItem : carts)
		{	%> 
          
          
            <td><%= cartItem.getUserId() %></td>
            <td><%=cartItem.getHotelId() %></td>
                        <td><%=cartItem.getFoodId() %></td>
                                    <td><%=cartItem.getFoodName()%></td>
                                    <td><%=cartItem.getQuantity() %></td>
                                    <td><%=cartItem.getTotalPrice() %></td>
                        
            
<%} %>

	       
           <%--  <c:forEach items="${cartItems}" var="cartItem">
                <tr>
                    <td>${cartItem.userId}</td>
                    <td>${cartItem.foodId}</td>
                    <td>${cartItem.hotelId}</td>
                    <td>${cartItem.foodName}</td>
                    <td>${cartItem.quantity}</td>
                    <td>${cartItem.totalPrice}</td>
                    <td>${cartItem.foodSession}</td>
                </tr>
            </c:forEach> --%>
        </tbody>
    </table>
</body>
</html>
