<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <style>
        .food-card {
            margin-bottom: 20px;
        }
        .food-image {
            max-height: 200px;
            object-fit: cover;
        }
        .login-button {
    background-color: #AA336A;
    color: #fff;
    /* padding: 10px 20px; */
    padding:5px 10px ;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    display:inline-block ;
    margin-top: 10px; 

}
.login-button {
    background-color: #AA336A;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
} */


.login-button:hover {
    background-color: #ff69b4;
}
.nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 100px;
	background-color: rgba(255, 255, 255, 0.8);
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
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	color: #333;
	font-size: 24px; 
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



        
    </style>
</head>
<body>
	<section class="menu">
		<div class="nav">
			<div class="logo">
				<img src="Picture/logomuchmate1.png" alt="Logo">
				<h1>
					Munch<b>Mate</b>
				</h1>
			</div>
			<ul>
				<li><a class="home" href="index.jsp">Home</a></li>
				<li><a href="aboutPage.jsp">AboutUs</a></li>
				<li><a href="contactPage.jsp">Contact</a></li>
			</ul>
			<a class="signin" href="signup">Sign Up</a>
		</div>
	</section>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Menu</h2>
        <div class="row">
            <% 
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
                <div class="card food-card">
                    <img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" class="card-img-top food-image" alt="Food Image">
                    <div class="card-body">
                        <h5 class="card-title"><%= food.getHotelName() %></h5>
                        <p class="card-text"><%= food.getFoodName() %></p>
                        <p class="card-text">Price: <%= food.getFoodPrice() %></p>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" onclick="decrementQuantity(this)">-</button>
                            </div>
                            <input type="text" class="form-control text-center quantity-input" value="1">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" onclick="incrementQuantity(this)">+</button>
                            </div>
                        </div>
                        <a href="#" class="btn btn-primary btn-block">Add to Cart</a>
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
     --%>
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
    <style>
        body {
            background-color: #f2f2f2; 
        }
        
        
        .menu {
            background-color: #ffffff; 
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); 
        }
        .food-card {
            margin-bottom: 20px;
        }
        .food-image {
            max-height: 200px;
            object-fit: cover;
        }
        .btn-primary {
            background-color: #AA336A; 
            border-color: #AA336A; 
        }
        .btn-primary:hover {
            background-color: #ff69b4; 
            border-color: #ff69b4;
        }
        .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 100px;
            background-color: rgba(255, 255, 255, 0.8);
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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            font-size: 24px; 
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
    </style>
</head>
<body>
    <section class="menu">
        <div class="nav">
            <div class="logo">
                <img src="Picture/logomuchmate1.png" alt="Logo">
                <h1>Munch<b>Mate</b></h1>
            </div>
            <ul>
                <li><a class="home" href="index.jsp">Home</a></li>
                <li><a class="" href="">User</a></li>
                <li><a href="aboutPage.jsp">AboutUs</a></li>
                <li><a href="contactPage.jsp">Contact</a></li>
            </ul>
            <a class="signin" href="viewCart.jsp">View Cart</a>
        </div>
    </section>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Menu</h2>
        <div class="row">
            <% 
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
                <div class="card food-card">
                    <img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(food.getFoodImage())) %>" class="card-img-top food-image" alt="Food Image">
                    <div class="card-body">
                        <h5 class="card-title"><%= food.getHotelName() %></h5>
                        <p class="card-text"><%= food.getFoodName() %></p>
                        <p class="card-text">Price: <%= food.getFoodPrice() %></p>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" onclick="decrementQuantity(this)">-</button>
                            </div>
                            <input type="text" class="form-control text-center quantity-input" value="1">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" onclick="incrementQuantity(this)">+</button>
                            </div>
                        </div>
                        <a href="#" class="btn btn-primary btn-block">Add to Cart</a>
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
     