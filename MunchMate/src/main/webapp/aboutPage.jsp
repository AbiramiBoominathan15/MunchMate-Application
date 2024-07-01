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
    background-color: #ff511c;
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
    background-color: #ffeae0;
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
    background-color: white;
}
.footer p {
    font-size: 14px;
    color: #666;
}

</style>
</head>
<body>
    <div class="nav">
        <div class="logo">
            Munch<b>Mate</b>
        </div>
        <ul>
            <li><a href="HomePage.html">Home</a></li>
            <li><a class="active" href="#">About Us</a></li>
            <li><a href="Contactpage.html">Contact</a></li>
        </ul>
    </div>

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