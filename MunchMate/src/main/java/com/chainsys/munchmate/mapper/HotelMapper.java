package com.chainsys.munchmate.mapper;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.Hotel;



public class HotelMapper implements RowMapper<Hotel> {

	
	public Hotel mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		
		
		Hotel hotel = new Hotel();

		int hotelId = rs.getInt(1);
		String hotelName = rs.getString(2);
		String hotelLocation = rs.getString(3);

		
		
		
		String hotelPhoneNumber = rs.getString(5);
		String hotelEmail = rs.getString(6);

		String hotelPassword = rs.getString(7);
		String status = rs.getString(8);
		hotel.setHotelId(hotelId);
		hotel.setHotelName(hotelName);
		hotel.setHotelLocation(hotelLocation);

		Blob blob = rs.getBlob("image");
		if (blob != null) {
			int blobLength = (int) blob.length();
			byte[] blobAsBytes = blob.getBytes(1, blobLength);
			hotel.setHotelImage(blobAsBytes);
		}

		hotel.setHotelPhoneNumber(hotelPhoneNumber);
		hotel.setHotelEmail(hotelEmail);
		hotel.setHotelPassword(hotelPassword);
		hotel.setStatus(status);

		return hotel;
	}

}
