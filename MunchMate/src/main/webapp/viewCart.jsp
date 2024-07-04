 --%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.Cart" %>
<%@ page import="com.chainsys.munchmate.model.Food" %>
<%@ page
	import="java.sql.*, java.io.*, java.util.Base64, com.chainsys.munchmate.dao.UserImpl
,  com.chainsys.munchmate.model.Food"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Your Cart</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Food Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                    <th>Meal Time</th>
                </tr>
            </thead>
            <tbody>
                <% List<Cart> cartItems = (List<Cart>) request.getAttribute("cart");
                   if (cartItems != null && !cartItems.isEmpty()) {
                       for (Cart cartItem : cartItems) {
                %>
                <tr>
                    <td><%= cartItem.getFoodName() %></td>
                    <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(cartItem.getFoodImage())) %>" width="100px" /></td>
                    
                    <td><%= cartItem.getQuantity() %></td>
                    
                    <td><%= cartItem.getTotalPrice() %></td>
                    <td><%= cartItem.getFoodSession() %></td>
                </tr>
                <% 
                       }
                   } else { %>
                <tr>
                    <td colspan="4" class="text-center">No items in the cart</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
 