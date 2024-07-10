<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.Food" %>
<%@ page
    import="java.sql.*, java.io.*, java.util.Base64, com.chainsys.munchmate.dao.UserImpl, com.chainsys.munchmate.model.Food"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff; 
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2; 
        }
        img {
            max-width: 100px;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        tbody td {
            vertical-align: middle;
        }
        .no-items {
            text-align: center;
            font-style: italic;
        }
    </style>
</head>
<body>
    <h2>Food List</h2>
    <table>
        <thead>
            <tr>
<!--                 <th>Hotel Id</th>
 -->                <th>Hotel Name</th>
                <th>Food Name</th>
                <th>Food Image</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Meal Time</th>
            </tr>
        </thead>
        <tbody>
            <% List<Food> foodList = (List<Food>) request.getAttribute("foodList");
               if (foodList != null && !foodList.isEmpty()) {
                   for (Food food : foodList) { %>
            <tr>
                <td><%= food.getHotelId() %></td>
                <td><%= food.getHotelName() %></td>
                <td><%= food.getFoodName() %></td>
                <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" alt="Food Image" /></td>
                <td><%= food.getFoodPrice() %></td>
                <td><%= food.getFoodQuantity() %></td>
                <td><%= food.getFoodCategories() %></td>
                <td><%= food.getFoodSession() %></td>
            </tr>
            <% }
               } else { %>
            <tr>
                <td colspan="8" class="no-items">No food items found</td>
            </tr>
            <% }  %>
        </tbody>
    </table>
</body>
</html>
  --%>
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.Food" %>
<%@ page
    import="java.sql.*, java.io.*, java.util.Base64, com.chainsys.munchmate.dao.UserImpl, com.chainsys.munchmate.model.Food"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff; 
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2; 
        }
        img {
            max-width: 100px;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        tbody td {
            vertical-align: middle;
        }
        .no-items {
            text-align: center;
            font-style: italic;
        }
                .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 100px;
            background-color: #9fd3c7;
            backdrop-filter: blur(10px);
        }

        .nav .logo {
            display: flex;
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
            color: #333;
        }

        .nav ul {
            display: flex;
            list-style: none;
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
        .footer {
        background-color: #9fd3c7;
        padding: 20px;
        text-align: center;
        color: #333; 
    }

        
    </style>
</head>
<body>
    <section class="menu">
        <div class="nav">
            <div class="logo">
                <img src="Picture/logomuchmate1.png" alt="Logo">
                <h1>Munch<b style="color:#ff511c">Mate</b></h1>
            </div>
            <ul>
               <li><a class="home" href="hotelAdminDashboard.jsp">Home</a></li> 
               <li>
<form action="hotelmenu.jsp" method="post">
					<button type="submit">Orders</button>
					</a><br>
					<br>
				</form>
				</li>
			
			
						<li><a href="/foodList">Menu</a></li>
               
                <li><a href="aboutPage.jsp">AboutUs</a></li>
                
                <li><a href="contactPage.jsp">Contact</a></li>
            </ul>
            <a class="signin" href="loginPage.jsp">Sign In</a>
        </div>
    </section>

    <h2>Food List</h2>
    <table>
        <thead>
            <tr>
                <th>Hotel Name</th>
                <th>Food Name</th>
                <th>Food Image</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Meal Time</th>
                <th>Update Price</th>
                <th>Update Quantity</th>
            </tr>
    
    
        </thead>
        <tbody>
            <% List<Food> foodList = (List<Food>) request.getAttribute("foodList");
               if (foodList != null && !foodList.isEmpty()) {
                   for (Food food : foodList) { %>
            <tr>
                <td><%= food.getHotelName() %></td>
                <td><%= food.getFoodName() %></td>
                <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" alt="Food Image" /></td>
                <td><%= food.getFoodPrice() %></td>
                <td><%= food.getFoodQuantity() %></td>
                <td><%= food.getFoodCategories() %></td>
                <td><%= food.getFoodSession() %></td>
                <td>
                    <form action="/updateFoodPrice" method="post">
                        <input type="hidden" name="foodId" value="<%= food.getFoodId() %>">
                        New Price: <input type="text" name="newPrice" required>
                        <button type="submit">Update Price</button>
                    </form>
                </td>
                <td>
                    <form action="/updateFoodQuantity" method="post">
                        <input type="hidden" name="foodId" value="<%= food.getFoodId() %>">
                        New Quantity: <input type="text" name="newQuantity" required>
                        <button type="submit">Update Quantity</button>
                    </form>
                </td>
            </tr>
            <% }
               } else { %>
            <tr>
                <td colspan="9" class="no-items">No food items found</td>
            </tr>
            <% }  %>
        </tbody>
    </table>
</body>
</html>
  