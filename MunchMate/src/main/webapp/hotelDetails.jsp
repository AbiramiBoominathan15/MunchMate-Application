<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.chainsys.munchmate.model.Hotel"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel List</title>
</head>
<body>
	<h2>Hotel List</h2>

	<table border="1">
		<thead>
			<tr>
				<th>HotelId</th>
				<th>Name</th>
				<th>Location</th>
				<th>Phone Number</th>

				<th>Email</th>
				<th>Status</th>
				
			</tr>
		</thead>
		<tbody>
			<%
			List<Hotel> hotels = (List<Hotel>) request.getAttribute("hotels");
			if (hotels != null && !hotels.isEmpty()) {
				for (Hotel hotel : hotels) {
			%>
			<tr>
				<td><%=hotel.getHotelId()%></td>
				<td><%=hotel.getHotelName()%></td>
				<td><%=hotel.getHotelLocation()%></td>
				<td><%=hotel.getHotelPhoneNumber()%></td>
				<td><%=hotel.getHotelEmail()%></td>
				                <td>
                    <form action="/updateApproval" method="post">
                        <input type="hidden" name="hotelId" value="<%= hotel.getHotelId() %>">
                        <select name="approved">
                            <option>Select</option>
                            <option value="no">no</option>
                            <option value="yes">yes</option>
                        </select>
                        <input type="submit" name="submit" value="Update" style="margin: 0 15px;">
                    </form>
                </td>
				
				
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="6">No hotels found</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>
 --%>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.munchmate.model.Hotel" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        select {
            padding: 5px;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        
        
    </style>
</head>
<body>
    <div class="container">
        <h2>Hotel Details</h2>

        <table>
            <thead>
                <tr>
                    <th>HotelId</th>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Hotel> hotels = (List<Hotel>) request.getAttribute("hotels");
                if (hotels != null && !hotels.isEmpty()) {
                    for (Hotel hotel : hotels) {
                %>
                <tr>
                    <td><%= hotel.getHotelId() %></td>
                    <td><%= hotel.getHotelName() %></td>
                    <td><%= hotel.getHotelLocation() %></td>
                    <td><%= hotel.getHotelPhoneNumber() %></td>
                    <td><%= hotel.getHotelEmail() %></td>
                    <td>
                        <form action="/updateApproval" method="post">
                            <input type="hidden" name="hotelId" value="<%= hotel.getHotelId() %>">
                            <select name="approved">
                                <option <%= hotel.getStatus().equalsIgnoreCase("no") ? "" : "selected" %> value="no">no</option>
                                <option <%= hotel.getStatus().equalsIgnoreCase("yes") ? "selected" : "" %> value="yes">yes</option>
                            </select>
                            <input type="submit" name="submit" value="Update">
                        </form>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="6">No hotels found</td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
 