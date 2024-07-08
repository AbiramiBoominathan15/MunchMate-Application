<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.Food" %>
<%@ page
	import="java.sql.*, java.io.*, java.util.Base64, com.chainsys.munchmate.dao.UserImpl
,  com.chainsys.munchmate.model.Food"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food List</title>
</head>
<body>
    <h2>Food List</h2>
    <table border="1">
        <thead>
            <tr>
            <th>Hotel Id</th>
                <th>Hotel Name</th>
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
                <td><%= food.getHotelName() %></td>
                <td><%= food.getFoodName() %></td>
                                <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" width="100px" /></td>
                
                <td><%= food.getFoodPrice() %></td>
                <td><%= food.getFoodQuantity() %></td>
                <td><%= food.getFoodCategories() %></td>
                <td><%= food.getFoodSession() %></td>
            </tr>
            <% }
               } else { %>
            <tr>
                <td colspan="6">No food items found</td>
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
<%--                 <td><%= food.getHotelId() %></td>
 --%>                <td><%= food.getHotelName() %></td>
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
 