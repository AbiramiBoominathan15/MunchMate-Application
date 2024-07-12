<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
        crossorigin="anonymous">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: auto;
            margin-top: 50px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn-update {
            background-color: #AA336A;
            border-color: #AA336A;
            color: #ffffff;
            width: 100%;
            transition: background-color 0.3s ease, border-color 0.3s ease, transform 0.3s ease;
        }
        .btn-update:hover {
            background-color: #ff69b4;
            border-color: #ff69b4;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Update Profile</h2>
        <form action="/updateProfile" method="post">
            <input type="hidden" name="userId" value="<%=userId%>"> 
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control" value="<%=user.getName()%>" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="text" id="phoneNumber" name="phonenumber" class="form-control" value="<%=user.getPhoneNumber()%>" required>
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" id="city" name="city" class="form-control" value="<%=user.getCity()%>" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" value="<%=user.getMailId()%>" required>
            </div>
            <button type="submit" class="btn btn-primary btn-update">Update</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"
            integrity="sha384-A3jd65LsY3YCmY9kzQTPUY6PlKGdL5OIo9cTojIyS8JsTgR/aiX8V7v4Za5sgS8"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+O65B1vqzV7mFM2l4/GtfuhB8Uyo9LIJkRb"
            crossorigin="anonymous"></script>
</body>
</html>
 