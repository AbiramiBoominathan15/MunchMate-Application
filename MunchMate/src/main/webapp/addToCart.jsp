<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.chainsys.munchmate.model.Food" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="com.chainsys.munchmate.utils.MealTime" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<!--     <style>
        body {
            background-color: #f2f2f2; 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .menu {
            background-color: #ffffff; 
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        .food-card {
            margin-bottom: 20px;
            border: 1px solid #ddd; 
            border-radius: 8px;
            overflow: hidden; 
        }
        .food-image {
            max-height: 200px;
            object-fit: cover;
            width: 100%; 
            border-bottom: 1px solid #ddd; 
        }
        .card-body {
            padding: 15px;
        }
        .card-title {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 10px;
        }
        .card-text {
            font-size: 16px;
            margin-bottom: 10px;
        }
        .card-price {
            font-size: 16px;
            font-weight: bold;
            color: #AA336A; /* Purple color for price */
        }
        .quantity-input {
            width: 60px;
            text-align: center;
        }
        .btn-add-to-cart {
            background-color: #ff511c;
            border-color: #AA336A;
            color: #ffffff;
            width: 100%;
            margin-top: 10px;
        }
        .btn-add-to-cart:hover {
            background-color: #ff69b4;
            border-color: #ff69b4;
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
 -->
     </head>
     <style>
     
     <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f2f2f2;
        color: #333;
        margin: 0;
        padding: 0;
    }
    .menu {
/*         background-color: #5585b5;

 */        
 background-color:#F4F7FA
;
 padding: 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
/*         margin-top: 20px;
 */    }
    .food-card {
        border: 1px solid #ddd;
        border-radius: 8px;
        overflow: hidden;
        transition: transform 0.3s ease;
        background-color: #f9f9f9; 
        margin-bottom: 20px;
    }
    .food-card:hover {
        transform: translateY(-5px);
    }
    .food-image {
        max-height: 200px;
        object-fit: cover;
        width: 100%;
        border-bottom: 1px solid #ddd;
    }
    .card-body {
        padding: 15px;
    }
    .card-title {
        font-weight: bold;
        font-size: 18px;
        margin-bottom: 10px;
        color: #333; 
    }
    .card-text {
        font-size: 16px;
        margin-bottom: 10px;
        color: #666; 
    }
    .card-price {
        font-size: 16px;
        font-weight: bold;
        color: #AA336A; 
    }
    .quantity-input {
        width: 60px;
        text-align: center;
    }
    .btn-add-to-cart {
        background-color: #AA336A; 
        border-color: #AA336A;
        color: #ffffff;
        width: 100%;
        margin-top: 10px;
        transition: background-color 0.3s ease, border-color 0.3s ease, transform 0.3s ease;
    }
    .btn-add-to-cart:hover {
        background-color: #ff69b4; 
        border-color: #ff69b4;
        transform: scale(1.05);
    }
    .nav {
        background-color: #9fd3c7; 
        padding: 35px 12px;
        backdrop-filter: blur(10px);
        top: 0;
        left: 0;
        right: 0;
        z-index: 1000;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: relative;
    }
    .nav .logo img {
        width: 70px;
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
        color: black; 
        font-weight: 500;
        font-size: 17px;
        transition: color 0.3s ease;
    }
    .nav ul li a:hover {
        color: #ffdb58; 
    }
    .signin {
        color: white; 
        text-decoration: none;
        padding: 8px 16px;
        border: 2px solid #AA336A;      
         border-radius: 5px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }
    .signin:hover {
        background-color: white;
        color: #ffdb58; 
    }
    .search-form {
        margin-left: auto;
        display: flex;
        align-items: center;
    }
    .search-input {
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 5px;
        margin-right: 10px;
        width: 250px;
        font-size: 16px; 
    }
    .search-button {
        background-color: #AA336A;
        color: #ffffff;
        border: none;
        padding: 8px 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        font-size: 16px; 
    }
    .search-button:hover {
        background-color: #ff69b4; 
    }
  .logo{
        vertical-align:middle;
        display:inline-block;
        }
        .header{
                vertical-align:middle;
        display:inline-block;
        }

    @media screen and (max-width: 768px) {
        .nav {
            padding: 20px; 
        }
        .nav .logo img {
            width: 50px; 
        }
        .nav ul li {
            margin-right: 20px; 
        }
        .search-input {
            width: 200px; 
        }
      
    }
</style>
     
     </style>
<body>
    <div class="nav">
        <div class="logo">
            <img src="Picture/logomuchmate1.png" alt="Logo">
            <h1 class= "header">Munch<b>Mate</b></h1>
        </div>
        <ul>
            <li><a class="home" href="index.jsp">Home</a></li>
<!--             <li><a class="" href="">User</a></li>
 -->            <li><a href="aboutPage.jsp">AboutUs</a></li>
            <li><a href="contactPage.jsp">Contact</a></li>
        </ul>
        <form class="searchFoods" action="/foodSearch" method="post">
            <input class="search-input" type="text" placeholder="Search..." name="foodName">
            <button class="search-button" type="submit">Search</button>
        </form>
        
        <a class="signin" href="/cartlist">View Cart</a>
    </div>

    <section class="menu">
        <div class="container">
            <h2 class="text-center mb-4">Menu</h2>
        
        
        
            <div class="row">
                <% 
                int userId = (int) session.getAttribute("userid");
                List<Food> foods = (List<Food>) request.getAttribute("foods");
                if (foods != null && !foods.isEmpty()) {
                    int hour = LocalTime.now().getHour();
                    String mealTime = "";
                    if (hour >= 6 && hour < 12) {
                        mealTime = MealTime.BREAKFAST;
                    } else if (hour >= 12 && hour < 17) {
                        mealTime = MealTime.LUNCH;
                    } else {
                        mealTime = MealTime.DINNER;
                    }
                    for (Food food : foods) { 
                        if (food.getFoodSession().equals(mealTime)) {
                %>
                <div class="col-md-4">
                              <form action="addToCart" method="get"  enctype="multipart/form-data">
                    <div class="food-card">
                        <img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" class="card-img-top food-image"  alt="Food Image">
                        <div class="card-body">
                        
                            <h5 class="card-title"><%= food.getHotelName() %></h5>
                            <p class="card-text"><%= food.getFoodName() %></p>
<%--                             <p class="card-price" name="price"  value=" <%= food.getFoodPrice() %>"  readonly="readonly">Price: <%= food.getFoodPrice() %></p>
 --%>                            
                           <p class="card-price"  >Price: <input input="number" name="price" value=" <%= food.getFoodPrice() %>"  readonly="readonly"></p>
                                <input type="hidden" value="<%= userId %>" name="userid">
                                <input type="hidden" value="<%= food.getFoodName() %>" name="foodname">
                                <input type="hidden" value="<%= food.getFoodId() %>" name="foodid">
                                                                <input type="hidden" value="<%=food.getHotelId() %>" name="hotelid">
                                
                                <input type="hidden" name="mealTime" value="<%= food.getFoodSession() %>">
<%--                                 				<input type="file" name="base64Image" value="<%=new String(Base64.getEncoder().encode(food.getFoodImage()))%>">
 --%>                                
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <button class="btn btn-outline-secondary" type="button" onclick="decrementQuantity(this)">-</button>
                                    </div>
                                    <input type="text" class="form-control text-center quantity-input" name="quantity" value="1">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button" onclick="incrementQuantity(this)">+</button>
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-primary btn-add-to-cart" value="Add to Cart">
                            </form>
                        </div>
                    </div>
                </div>
                <% 
                        }
                    }
                } else { 
                %>
                <div class="col">
                    <div class="alert alert-warning" role="alert">
                        No food items found.
                    </div>
                </div>
                <% 
                }  
                %>
            </div>
        </div>
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js" integrity="sha384-A3jd65LsY3YCmY9kzQTPUY6PlKGdL5OIo9cTojIyS8JsTgR/aiX8V7v4Za5sgS8" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+O65B1vqzV7mFM2l4/GtfuhB8Uyo9LIJkRb" crossorigin="anonymous"></script>

    <script>
        function incrementQuantity(element) {
            var input = element.parentElement.previousElementSibling;
            var currentValue = parseInt(input.value);
            input.value = currentValue + 1;
        }

        function decrementQuantity(element) {
            var input = element.parentElement.nextElementSibling;
            var currentValue = parseInt(input.value);
            if (currentValue > 1) {
                input.value = currentValue - 1;
            }
        }
    </script>
</body>
</html>
