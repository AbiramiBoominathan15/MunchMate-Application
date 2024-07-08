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
        .card {
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: 0.3s;
        }
        .card:hover {
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }
.card img {
    width: 82%;
    height: auto;
    text-align: center; 
    margin: 0 auto;
}
.card-body {
    padding: 10px;
    text-align: center;
}        .table {
            margin-bottom: 0; 
        }
                .nav {
            background-color: rgba(255, 255, 255, 0.8); 
            padding: 20px 100px;
            backdrop-filter: blur(10px);     
/*                    position: fixed;
 */            top: 0;
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
        
    </style>
</head>
<body>
<%-- <%int totalPrice=0; %>
 --%>    <div class="nav">
        <div class="logo">
            <img src="Picture/logomuchmate1.png" alt="Logo">
            <h1>Munch<b>Mate</b></h1>
        </div>
        <ul>
            <li><a class="home" href="index.jsp">Home</a></li>
<!--             <li><a class="" href="">User</a></li>
 -->            <li><a href="aboutPage.jsp">AboutUs</a></li>
            <li><a href="contactPage.jsp">Contact</a></li>
        </ul>
<!--         <a class="signin" href="/cartlist">View Cart</a>
 -->    </div>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Your Cart</h2>
        <div class="row">
            <% List<Cart> cartItems = (List<Cart>) request.getAttribute("cart");
            WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
            UserDAO userDAO = (UserDAO) context.getBean("userDAO");

            if (cartItems != null && !cartItems.isEmpty()) {
                for (Cart cartItem : cartItems) {
                    int foodId = cartItem.getFoodId();
                    Food food = (Food) userDAO.getBase64FoodImage(foodId);
            %>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><%= cartItem.getFoodName() %></h5>
                        <img class="card-img-top" src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" alt="<%= cartItem.getFoodName() %>">
                        <p class="card-text">Quantity: <%= cartItem.getQuantity() %></p>
<%--                                     <input type="number" value="<%=totalPrice+=cartItem.getTotalPrice() %>">
 --%>                        
                        <p class="card-text">Total Price: <%= cartItem.getTotalPrice() %></p>
                        
<%--                         <p class="card-text">Meal Time: <%= cartItem.getFoodSession() %></p>
 --%>
                    </div>
                </div>
                
            </div>
            <% 
                    }
                
                } else { %>
            <div class="col">
                <div class="card">
                    <div class="card-body text-center">
                        <p class="card-text">No items in the cart</p>
                    </div>
                </div>
                
            </div>
            <% }
            
/*             session.setAttribute("totalPrice", totalPrice);
 */            %>
        </div>
    </div>
</body>
</html>
  
