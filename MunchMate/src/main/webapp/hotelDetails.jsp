<%--   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>

<%@ page import="com.chainsys.munchmate.model.Hotel" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
/*             padding: 20px;

 */       
 margin:0px;
  }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        select {
            padding: 5px;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .container {
            max-width: 896px;
            margin: auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
.nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 100px;
	background-color: gray;
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


    <div class="container">
        <h2>Hotel Details</h2>
        <table>
            <thead>
                <tr>
                   <th>Name</th>
                    <th>Location</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Image</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Hotel> hotels = (List<Hotel>) request.getAttribute("hotels");
                if (hotels != null && !hotels.isEmpty()) {
                    for (Hotel hotel : hotels) {
                %>
                <tr>
                    <td><%= hotel.getHotelId() %></td>
                    <td><%= hotel.getHotelName() %></td>
                    <td><%= hotel.getHotelLocation() %></td>
                    <td><%= hotel.getHotelPhoneNumber() %></td>
                    <td><%= hotel.getHotelEmail() %></td>
                                        <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(hotel.getHotelImage())) %>" width="100px" /></td>
                    
                    <td>
                        <form action="/updateApproval" method="post">
                            <input type="hidden" name="hotelId" value="<%= hotel.getHotelId() %>">
                            <select name="approved">
                                <option <%= hotel.getStatus().equalsIgnoreCase("Unapproved") ? "" : "selected" %> value="Unapproved">Unapproved</option>
                                <option <%= hotel.getStatus().equalsIgnoreCase("Approved") ? "selected" : "" %> value="Approved">Approved</option>
                            </select>
                            <input type="submit" name="submit" value="Update">
                        </form>
                    </td>
                    <td>
                        <form action="/deleteHotel" method="post">
                            <input type="hidden" name="hotelId" value="<%= hotel.getHotelId() %>">
                            <input type="submit" name="delete" value="Delete">
                        </form>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="7">No hotels found</td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
   --%>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.chainsys.munchmate.model.Hotel" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel List</title>
    <style>
     
     
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
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
        .container {
            max-width: 1218px;
            margin: auto;
            background-color: #5585b5;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 82%;
            margin:0 auto;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #385170;
            color: white;
        }
/*         tr:nth-child(even) {
            background-color: #f2f2f2;
        }
 *//*         tr:hover {
            background-color: #ddd;
        }
 */        select {
            padding: 5px;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #385170;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]: {
            background-color: #45a049;
        }
        tbody{
        background-color:#9fd3c7;
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
                <li><a href="aboutPage.jsp">About Us</a></li>
                <li><a href="contactPage.jsp">Contact</a></li>
            </ul>
            <a class="signin" href="signup">Sign Up</a>
        </div>
    </section>

    <div class="container">
        <h2>Hotel Details</h2>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Image</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Hotel> hotels = (List<Hotel>) request.getAttribute("hotels");
                if (hotels != null && !hotels.isEmpty()) {
                    for (Hotel hotel : hotels) {
                %>
                <tr>
                    <td><%= hotel.getHotelName() %></td>
                    <td><%= hotel.getHotelLocation() %></td>
                    <td><%= hotel.getHotelPhoneNumber() %></td>
                    <td><%= hotel.getHotelEmail() %></td>
                    <td><img src="data:image/jpg;base64,<%= new String(Base64.getEncoder().encode(hotel.getHotelImage())) %>" width="100px" /></td>
                    <td>
                        <form action="/updateApproval" method="post">
                            <input type="hidden" name="hotelId" value="<%= hotel.getHotelId() %>">
                            <select name="approved">
                                <option <%= hotel.getStatus().equalsIgnoreCase("Unapproved") ? "" : "selected" %> value="Unapproved">Unapproved</option>
                                <option <%= hotel.getStatus().equalsIgnoreCase("Approved") ? "selected" : "" %> value="Approved">Approved</option>
                            </select>
                            <input type="submit" name="submit" value="Update">
                        </form>
                    </td>
                    <td>
                        <form action="/deleteHotel" method="post">
                            <input type="hidden" name="hotelId" value="<%= hotel.getHotelId() %>">
                            <input type="submit" name="delete" value="Delete">
                        </form>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="7">No hotels found</td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
   