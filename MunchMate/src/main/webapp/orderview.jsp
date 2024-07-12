 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="java.util.List" %>
 <%@ page import="com.chainsys.munchmate.model.Cart" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order View</title>
    <style>
        body, h1, table {
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #5585b5;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
/*         tr:nth-child(even) {
            background-color: #f9f9f9;
        }
 */        
/*         tr:hover {
            background-color: #f1f1f1;
        }
 */        
        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
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
            width: 96px; 
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
        .footer {
        background-color: #9fd3c7;
        padding: 20px;
        text-align: center;
        color: #333; 
    }
    .order {
	border: none;
	background-color: #9fd3c7;
	font-size: 17px;
	line-height: 0;
}

.purchase {
	border: none;
	background-color: #9fd3c7;
	font-size: 17px;
}

button.order:hover {
	color: #ff511c;
}

input.purchase:hover {
	color: #ff511c;
}
    
        
    </style>
</head>
<body>
    <section class="menu">
        <div class="nav">
            <div class="logo">
                <img src="Picture/logomuchmate1.png" alt="Logo">
                <h1>Munch<b style="color:#ff511c">Mate</b></h1>
            </div>
            <ul>
               <li><a class="home" href="hotelAdminDashboard.jsp">Home</a></li> 
               <li>
<form action="hotelmenu.jsp" method="post">
					<button  class="order"type="submit">Orders</button>
					</a><br>
					<br>
				</form>
				</li>
			
			
						<li><a href="/foodList">Menu</a></li>
										<form action="/orderView" method="post">
					<input type="hidden" id="hotelid" name="hotelid"
						value="<%=session.getAttribute("hotelId")%>" required>
					<li><input type="submit" class="purchase" href=""
						value="Purchase"></li>
				</form>
						
               
                <li><a href="aboutPage.jsp">AboutUs</a></li>
                
                <li><a href="contactPage.jsp">Contact</a></li>
            </ul>
          <a class="signin" href="loginPage.jsp">Log Out</a>
   </div>
</section>
        

    <table>
        <thead>
            <tr>
            
            
               <th>Food Name</th>
                <th>Quantity</th>
                <th>Total Price</th>
                <th>Meal Time</th>
                <th>Date</th>
                <th>Delivered status</th>
                
                <th>Payment Status</th>
                <th>Delivered Approved
           </tr>
        </thead>
        <tbody>
            <% 

                List<Cart> carts = (List<Cart>) request.getAttribute("cartItems");
                for (Cart cartItem : carts) {
            %>
            <tr>
                 <td><%= cartItem.getFoodName() %></td>
                <td><%= cartItem.getQuantity() %></td>
                <td><%= cartItem.getTotalPrice() %></td>
                <td><%=cartItem.getFoodSession() %></td>
                <td><%=cartItem.getCurrentdate() %></td>
               <td><%=cartItem.getDeliveryStatus() %></td>
                <td><%=cartItem.getPaymentStatus() %></td>
                
                                                                            <input type="hidden" name="cartItemId" value="<%= cartItem.getCartItemId() %>">
                
                
                   <td>  
                   <form action="/updateDeliveryStatus" method="post">
                    <input type="hidden" id="hotelid" name="hotelid"
						value="<%=session.getAttribute("hotelId")%>" required>
						
						<input type="hidden"
						id="foodName" name="foodName" value="<%= cartItem.getFoodName() %>" required>
                        <%try{ %>
                        <select name="delivered">
                            <option value="delivered" name="delivered">Delivered</option>
                           <option <%=cartItem.getDeliveryStatus().equalsIgnoreCase("delivered") ?"":"selected"%>value="delivered" name="delivered">Delivered</option>
                                                       <option <%=cartItem.getDeliveryStatus().equalsIgnoreCase("on_process") ?"":"selected"%>value="on_process" name="delivered">on_process</option>
                                                       <option <%=cartItem.getDeliveryStatus().equalsIgnoreCase("rejected") ?"":"selected"%>value="rejected" name="delivered">Rejected</option>
                            
                        </select>
                        <%}catch(Exception e ){ %>
                        	<select name="delivered">
                            <option value="delivered" name="delivered">Delivered</option>
                             <option value="on_process" name="delivered">on_process</option>
                            
                        </select>
                        <%} %>
                        <button type="submit">Update</button>
                    </form></td>
              
            </tr>
            <% } %>
        </tbody>
                <tfoot>
            <tr>
                <td colspan="2"><b>Total Amount:</b></td>
                <td colspan="3"><b>${totalAmount}</b></td>
            </tr>
        </tfoot>
        
    </table>
        <section class="footer">
        <p>&copy; 2024 MunchMate. All rights reserved.</p>
    </section>
    
</body>
</html>
 