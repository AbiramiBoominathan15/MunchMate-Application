 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.chainsys.munchmate.model.Food" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
       
       
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table th, table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        table th {
            background-color: #f2f2f2;
        }
        table td img {
            display: block;
            margin: 0 auto;
        }
        .no-items {
            text-align: center;
            font-style: italic;
            color: #666;
        }
    </style>
</head>
<body>
    <h2>Food List</h2>
    <table>
        <thead>
            <tr>
             <th>Hotel Name</th>
                <th>Food Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Meal Time</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <% 
               List<Food> foods = (List<Food>) request.getAttribute("foods");
               if (foods != null && !foods.isEmpty()) {
                   for (Food food : foods) { 
            %>
                <tr>
<%--                     <td><%= food.getFoodId() %></td>
<%-- <%--  --%>                   
 <td><%= food.getHotelName() %></td>
                    <td><%= food.getFoodName() %></td>
                    <td><%= food.getFoodPrice() %></td>
                    <td><%= food.getFoodQuantity() %></td>
                    <td><%= food.getFoodCategories() %></td>
                    <td><%= food.getFoodSession() %></td>
                    <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" width="100px" /></td>
                </tr>
            <% 
                   }
               } else { 
            %>
                <tr>
                    <td colspan="9" class="no-items">No food items found</td>
                </tr>
            <% 
               }  
            %>
        </tbody>
    </table>
</body>
</html>
 