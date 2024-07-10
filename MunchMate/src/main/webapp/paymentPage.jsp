<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Food Payment</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
	background: #5585b5;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.nav {
	background-color: #9fd3c7;
	padding: 15px 80px;
	backdrop-filter: blur(10px);
	top: 0;
	left: 0;
	right: 0;
	z-index: 1000;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.nav .logo img {
	width: 85px;
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

.payment-container {
	background-color: #fff;
	width: 400px;
	margin: 0 auto;
	padding: 10px 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
}

.payment-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.form-group {
	margin-bottom: 10px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 8px;
	color: #555;
}

.form-group input[type="text"], .form-group input[type="number"],
	.form-group select {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 16px;
}

.form-group input[type="text"]:focus, .form-group input[type="number"]:focus,
	.form-group select:focus {
	border-color: #ba4357;
	outline: none;
}

.btn-submit {
	background-color:#9fd3c7 ;
	color: #fff;
	padding: 12px 24px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	display: block;
	width: 100%;
	max-width: 200px;
	margin: 24px auto 0;
	text-align: center;
	font-size: 18px;
	transition: background-color 0.3s;
}

.btn-submit:hover {
	background-color: #93182c;
}

.logo {
	display: inline-block;
	vertical-align: middle;
}

.title {
	display: inline-block;
	vertical-align: middle;
}



.menuu {
	width: 60%;
}

.payment-container {
	display: inline-block;
	vertical-align: middle;
}

.image {
	display: inline-block;
	vertical-align: middle;
}
}
</style>
</head>
<body>
	<div class="nav">
		<div class="logo">
			<img src="Picture/logomuchmate1.png" alt="Logo">
			<h1 class="title">
				Munch<b>Mate</b>
			</h1>
		</div>
		<ul class="menuu">
			<li><a class="home" href="index.jsp">Home</a></li>
			<li><a href="aboutPage.jsp">About Us</a></li>
			<li><a href="contactPage.jsp">Contact</a></li>
		</ul>
	</div>

	<div>
		<div class="image">
			<img src="Picture/indexpic.png" alt="Logo">
		</div>

		<div class="payment-container">

			<h2>Payment</h2>
			<div class="section">
				<form action="" method="post">
					<div class="form-group">
						<label for="cardNumber">Card Number:</label> <input type="text"
							id="cardNumber" name="cardNumber" pattern="\d{16}" required>
					</div>
					<div class="form-group">
						<label for="expiryDate">Expiry Date:</label> <input type="text"
							id="expiryDate" name="expiryDate" placeholder="MM/YYYY"
							pattern="(0[1-9]|1[0-2])\/\d{4}" required>
					</div>
					<div class="form-group">
						<label for="cvv">CVV:</label> <input type="text" id="cvv"
							name="cvv" pattern="\d{3}" required>
					</div>
					<div class="form-group">
						<label for="address">Address:</label> <input type="text"
							id="address" name="address" required>
					</div>
					<div class="form-group">
						<label for="amount">Amount:</label> <input type="text" id="amount"
							name="amount" value="<%=request.getParameter("price")%>" required>
					</div>
					<button type="submit" class="btn-submit">Pay Now</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
