<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.Food" %>
<%@ page import="java.util.Base64" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.chainsys.munchmate.dao.UserDAO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Food Details</title>
    <style>
        body {
            background-color: white;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            color: blue;
        }

        h3 {
            color: #ff511c;
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



        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 80px;
            padding: 0 100px;
        }

        .card {
            width: 250px;
            background-color: #ffffff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            margin: 65px;
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card-details {
            padding: 20px;
        }

        .card-details h3 {
            font-size: 18px;
            font-weight: 600;
            color: #333333;
            margin: 10px 0;
        }

        .card-details p {
            color: #666666;
            margin: 5px 0;
        }

        .card-details .price {
            color: #ff511c;
            font-size: 16px;
            font-weight: 600;
        }

        .quantity-selector {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }

        .quantity-selector input[type="number"] {
            width: 50px;
            padding: 5px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .quantity-selector button {
            background-color: #ff511c;
            color: white;
            border: none;
            padding: 8px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .quantity-selector button:hover {
            background-color: #e03e00;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            padding: 20px 0;
            background-color: #ff511c;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .search-bar {
            text-align: center;
            margin-bottom: 20px;
        }

        .search-bar input[type="text"] {
            padding: 8px;
            width: 30%;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .button-container {
            display: inline-block;
        }

        .button-container input[type="submit"] {
            padding: 8px 20px;
            cursor: pointer;
            font-weight: 600;
            border: none;
            background-color: #ff511c;
            color: white;
            border-radius: 5px;
            margin-left: 10px;
        }

        .button-container input[type="submit"]:hover {
            background-color: #e03e00;
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
			<a class="signin" href="signup.jsp">Sign Up</a>
		</div>
	</section>

    <div class="main">
        <main>
            <h2><center>Food</center></h2>

            <%
            String foodTitle = request.getParameter("foodName");
            System.out.println("<-------->" + foodTitle);
                ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
                UserDAO userDAO = (UserDAO) context.getBean("userDAO");
                
                List<Food> foodList = userDAO.searchFood(foodTitle);

                if (foodList != null && !foodList.isEmpty()) {
                    for (Food food : foodList) {
                        String foodName = food.getFoodName();
                        int price = food.getFoodPrice();
                        
                        byte[] imageBytes = food.getFoodImage();
                        String base64Image = Base64.getEncoder().encodeToString(imageBytes);
            %>
                        <div class="card">
                            <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Food Image">
                            <div class="card-details">
                                <h3><%= foodName %></h3>
                                <p>Price: <%= price %></p>
                            </div> 
                        </div>
            <%
                    }
                } else {
            %>
                    <div class="card">
                        <div class="card-details">
                            <p>No results found for '<%= foodTitle %>'</p>
                        </div>
                    </div>
            <%
                }
            %>
        </main>
    </div>
    <footer class="footer">
        <p>&copy; 2024 MuchMate. All rights reserved.</p>
    </footer>
</body>
</html>
