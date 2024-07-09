<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.chainsys.munchmate.model.Cart" %>
<%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="com.chainsys.munchmate.dao.UserDAO"%>
<%@ page import="com.chainsys.munchmate.model.Food"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <style>
        .nav {
            background-color:#AA336A; 
            padding: 20px 100px;
            backdrop-filter: blur(10px);     
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .nav .logo img {
            width: 60px;
            height: auto;
            margin-right: 10px;
        }
        .nav .logo h1 {
            font-weight: 600;
            font-size: 24px;
            margin: 0;
        }
        .nav ul {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .nav ul li {
            margin-right: 30px;
        }
        .nav ul li a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            font-size: 17px;
            transition: color 0.3s ease;
        }
        .nav ul li a:hover {
            color: #ff511c;
        }
        .signin {
            color: #ff511c;
            text-decoration: none;
            padding: 8px 16px;
            border: 2px solid #ff511c;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .signin:hover {
            background-color: #ff511c;
            color: white;
        }
        .table {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
        }
        .table th, .table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        .table th {
            background-color: #f2f2f2;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .delete-btn, .update-btn {
            padding: 6px 12px;
            background-color: #AA336A;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .delete-btn:hover, .update-btn:hover {
            background-color: #bd2130;
        }
        .quantity-input {
            width: 60px;
            text-align: center;
        }
                .centered {
            text-align: center;
            margin-top: 20px; 
        }
        
    </style>
</head>
<body>
    <div class="nav">
        <div class="logo">
            <img src="Picture/logomuchmate1.png" alt="Logo">
            <h1>Munch<b>Mate</b></h1>
        </div>
        <ul>
            <li><a class="home" href="index.jsp">Home</a></li>
            <li><a href="aboutPage.jsp">AboutUs</a></li>
            <li><a href="contactPage.jsp">Contact</a></li>
        </ul>
    </div>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Your Cart</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
               
                
                double price = 0;
                    List<Cart> cartItems = (List<Cart>) request.getAttribute("cart");
                    session.setAttribute("cartItems", cartItems);
                double overallTotalPrice = 0;
				double totalPrice = 0;
                    WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
                    UserDAO userDAO = (UserDAO) context.getBean("userDAO");
	
                    if (cartItems != null && !cartItems.isEmpty()) {
                        for (Cart cartItem : cartItems) {
                            overallTotalPrice += cartItem.getTotalPrice();

                            int foodId = cartItem.getFoodId();
                            Food food = (Food) userDAO.getBase64FoodImage(foodId);
                            System.err.println("---" + food.getFoodPrice());
                            %>
                <tr>
                    <td><%= cartItem.getFoodName() %></td>
                    <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" alt="<%= cartItem.getFoodName() %>" style="max-width: 100px;"></td>
                    <td>
                        <form action="/updateCartItemQuantity" method="post">
                            <input type="hidden" name="foodId" value="<%= cartItem.getFoodId() %>">
<input type="text" name="quantity" value="<%=  cartItem.getQuantity() %>" class="quantity-input" pattern="\d*" oninput="this.value = this.value.replace(/\D/g, '')">
                            <button type="submit" class="update-btn">Update</button>
                        </form>
                    </td>
                    <td><%=cartItem.getTotalPrice() %></td>
                    <td>
                        <form action="/removeCartItem" method="post" onsubmit="return confirm('Are you sure you want to delete this item?');">
                            <input type="hidden" name="foodId" value="<%= cartItem.getFoodId() %>">
                            <button type="submit" class="delete-btn">Remove</button>
                        </form>
                    </td>
                </tr>
                <% 
                        }
                    } else { %>
                <tr>
                    <td colspan="5" class="text-center">No items in the cart</td>
                </tr>
                <% }
                %>
            </tbody>
        </table>
    </div>
            <div class="card">
            <div class="card-header">
                Overall Total Price
            </div>
            <div class="card-body">
                <table>
                    <tr>
                        <th colspan="2">Overall Total Price:</th>
                        <td><%=overallTotalPrice + totalPrice%></td>
                    </tr>
                </table>
            </div>
        </div>
            <div class="centered">
        <a href="paymentPage.jsp?price=<%=overallTotalPrice%> " class="btn btn-primary btn-lg" style="background-color:#AA336A">Pay Now</a>
    </div>
        
    

</body>
</html>
 
 
 
<%--  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.chainsys.munchmate.model.Cart" %>
<%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="com.chainsys.munchmate.dao.UserDAO"%>
<%@ page import="com.chainsys.munchmate.model.Food"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <style>
        .nav {
            background-color: #AA336A; 
            padding: 20px 100px;
            backdrop-filter: blur(10px);     
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .nav .logo img {
            width: 60px;
            height: auto;
            margin-right: 10px;
        }
        .nav .logo h1 {
            font-weight: 600;
            font-size: 24px;
            margin: 0;
        }
        .nav ul {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .nav ul li {
            margin-right: 30px;
        }
        .nav ul li a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            font-size: 17px;
            transition: color 0.3s ease;
        }
        .nav ul li a:hover {
            color: #ff511c;
        }
        .signin {
            color: #ff511c;
            text-decoration: none;
            padding: 8px 16px;
            border: 2px solid #ff511c;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .signin:hover {
            background-color: #ff511c;
            color: white;
        }
        .table {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
        }
        .table th, .table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        .table th {
            background-color: #f2f2f2;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .delete-btn, .update-btn {
            padding: 6px 12px;
            background-color: #AA336A;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .delete-btn:hover, .update-btn:hover {
            background-color: #AA336A;
        }
        .quantity-input {
            width: 60px;
            text-align: center;
        }
        .centered {
            text-align: center;
            margin-top: 20px; 
        }
        
    </style>
</head>
<body>
    <div class="nav">
        <div class="logo">
            <img src="Picture/logomuchmate1.png" alt="Logo">
            <h1>Munch<b>Mate</b></h1>
        </div>
        <ul>
            <li><a class="home" href="index.jsp">Home</a></li>
            <li><a href="aboutPage.jsp">AboutUs</a></li>
            <li><a href="contactPage.jsp">Contact</a></li>
        </ul>
    </div>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Your Cart</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Cart> cartItems = (List<Cart>) request.getAttribute("cart");
                    double overallTotalPrice = 0;

                    WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
                    UserDAO userDAO = (UserDAO) context.getBean("userDAO");

                    if (cartItems != null && !cartItems.isEmpty()) {
                        for (Cart cartItem : cartItems) {
                            overallTotalPrice += cartItem.getTotalPrice();

                            int foodId = cartItem.getFoodId();
                            Food food = (Food) userDAO.getBase64FoodImage(foodId);
                %>
                <tr>
                    <td><%= cartItem.getFoodName() %></td>
                    <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" alt="<%= cartItem.getFoodName() %>" style="max-width: 100px;"></td>
                    <td>
                        <form action="/updateCartItemQuantity" method="post">
                            <input type="hidden" name="foodId" value="<%= cartItem.getFoodId() %>">
                            <input type="text" name="quantity" value="<%=  cartItem.getQuantity() %>" class="quantity-input" pattern="\d*" oninput="this.value = this.value.replace(/\D/g, '')">
                            <button type="submit" class="update-btn">Update</button>
                        </form>
                    </td>
                    <td><%=cartItem.getTotalPrice() %></td>
                    <td>
                        <form action="/removeCartItem" method="post" onsubmit="return confirm('Are you sure you want to delete this item?');">
                            <input type="hidden" name="foodId" value="<%= cartItem.getFoodId() %>">
                            <button type="submit" class="delete-btn">Remove</button>
                        </form>
                    </td>
                </tr>
                <% 
                        }
                    } else { %>
                <tr>
                    <td colspan="5" class="text-center">No items in the cart</td>
                </tr>
                <% }
                %>
            </tbody>
        </table>
    </div>
    <div class="card">
        <div class="card-header">
            Overall Total Price
        </div>
        <div class="card-body">
            <table>
                <tr>
                    <th colspan="2">Overall Total Price:</th>
                    <td id="overallTotalPrice"><%=overallTotalPrice%></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="centered">
    <a id="payNowButton" style="            background-color: #AA336A;
    " href="paymentPage.jsp?price=<%=overallTotalPrice%>" class="btn btn-primary btn-lg">Pay Now</a>
    </div>

    <script>
        document.getElementById('payNowButton').onclick = function() {
            var overallTotalPrice = document.getElementById('overallTotalPrice').textContent.trim();
            
/*             this.href = 'paymentPage.jsp?amount=' + overallTotalPrice;
 */      
 this.href='paymentPage.jsp?' price=<%=overallTotalPrice%>
 };
    </script>

</body>
</html>
  --%>