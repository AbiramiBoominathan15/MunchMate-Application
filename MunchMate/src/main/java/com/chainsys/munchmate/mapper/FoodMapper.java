package com.chainsys.munchmate.mapper;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.Food;



public class FoodMapper implements RowMapper<Food> {
	public Food mapRow(ResultSet rs, int rowNum) throws SQLException {
        Food food = new Food();
        food.setFoodId(rs.getInt("foodid"));
        food.setHotelId(rs.getInt("hotelid"));
       
        
        food.setHotelName(rs.getString("hotelname"));
        food.setFoodName(rs.getString("name"));
        food.setFoodPrice(rs.getInt("price"));
        food.setFoodQuantity(rs.getInt("quantity"));
        food.setFoodCategories(rs.getString("catagories"));
        food.setFoodSession(rs.getString("mealtime"));

        Blob blob = rs.getBlob("image");
        if (blob != null) {
            int blobLength = (int) blob.length();
            byte[] blobAsBytes = blob.getBytes(1, blobLength);
            food.setFoodImage(blobAsBytes);
        }

        return food;
    }

		}
