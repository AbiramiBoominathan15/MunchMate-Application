<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #5585b5;
/*    margin: 0 100px;
 */
 }

.nav {


    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
  
  
  
    padding: 30px 0;
    background-color: white;
}

.nav .logo {
    font-weight: 600;
    font-family: sans-serif;
    color: black;
    margin-left: 20px;
}

.nav b {
    color: #ff511c;
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
    color: black;
    font-weight: 500;
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

.about-section {
    margin: 70px auto;
    padding: 20px;
    background-color: #9fd3c7;
    border-radius: 10px;
    width: 80%;
    text-align: justify;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.about-section h1 {
    text-align: center;
    color: #ff511c;
    margin-bottom: 20px;
}

.about-section p {
    margin-bottom: 15px;
    line-height: 1.6;
}

.footer {
    text-align: center;
    margin-top: 128px;
    padding: 49px 0;
    background-color: #9fd3c7;
}
.footer p {
    font-size: 14px;
    color: #666;
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
            font-size: 24px;
            color: #333;
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

    <div class="about-section">
        <h1>About Us</h1>
        <p>Welcome to MunchMate, your ultimate destination for delicious and affordable meals delivered right to your doorstep. We pride ourselves on offering a wide range of cuisines that cater to every palate, whether you're craving a hearty breakfast, a satisfying lunch, or a delightful dinner.</p>
        <p>Our mission is to make ordering food online convenient, fast, and enjoyable. With a commitment to quality and customer satisfaction, we ensure that each meal is prepared with the freshest ingredients and delivered with care.</p>
        <p>Explore our menu and discover a variety of dishes crafted by talented chefs from top-rated hotels and restaurants. Whether you're ordering for yourself or a group, MunchMate promises to elevate your dining experience with every bite.</p>
    </div>

    <div class="footer">
        <p>&copy; 2024 MunchMate. All rights reserved.</p>
    </div>

</body>
</html>