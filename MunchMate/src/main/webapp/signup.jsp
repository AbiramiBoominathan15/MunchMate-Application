    <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
        background-image: url('https://www.baronmiedzyzdroje.pl/wp-content/uploads/2019/04/background-1.png');
        background-size: cover;
        background-position: center;
    }

    .container {
        width: 100%;
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8); 
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }

    h1 {
        text-align: center;
        color: #e75480;
        margin-bottom: 20px;
    }

    .tabs {
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }

    .tab {
        margin: 0 10px;
        cursor: pointer;
        padding: 10px 20px;
        border-radius: 5px;
        background-color: #e75480;
        color: #ffffff;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .tab.active {
        background-color: #d33f5b;
    }

    form {
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.9);  
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #333;
    }

    input[type="text"],
    input[type="password"],
    input[type="file"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 15px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }

    input[type="submit"] {
        width: 20%;
        text-align:center;
        padding: 10px;
        margin-top: 20px;
        background-color: #e75480;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #d33f5b;
    }

    .footer {
        margin-top: 20px;
        text-align: center;
        color: #666;
    }

    .footer a {
        color: #e75480;
        text-decoration: none;
    }

    .footer a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Registration</h1>
    <div class="tabs">
        <div class="tab active" onclick="showUserRegistration()">User</div>
        <div class="tab" onclick="showBusinessRegistration()">Business</div>
    </div>

    <!-- User Registration Form -->
    <form id="userRegistrationForm" action="/register" method="post">
        <label for="userName">Name:</label>
        <input type="text" id="userName" name="name" placeholder="Enter your name" required><br>

        <label for="userPhoneNumber">Phone Number:</label>
        <input type="text" id="userPhoneNumber" name="phonenumber" placeholder="Enter your phone number" pattern="[0-9]{10}" required><br>

        <label for="userCity">City:</label>
        <input type="text" id="userCity" name="city" placeholder="Enter your city" required><br>

        <label for="userPassword">Password:</label>
        <input type="password" id="userPassword" name="password" placeholder="Enter your password" pattern="[A-Za-z0-9]{6,10}" required><br>

        <label for="userEmail">Email:</label>
        <input type="text" id="userEmail" name="email" placeholder="Enter your email" required><br>

        <input type="hidden" name="action" value="userRegister">
        <input type="submit" value="Sign Up">
    </form>

    <!-- Business Registration Form -->
    <form id="businessRegistrationForm" action="/hotelregister" method="post" style="display: none; "enctype="multipart/form-data">
        <label for="businessName">Hotel Name:</label>
        <input type="text" id="businessName" name="hotelName" placeholder="Enter your business name" required><br>

        <label for="hotelImage">Hotel Image:</label>
        <input type="file" id="hotelImage" name="image" accept="image/*"><br>

        <label for="businessPhoneNumber">Phone Number:</label>
        <input type="text" id="businessPhoneNumber" name="phonenumber" placeholder="Enter your phone number" pattern="[0-9]{10}" required><br>

        <label for="businessCity">City:</label>
        <input type="text" id="businessCity" name="city" placeholder="Enter your city" required><br>

        <label for="businessPassword">Password:</label>
        <input type="password" id="businessPassword" name="password" placeholder="Enter your password"  required><br>

        <label for="businessEmail">Email:</label>
        <input type="text" id="businessEmail" name="email" placeholder="Enter your email" required><br>

        <input type="hidden" name="action" value="businessRegister">
        <input type="submit" value="Sign Up">
    </form>

    <div class="footer">
        <p>Already have an account? <a href="loginPage.jsp">Login</a></p>
    </div>
</div>

<script>
    function showUserRegistration() {
        document.getElementById("userRegistrationForm").style.display = "block";
        document.getElementById("businessRegistrationForm").style.display = "none";
        document.querySelector(".tab.active").classList.remove("active");
        document.querySelectorAll(".tab")[0].classList.add("active");
    }

    function showBusinessRegistration() {
        document.getElementById("userRegistrationForm").style.display = "none";
        document.getElementById("businessRegistrationForm").style.display = "block";
        document.querySelector(".tab.active").classList.remove("active");
        document.querySelectorAll(".tab")[1].classList.add("active");
    }
</script>



</body>
</html>
    