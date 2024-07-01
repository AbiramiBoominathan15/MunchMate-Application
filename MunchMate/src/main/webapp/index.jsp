 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MunchMate</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
*, ::after, ::before {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 0;
	font-family: 'Arial', sans-serif;
	background: linear-gradient(135deg, #ffcc70, #c5deea);
	color: #333;
}

.nav {
	width: 100%;
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

.content {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 30px;
	margin-top: 100px;
	align-items: center;
	justify-content: space-between;
	padding: 0 100px;
}

.content h2 {
	font-size: 48px;
	font-weight: 600;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin-bottom: 30px;
	color: #333;
}

.content p {
	font-size: 18px;
	line-height: 1.6;
	margin-bottom: 30px;
	color: #555;
}

.content button {
	padding: 15px 30px;
	background-color: #ff511c;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	transition: background-color 0.3s ease, transform 0.3s ease;
}

.content button:hover {
	background-color: #e64411;
	transform: scale(1.05);
}

.category {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 50px 100px;
	background-color: rgba(255, 255, 255, 0.8);
	backdrop-filter: blur(10px);
	margin-top: 50px;
}

.card-list {
	display: flex;
	justify-content: space-around;
	width: 100%;
	max-width: 1200px; 
	margin-top: 30px;
	gap: 20px;
	flex-wrap: wrap; 
}

.card {
	flex: 1 1 250px; 
	padding: 20px;
	background: linear-gradient(135deg, #ffcc70, #c5deea);
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	text-align: center;
	overflow: hidden;  
}

.card:hover {
	transform: translateY(-5px);
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
	background: linear-gradient(135deg, #c5deea, #ffcc70);  
}

.card img {
	width: 100%;
	max-width: 100%;
	height: auto;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
}

.card .food-title {
	margin-top: 15px;
}

.card .food-title h1 {
	font-size: 24px;
	font-weight: bold;
	color: #333;
	margin-top: 10px;
}

.card .desc-food p {
	font-size: 14px;
	color: #666;
	margin-bottom: 10px;
}

.card .price {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-top: 15px;
	font-size: 18px;
	font-weight: 600;
	color: #333;
}

.card .price .plus-icon {
	color: #ff511c;
	font-size: 20px;
	cursor: pointer;
}

h3 {
	font-size: 36px;
	font-weight: 600;
	text-align: center;
	margin-bottom: 50px;
	color: #333;
}

.footer {
	background-color: #333;
	color: #fff;
	padding: 20px;
	text-align: center;
 	bottom: 0;
	left: 0;
	width: 100%;
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
				<li><a class="active" href="#">Home</a></li>
				<li><a href="aboutPage.jsp">AboutUs</a></li>
				<li><a href="contactPage.jsp">Contact</a></li>
			</ul>
			<a class="signin" href="loginPage.jsp">Sign In</a>
		</div>
	</section>

	<section class="grid">
		<div class="content">
			<div class="content-left">
				<div class="info">
					<h2>
						Order Your Best<br>Food anytime
					</h2>
					<p>
						Hey,Our delicious food is waiting for you,<br> we are always
						near to you with fresh item of food
					</p>
				</div>
				<button>Explore Food</button>
			</div>
			<div class="content-right">
				<img src="Picture/home (2).jpg" alt="Food Image">
			</div>
		</div>
	</section>

	<section class="category">
		<div class="list-items">
			<h3>Popular Dishes</h3>
			<div class="card-list">
				<div class="card">
					<img src="Picture/dose.png" alt="Dose">
					<div class="food-title">
						<h1>Dose</h1>
					</div>
					<div class="desc-food">
						<p>Quaerat iusto digniss corporis cupiditate praesentium
							inventore.</p>
					</div>
					<div class="price">
						<span>Rs:100</span><span><i class="fa fa-plus plus-icon"
							aria-hidden="true"></i></span>
					</div>
				</div>
				<div class="card">
					<img src="Picture/chapathi1.jpg" alt="Chapathi">
					<div class="food-title">
						<h1>Chapathi</h1>
					</div>
					<div class="desc-food">
						<p>Quaerat iusto digniss corporis cupiditate praesentium
							inventore.</p>
					</div>
					<div class="price">
						<span>Rs:80</span><span><i class="fa fa-plus plus-icon"
							aria-hidden="true"></i></span>
					</div>
				</div>
				<div class="card">
					<img src="Picture/idiyapam4.jpg" alt="Ediyapam">
					<div class="food-title">
						<h1>Ediyapam</h1>
					</div>
					<div class="desc-food">
						<p>Quaerat iusto digniss corporis cupiditate praesentium
							inventore.</p>
					</div>
					<div class="price">
						<span>Rs:120</span><span><i class="fa fa-plus plus-icon"
							aria-hidden="true"></i></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer">
		<p>&copy; 2024 MunchMate. All rights reserved.</p>
	</footer>
</body>
</html>
   