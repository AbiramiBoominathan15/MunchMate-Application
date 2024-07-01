<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MunchMate Admin Dashboard</title>
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
        text-align: right;
    }
    .header img {
        width: 30px;
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
        color: #333333;
    }

    p {
        color: #666666;
    }
    
    
    #orders{
    	padding-left: 10px;
    	background: none;
    	border: none;
    	color: white;
    	font-Size:17px;
    }
</style>
</head>
<body>

<div class="header">
<h1 style="color:white ;text-align:center">Munch Mate</h1>
    <img src="admin-icon.png" alt="Admin Icon">
</div>

<div class="sidebar">
    <ul>
<!--         <li><a href="hunger.jsp">Dashboard</a></li>
 -->   
 <li><a href="index.jsp">Home</a></li>
 <form action="PaymentServlet" method="get" style="border-bottom: 1px solid black;">
 		 <input id="orders" type="submit" value="Orders" >
 </form>     
 
 
 

<!--         <li><a href="#">Menu</a></li>
 -->       
 <li><form action="/listofusers" method="get">
  <input id="orders" type="submit"value="Customers" >
 </form></li>
 <li><a href="contactPage.jsp">Contact</a></li>
 <li><a href="aboutPage.jsp">About</a></li>
 
<!--         <li><a href="#">Settings</a></li>
 -->        <li><a href="homePage.jsp">Logout</a></li>
    </ul>
    </form>
</div>
<div class="content">
<!--     <h1>Welcome to MunchMate</h1>
 -->    
</div>

</body>
</html>