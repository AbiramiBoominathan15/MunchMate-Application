<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Success</title>
    <style>
body {
            font-family: Arial, sans-serif;
            background-image: url('https://image.slidesdocs.com/responsive-images/background/food-gourmet-creative-border-powerpoint-background_9278802e02__960_540.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            margin: 0;
        }
        .success-container {
            background-color: #fff;
            width: 400px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        p {
            color: #555;
            margin-bottom: 20px;
        }

        .btn-back {
            background-color: #ba4357;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
      
      
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        .btn-back:hover {
            background-color: #93182c;
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h2>Payment Successful</h2>
        <p>Your payment has been successfully processed.</p>
        <p>Thank you for your order!</p>
        <a href="HomePage.html" class="btn-back">Back to Home</a>
    </div>
</body>
</html>

