<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Food Payment</title>
<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #ff7e5f, #feb47b);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}



.payment-container {
   
   
    background-color: #fff;
    width: 400px;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.payment-container h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 8px;
    color: #555;
}

.form-group input[type="text"],
.form-group input[type="number"],
.form-group select {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
}

.form-group input[type="text"]:focus,
.form-group input[type="number"]:focus,
.form-group select:focus {
    border-color: #ba4357;
    outline: none;
}

.btn-submit {
    background-color: #ba4357;
    color: #fff;
    padding: 12px 24px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    display: block;
    width: 100%;
    max-width: 200px;
    margin: 24px auto 0;
    text-align: center;
    font-size: 18px;
    transition: background-color 0.3s;
}

.btn-submit:hover {
    background-color: #93182c;
}
</style>
</head>
<body>
<div class="payment-container">
    <h2>Payment</h2>
    <form action="" method="post">
        <div class="form-group">
            <label for="cardNumber">Card Number:</label>
            <input type="text" id="cardNumber" name="cardNumber" pattern="\d{16}" required>
        </div>
        <div class="form-group">
            <label for="expiryDate">Expiry Date:</label>
            <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YYYY" pattern="(0[1-9]|1[0-2])\/\d{4}" required>
        </div>
        <div class="form-group">
            <label for="cvv">CVV:</label>
            <input type="text" id="cvv" name="cvv" pattern="\d{3}" required>
        </div>
<div class="form-group">
    <label for="amount">Amount:</label>
    <input type="text" id="amount" name="amount" value="<%= request.getParameter("price") %>"  required>
</div>
    </form>
           <a href="paymentSucess.jsp"> <button type="submit" class="btn-submit">Pay Now</button></a>
    
</div>

</body>
</html>
