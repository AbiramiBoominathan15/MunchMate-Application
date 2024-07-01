<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, java.io.*, java.util.Base64, com.chainsys.munchmate.dao.UserImpl
,  com.chainsys.munchmate.model
.Food"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import=" com.chainsys.munchmate.model.*"%>
<%@ page import="com.chainsys.munchmate.model.Hotel"%>
<%@ page import="com.chainsys.munchmate.model.Food"%>

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
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0px 100px;
	background-color: #ffeae0;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1000;
}

.nav .logo h1 {
	font-weight: 600;
	font-family: sans-serif;
	color: black;
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
	font-family: sans-serif;
	font-size: 17px;
}

.nav .active::after {
	content: '';
	width: 50%;
	height: 3px;
	background-color: #ff511c;
	display: flex;
	position: relative;
	margin-left: 10px;
}

.card-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	padding: 0 100px;
	margin-top: 200px;
}

.card {
	width: 250px;
	background-color: #ffffff;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
	margin: 20px;
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

.imgg {
	width: 36%;
	display: inline-block;
	vertical-align: middle;
}

h1 {
	display: inline-block;
	vertical-align: middle;
}
</style>
<script>
function checkAvailability(searchValue, hour) {
	if (searchValue.toLowerCase() === 'breakfast' && hour >= 12) {
		alert('Breakfast is not available after 12 PM.');
		return false;
	} else if (searchValue.toLowerCase() === 'lunch' && (hour < 12 || hour >= 17)) {
		alert('Lunch foods are not available before 12 PM and after 5 PM.');
		return false;
	} else if (searchValue.toLowerCase() === 'dinner' && (hour < 12 || hour >= 17)) {
		alert('Dinner foods are not available after 5 PM.');
		return false;
	} else if (searchValue.toLowerCase() === 'breakfast' && (hour < 6 || hour >= 12)) {
		alert('Breakfast foods are not available before 6 AM and after 12 PM.');
		return false;
	}
	return true;
}

function addToCartClicked(foodId, price) {
	var quantity = parseInt(document.getElementById("quantity_" + foodId).value);
	var totalPrice = quantity * price;
	var currentOverallPrice = parseFloat(document.getElementById("overallPrice").innerText);
	var newOverallPrice = currentOverallPrice + totalPrice;
	document.getElementById("overallPrice").innerText = newOverallPrice.toFixed(2);
}
</script>
</head>
<body>
	<div class="nav">
		<div class="logo">
			<img class="imgg" src="Picture/logomuchmate1.png">

			<h1>
				Much<b>Mate</b>
			</h1>
		</div>
		<ul>
			<li><a class="active" href="#">Home</a></li>
			<li><a href="Aboutus.html">AboutUs</a></li>
			<li><a href="Contactpage.html">Contact</a></li>
		</ul>
		<div class="button-container">
			<form action="foodSearch.jsp">
				<input type="text" name="foodtitle" id="Search"
					placeholder="Search "> <input type="submit"
					class="search-button" value="search" name="action">
			</form>
		</div>
		<form action="AddCart" method="get">
			<input type="hidden" name="action" value="viewCart">
			<button id="btn">
				<img alt="not working" src="Picture/cart.png" width="40px"
					height="40px">
			</button>
		</form>
	</div>

	<div class="card-container">
		<%
		try {
			List<Food> foodlist = HungerImplements.read2();
			for (Food food : foodlist) {
				byte[] imageBytes = food.getFoodImage();
				String base64Image = Base64.getEncoder().encodeToString(imageBytes);
		%>
		<div class="card">
			<img src="data:image/jpeg;base64,<%=base64Image%>" alt="Food Image">
			<div class="card-details">
				<h3><%=food.getHotelName()%></h3>
				<h3><%=food.getHotelId()%></h3>
				<input type="hidden" value="<%=food.getHotelId()%>" name="hotelid">
				<h3><%=food.getFoodCategories()%></h3>
				<h3><%=food.getFoodName()%></h3>
				<p class="price">
					Price:
					<%=food.getFoodPrice()%></p>
				<p
					class="<%=food.getAvailability().equalsIgnoreCase("Available") ? "available" : "unavailable"%>">
					<%=food.getAvailability()%>
				</p>
				<form action="AddCart" method="post">

					<div class="quantity-selector">
						<input type="number" id="quantity_<%=food.getFoodId()%>"
							name="quantity" min="1" value="1"> <input type="hidden"
							name="action" value="addToCart"> <input type="hidden"
							name="foodId" value="<%=food.getFoodId()%>"> <input
							type="hidden" name="hotelid" value="<%=food.getHotelId()%>">
						<input type="hidden" name="quantity"
							value="<%=food.getFoodQuantity()%>"> <input type="hidden"
							name="foodName" value="<%=food.getFoodName()%>"> <input
							type="hidden" name="price" value="<%=food.getFoodPrice()%>">
						<input type="hidden" name="foodSession"
							value="<%=food.getFoodsession()%>"> <input type="hidden"
							name="base64Image" value="<%=base64Image%>">
						<button type="submit"
							onclick="addToCartClicked(<%=food.getFoodId()%>, <%=food.getFoodPrice()%>)">Add
							to Cart</button>
				</form>
			</div>

		</div>
	</div>
	<%
	}
	} catch (SQLException | ClassNotFoundException ex) {
	ex.printStackTrace();
	}
	%>
	</div>

	<div class="footer">
		<!-- 		<button onclick="window.location.href='AddCart?action=viewCart'">View Cart</button>
 -->
		<form action="AddCart" method="get">
			<input type="hidden" name="action" value="viewCart">

			<button type="submit">ViewCart</button>
		</form>
		<p>
			Total Price: $<span id="overallPrice">0.00</span>
		</p>
	</div>
</body>
</html>
