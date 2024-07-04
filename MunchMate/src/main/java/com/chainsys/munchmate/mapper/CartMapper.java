
package com.chainsys.munchmate.mapper;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.Cart;

public class CartMapper implements RowMapper<Cart> {
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {

		Cart cartItem = new Cart();

		int userId = rs.getInt(1);
		String foodname = rs.getString(2);
		Blob blob = rs.getBlob("image");
		if (blob != null) {
			int blobLength = (int) blob.length();
			byte[] blobAsBytes = blob.getBytes(1, blobLength);
			cartItem.setFoodImage(blobAsBytes);
		}

		int quantity = rs.getInt(3);
		int price = rs.getInt(4);
		String foodSession = rs.getString(5);
		cartItem.setUserId(userId);
		cartItem.setFoodName(foodname);
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(price);
		cartItem.setFoodSession(foodSession);

		return cartItem;
	}

}
