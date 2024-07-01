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
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: url("https://t4.ftcdn.net/jpg/02/92/20/37/360_F_292203735_CSsyqyS6A4Z9Czd4Msf7qZEhoxjpzZl1.jpg");
    background-size: cover; 
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
    padding: 20px;
}

.login-box {
    background-color: rgba(255, 255, 255, 0.8); 
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 400px;
    /* margin-left: 650px; 
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

</style>
<body>
    <div class="container">
        <div class="login-background">
            <div class="login-box">
                <h2>Login</h2>
		<form action="/login" method="post">
                    <div class="form-group">
                        <label for="name">Email:</label>
                        <input type="text" id="name" name="email" required>
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

