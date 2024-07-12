<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
</head>
<style>

body {
    margin: 0;
    padding: 0;
    background-color:#5585b5;
/*     display: flex;
 */    justify-content: center;
    align-items: center;
    height: 100vh;
/*     background-image: url("https://t4.ftcdn.net/jpg/02/92/20/37/360_F_292203735_CSsyqyS6A4Z9Czd4Msf7qZEhoxjpzZl1.jpg");
 */    background-size: cover; 
    background-position: center;

}
.button-container {
    text-align: center;
    margin-top: 20px;
}

.container {
    text-align: center;
}

.login-background {
    background-size: cover;
    background-position: left;
    padding: 87px;
}

.login-box {
    background-color: rgba(255, 255, 255, 0.8); 
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 400px;
     margin-left: 650px; 
    margin: 0 auto;
}

.form-group {
    margin-bottom: 20px;




}
form {
    text-align: center; 
}


label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"],
input[type="tel"],
input[type="password"] {
    width: 80%;
    padding: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
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



</style>
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

    <div class="container">
        <div class="login-background">
            <div class="login-box">
                <h2>Login</h2>
		<form action="/login" method="post">
                    <div class="form-group">
                        <label for="name">Email:</label>
 <input type="text" id="name" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" required title="Please enter a valid email address">
                   </div>

                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <div class="button-container">
                        <button type="submit" class="login-button">Login</button>
                    </div>
                                    <div id="alertContainer">
                    <%  
                        String message = (String) request.getAttribute("message");
                        if (message != null && !message.isEmpty()) {
                            out.println("<div class='alert alert-danger' role='alert'>" + message + "</div>");
                        }
                    %>
                </div>    					                            <footer>
                <span class="footer-buttons" color:violet>Don't have an account<a href="signup.jsp">Signup</a></span>
           
            </footer>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

