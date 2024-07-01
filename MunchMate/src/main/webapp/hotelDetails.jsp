<%@ page language="java" contentType="text/html; charset=UTF-8"
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
