<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
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





body {
    font-family: Arial, sans-serif;
    background-color: #5585b5;
    margin: 0;
   
    padding: 0;
}












.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.contact {
    padding: 40px 0;
}

.contact h2 {
    text-align: center;
    color: #333;
    margin-bottom: 30px;
}

.contact-info {
    background-color: #9fd3c7;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin-bottom: 30px;
}

.contact-info p {
    margin-bottom: 10px;
    font-size: 16px;
    color: #666;
}

.contact-form {
    background-color: #9fd3c7;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
}

.contact-form label {
    font-weight: bold;
    display: block;
    margin-bottom: 10px;
}

.contact-form input,
.contact-form textarea {
    width: 100%;
    color:#9fd3c7;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.contact-form textarea {
    resize: vertical;
}

.contact-form button {
    background-color: #ff511c;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

.contact-form button:hover {
    background-color: #e03e0c;
}


</style>
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

    <section class="contact">
        <div class="container">
            <h2>Contact Us</h2>
            <div class="contact-info">
                <p><strong>Address:</strong> 123 HungerBox Street, Cityville, Country</p>
                <p><strong>Phone:</strong> +123 456 7890</p>
                <p><strong>Email:</strong> info@hungerbox.com</p>
            </div>
      
      
            <form action="#" method="post" class="contact-form">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
                
                <button type="submit">Send Message</button>
            </form>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 MunchMate. All rights reserved.</p>
        </div>
    </footer>

</body>
</html>