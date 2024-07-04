<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	overflow: hidden;
}

.header {
	background-color: #333333;
	color: #ffffff;
	padding: 20px;
	text-align: right;
	width: 100%;
}

.header img {
	width: 30px;
	height: auto;
	
	
	margin-right: 10px;
	vertical-align: middle;
}

.sidebar {
	width: 270px;
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

#orders {
	padding-left: 10px;
	background: none;
	border: none;
	color: white;
	font-Size: 17px;
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
		<h1 style="color: orange; text-align: center">
			<img src="Picture/logomuchmate1.png">
			<center style="display: inline-block;">MunchMate</center>
		</h1>
		<img src="admin-icon.png" alt="">
	</div>
	<div class="sidebar">
		<ul>
			<li><a href="index.jsp"><button>Home</button></a><br>
			<br></li>
			<li>
				<form action="OrdersServlet">
					<button type="submit">Orders</button>
					</a><br>
					<br>
				</form>
			</li>
			<li><a href="contactPage.jsp"><button>Contact</button></a><br>
			<br></li>
			<li><a href="aboutPage.jsp"><button>About</button></a><br>
			<br></li>
			<li><a href="index.jsp"><button>Logout</button></a></li>
		</ul>
		</form>
	</div>
	<div class="content">
		<img class="img" style="width: 104%"
			src="https://www.slideteam.net/media/catalog/product/cache/1280x720/f/o/food_quality_and_safety_management_guide_powerpoint_presentation_slides_slide01.jpg">

	</div>

</body>
</html>
