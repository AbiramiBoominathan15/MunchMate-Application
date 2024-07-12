
package com.chainsys.munchmate.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.Cart;

public class PurchaseMapper implements RowMapper<Cart> {
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {

		Cart cartItem = new Cart();

		int userId = rs.getInt(1);
	int hotelid=rs.getInt(2);
		
		
	int foodid= rs.getInt(3);
	String foodname = rs.getString(4);
	
	
		int quantity = rs.getInt(5);
		
		
		

	int price = rs.getInt(6);
		String foodSession = rs.getString(7);
		LocalDate currentdate= LocalDate.parse(rs.getString(8)) ;
		String paymentStatus=rs.getString(9);
		String deliveryStatus= rs.getString(10);
		
	cartItem.setUserId(userId);
		cartItem.setHotelId(hotelid);
		cartItem.setFoodId(foodid);
		cartItem.setFoodName(foodname);
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(price);
		cartItem.setFoodSession(foodSession);
		cartItem.setCurrentdate(currentdate);
		cartItem.setPaymentStatus(paymentStatus);
		cartItem.setDeliveryStatus(deliveryStatus);
		System.out.println(		deliveryStatus);

		


		return cartItem;
}

}


