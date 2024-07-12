
package com.chainsys.munchmate.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.Cart;

public class CartMapper implements RowMapper<Cart> {
	
	
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {

		
		
		
		
		Cart cartItem = new Cart();

		int userId = rs.getInt(1);
		int foodid= rs.getInt(2);
		String foodname = rs.getString(3);
			
		int quantity = rs.getInt(4);
		int price = rs.getInt(5);
		String foodSession = rs.getString(6);
		cartItem.setUserId(userId);
		cartItem.setFoodId(foodid);
		cartItem.setFoodName(foodname);
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(price);
		cartItem.setFoodSession(foodSession);

		return cartItem;
	}

}
