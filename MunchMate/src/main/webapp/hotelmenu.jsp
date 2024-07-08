<!DOCTYPE html>
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
