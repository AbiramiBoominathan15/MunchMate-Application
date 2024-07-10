
package com.chainsys.munchmate.mapper;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.Cart;

public class PurchaseMapper implements RowMapper<Cart> {
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {

		Cart cartItem = new Cart();

		int userId = rs.getInt(1);
		int hotelid=rs.getInt(2);
		
		
		int foodid= rs.getInt(3);
		String foodname = rs.getString(4);
		/*
		 * Blob blob = rs.getBlob("image"); if (blob != null) { int blobLength = (int)
		 * blob.length(); byte[] blobAsBytes = blob.getBytes(1, blobLength);
		 * cartItem.setFoodImage(blobAsBytes); }
		 */
	
		
		int quantity = rs.getInt(5);
		
		
		int price = rs.getInt(6);
		String foodSession = rs.getString(7);
		cartItem.setUserId(userId);
		cartItem.setHotelId(hotelid);
		cartItem.setFoodId(foodid);
		cartItem.setFoodName(foodname);
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(price);
		cartItem.setFoodSession(foodSession);

		return cartItem;
	}

}
