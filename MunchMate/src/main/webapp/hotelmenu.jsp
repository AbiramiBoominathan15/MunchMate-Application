<%-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 283px;
            display: flex;
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
        }

        .form-center {
            width: 90%; 
            max-width: 600px; 
        }

        .form-container {
            background-color: #f0ece2;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group select,
        .form-group textarea,
        .form-group input[type="file"] {
            width: calc(100% - 20px); 
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }



        .form-group select {
            width: 96%; 
        }

        .btn-submit {
            background-color: #596e79;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 50%; 
            margin-top: 10px; 
        }

        @media (max-width: 768px) {
            .form-group input[type="text"],
            .form-group input[type="number"],
            .form-group textarea {
                width: calc(100% - 16px); 
            }
        }
        
    </style>
</head>
<body>
<div class="form-center">
    <div class="form-container">
        <h2>Food Details</h2>
        <form action="/foodregister" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="hotelid">Hotel Id:</label>
    <input type="text" id="hotelid" name="hotelid" value="<%= session.getAttribute("hotelId") %>" required>
                
            </div>
            <div class="form-group">
                <label for="hotelName">Hotel Name:</label>
                <input type="text" id="hotelName" name="hotelname" value="<%= session.getAttribute("hotelName") %>"  required>
            </div>
            <div class="form-group">
                <label for="foodName">Food Name:</label>
                <input type="text" id="foodName" name="foodName" required>
            </div>
            <div class="form-group">
                <label for="foodCategory">Food Category:</label>
                <select id="foodCategory" name="foodCategory" required>
                    <option value="">Select Category</option>
                    <option value="Veg">Veg</option>
                    <option value="Non-veg">Non-Veg</option>
                </select>
            </div>
            <div class="form-group">
                <label for="foodSession">Meal Session:</label>
                <select id="foodSession" name="foodSession" required>
                    <option value="">Select Session</option>
                    <option value="Breakfast">Breakfast</option>
                    <option value="Lunch">Lunch</option>
                    <option value="Dinner">Dinner</option>
                </select>
            </div>
            <div class="form-group">
                <label for="foodPrice">Food Price:</label>
                <input type="number" id="foodPrice" name="foodPrice" min="0" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="foodQuantity">Food Quantity:</label>
                <input type="number" id="foodQuantity" name="foodQuantity" min="0" step="1" required>
           
           
            </div>
            <div class="form-group">
                <label for="foodimage">Food Image:</label>
                <input type="file" id="foodimage" name="image" accept="image/*">
            </div>
            <div class="form-group">
                <label for="foodDescription">Food Description:</label>
                <textarea id="foodDescription" name="foodDescription" rows="4" placeholder="Enter food description"></textarea>
            </div>
            <center>
           <form action="/login" method="post">
           <input type="hidden" id="hotelid" name="hotelId" value="<%= session.getAttribute("hotelId") %>" required>
           	 <button type="submit" class="btn-submit">Submit</button>
           </form>
            </center>
        </form>
    </div>
</div>

</body>
</html>
 --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Food Details</title>
</head>
<style>
/* styles.css */

/* General reset and styles */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	/*     background-color: #5585b5;
 */
	background-color: white;
}

/* Navigation bar */
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
	width: 96px;
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

button.order:hover {
	color: #ff511c;
}

input.purchase:hover {
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

/* Form centering and styling */
.form-center {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 90vh;
}

.form-container {
	width: 90%;
	max-width: 600px;
	background-color: #f0ece2;
	padding: 0px 23px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin: 55px;
}

.form-container h2 {
	text-align: center;
	margin-bottom: 10px;
}

.form-group {
	margin-bottom: 10px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group input[type="text"], .form-group input[type="number"],
	.form-group select, .form-group textarea, .form-group input[type="file"]
	{
	width: calc(100% - 20px);
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

.form-group select {
	width: 96%;
}

.btn-submit {
	background-color: #596e79;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	width: 50%;
	margin-top: 10px;
}

@media ( max-width : 768px) {
	.form-group input[type="text"], .form-group input[type="number"],
		.form-group textarea {
		width: calc(100% - 16px);
	}
}

.order {
	border: none;
	background-color: #9fd3c7;
	font-size: 17px;
	line-height: 0;
}

.purchase {
	border: none;
	background-color: #9fd3c7;
	font-size: 17px;
}

.imagessection {
	width: 103%;
	position: relative;
	height: 820px;
	/* 735 */
}

.imagessectionsrc {
	position: absolute;
	right: 12%;
	top: 72%;
	width: 26%;
	height: 375px;
}
</style>
<body>

	<section class="menu">
		<div class="nav">
			<div class="logo">
				<img src="Picture/logomuchmate1.png" alt="Logo">
				<h1>
					Munch<b style="color: #ff511c">Mate</b>
				</h1>
			</div>
			<ul>
				<li><a class="home" href="hotelAdminDashboard.jsp">Home</a></li>
				<li>
					<form action="hotelmenu.jsp" method="post">
						<button class="order" type="submit">Orders</button>
					</form>
				</li>
				<li><a href="/foodList">Menu</a></li>
				                <form action="/orderView" method="post">
                     <input type="hidden" id="hotelid" name="hotelid" value="<%= session.getAttribute("hotelId") %>" required>
                							                	<li><input type="submit"  class="purchase"  href=""value="Purchase"></li></form>
                	
                </form>
				

				<li><a href="contactPage.jsp">Contact</a></li>
				<li><a href="aboutPage.jsp">About Us</a></li>

			</ul>
			<a class="signin" href="index.jsp">Log Out</a>
		</div>
	</section>





	<div class="form-center">
		
		
		<div class="form-container">
			<h2>Food Details</h2>
			<form action="/foodregister" method="post"
				enctype="multipart/form-data">
				<div class="form-group">
					<label for="hotelid">Hotel Id:</label> <input type="text"
						id="hotelid" name="hotelid"
						value="<%=session.getAttribute("hotelId")%>" required readonly>
				</div>
				<div class="form-group">
					<label for="hotelName">Hotel Name:</label> <input type="text"
						id="hotelName" name="hotelname"
						value="<%=session.getAttribute("hotelName")%>" required readonly>
				</div>
				<div class="form-group">
					<label for="foodName">Food Name:</label> <input type="text"
						id="foodName" name="foodName" required>
				</div>
				<div class="form-group">
					<label for="foodCategory">Food Category:</label> <select
						id="foodCategory" name="foodCategory" required>
						<option value="">Select Category</option>
						<option value="Veg">Veg</option>
						<option value="Non-veg">Non-Veg</option>
					</select>
				</div>
				<div class="form-group">
					<label for="foodSession">Meal Session:</label> <select
						id="foodSession" name="foodSession" required>
						<option value="">Select Session</option>
						<option value="Breakfast">Breakfast</option>
						<option value="Lunch">Lunch</option>
						<option value="Dinner">Dinner</option>
					</select>
				</div>
				<div class="form-group">
					<label for="foodPrice">Food Price:</label> <input type="number"
						id="foodPrice" name="foodPrice" min="0" step="0.01" required>
				</div>
				<div class="form-group">
					<label for="foodQuantity">Food Quantity:</label> <input
						type="number" id="foodQuantity" name="foodQuantity" min="0"
						step="1" required>
				</div>
				<div class="form-group">
					<label for="foodimage">Food Image:</label> <input type="file"
						id="foodimage" name="image" accept="image/*">
				</div>
				<div class="form-group">
					<label for="foodDescription">Food Description:</label>
					<textarea id="foodDescription" name="foodDescription" rows="4"
						placeholder="Enter food description"></textarea>
				</div>
				<center>
					<form action="/login" method="post">
						<input type="hidden" id="hotelid" name="hotelId"
							value="<%=session.getAttribute("hotelId")%>" required>
						<button type="submit" class="btn-submit">Submit</button>
					</form>
				</center>
			</form>

		</div>
		<div class="image-section">
			<img src="Picture/adminmenu.jpg" class="imagessection" alt="icon">
			 <img
 				src="Picture/menu.jpg" class="imagessectionsrc" alt="icon">
 
		</div>

	</div>

</body>
</html>
