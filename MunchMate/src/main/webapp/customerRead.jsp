<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of Users</title>
</head>
<body>
    <h2>List of Users</h2>
    
    <table border="1">
        <tr>
            <th>User ID</th>
            <th>Name</th>
            <th>Phone Number</th>
            <th>City</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        
        <% List<User> users = (List<User>) request.getAttribute("users");
           if (users != null && !users.isEmpty()) {
               for (User user : users) { %>
                <tr>
                                    <td><%= user.getUserId() %></td>
                                    <td><%=user.getName() %></td>
                                      <td><%=user.getPhoneNumber() %></td>
                                      <td><%=user.getCity() %></td>
                                      <td><%=user.getMailId() %></td>
                                      
                
                    <td>
                        <form action="/deleteUser" method="post">
                                                    <input type="hidden" name="userId" value="<%= user.getUserId() %>">
                        
                            <input type="submit" value="Delete">
                        </form>
                    </td>
                </tr>
        <%    } 
           } 
           else {
               out.println("<tr><td colspan='6'>No users found</td></tr>");
       
       
           }
        %>
    </table>
    
    
</body>
</html>
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> User Details</title>
    <style>
        .container {
            width: 101%;
            margin: 0 auto;
            font-family: Arial, sans-serif;
        }

        .user-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .user-table th, .user-table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #dddddd;
        }

        .user-table th {
	background-color: #5585b5; 
        }

        .user-table tr:nth-child(even) {
            background-color: #dcdcdc; a
        }

        .user-table tr:nth-child(odd) {
            background-color: #f0f0f0; 
        }

        .user-table tr:hover {
            background-color: #e0e0e0; 
        }

        .user-table td form {
            display: inline-block;
        }




        .user-table td form input[type="submit"] {
            padding: 5px 10px;
            background-color: #f44336;
      
            color: white;
            border: none;
            cursor: pointer;
        }

        .user-table td form input[type="submit"]:hover {
/*             background-color: #d32f2f;
 */                        background-color: #385170;
            
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
        .footer {
        background-color: #9fd3c7;
        padding: 20px;
        text-align: center;
        color: #333; 
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


    <div class="container">
        <h2><center>User Details</center></h2>
        
        <table class="user-table">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Phone Number</th>
                    <th>City</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% List<User> users = (List<User>) request.getAttribute("users");
                   if (users != null && !users.isEmpty()) {
                       for (User user : users) { %>
                        <tr>
                            <td><%= user.getUserId() %></td>
                            <td><%= user.getName() %></td>
                            <td><%= user.getPhoneNumber() %></td>
                            <td><%= user.getCity() %></td>
                            <td><%= user.getMailId() %></td>
                            <td>
                                <form action="/deleteUser" method="post">
                                    <input type="hidden" name="userId" value="<%= user.getUserId() %>">
                                    <input type="submit" style="background-color:#5585b5" value="Delete">
                                </form>
                            </td>
                        </tr>
                <%    } 
                   } 
                   else {
                       out.println("<tr><td colspan='6'>No users found</td></tr>");
                   }
                %>
            </tbody>
        </table>
    </div>
    
</body>
</html>
