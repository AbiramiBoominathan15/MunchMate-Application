<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MunchMate</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
}

.header {
    background-color: #333333;
    color: #ffffff;
    padding: 20px;
    display: flex;
    align-items: center; 
    justify-content: center; 
}

.header img {
    width: 50px; 
    height: auto; 
    margin-right: 10px;
    vertical-align: middle;
}

.sidebar {
    width: 250px;
    background-color: orange;
    color: #ffffff;
    position: fixed;
    height: 100%;
    top: 0;
    padding-top: 20px;
}

.sidebar ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.sidebar ul li {
    padding: 10px;
    border-bottom: 1px solid #4d4d4d;
}

.sidebar ul li a {
    color: #ffffff;
    text-decoration: none;
}

.content {
    margin-left: 250px;
    padding: 20px;
}

h1 {
    color: white;
}

p {
    color: #666666;
}

#orders {
    background: none;
    border: none;
    color: white;
    font-size: 17px;
    padding-left: 0px; 
}

#Menu {
    background: none;
    border: none;
    color: white;
    font-size: 17px;
    padding-left: 0px; 
}

#Customers {
    background: none;
    border: none;
    color: white;
    font-size: 17px;
    padding-left: 0px; 
}
.img {
	background-attachment: fixed;
	position: relative;
	bottom: 20px;
}

</style>
</head>
<body>

<div class="header">
    <img src="Picture/logomuchmate1.png" alt="MunchMate Logo">
    <h1>Munch Mate</h1>
</div>

<div class="sidebar">
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li>
            <form action="/hotels" method="get">
                <input id="orders" type="submit" value="Orders">
            </form>
        </li>
        <li>
            <form action="/foodList" method="get">
                <input id="Menu" type="submit" value="Menu">
            </form>
        </li>
        <li>
            <form action="/listofusers" method="get">
                <input id="Customers" type="submit" value="Customers">
            </form>
        </li>
        <li><a href="contactPage.jsp">Contact</a></li>
        <li><a href="aboutPage.jsp">About</a></li>
        <li><a href="homePage.jsp">Logout</a></li>
    </ul>
</div>

<div class="content">
		<img class="img" style="width: 104%"
	
	
			src="https://www.slideteam.net/media/catalog/product/cache/1280x720/f/o/food_quality_and_safety_management_guide_powerpoint_presentation_slides_slide01.jpg">
</div>

</body>
</html>
  --%>
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            height: 100vh;
            /* background-image: url("https://static.vecteezy.com/system/resources/previews/024/214/119/non_2x/enjoy-your-meal-illustration-a-variety-of-delicious-food-in-home-or-restaurant-in-flat-cartoon-hand-drawn-landing-page-background-templates-vector.jpg");
            background-size: cover; 
            background-position: center; */
            font-family: Arial, sans-serif; /* Added font-family for consistency */
        }

        .main{
            background-image: url("https://static.vecteezy.com/system/resources/previews/024/214/119/non_2x/enjoy-your-meal-illustration-a-variety-of-delicious-food-in-home-or-restaurant-in-flat-cartoon-hand-drawn-landing-page-background-templates-vector.jpg");
            background-size: cover; 
            background-position: center;
            height: 135%;
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
               <li><a class="home" href="index.jsp">Home</a></li> 
                <li>
               <a href="hotels">Orders</a>
            </form>
               </li>
			<li><a href="/food">Menu</a></li>
               			<li><a href="">Purchase</a></li>
               
                <li><a href="listofusers">User</a></li>
                <li><a href="aboutPage.jsp">AboutUs</a></li>
                
                <li><a href="contactPage.jsp">Contact</a></li>
            </ul>
            <a class="signin" href="signup">Sign Up</a>
        </div>
    </section>
    <section class="main">

    </section>
    <section class="footer">
        <p>&copy; 2024 MunchMate. All rights reserved.</p>
    </section>
    
</body>
</html>
  