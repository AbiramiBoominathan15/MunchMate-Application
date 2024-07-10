/*
 * package com.chainsys.munchmate.mapper;
 * 
 * import java.sql.Blob; import java.sql.ResultSet; import
 * java.sql.SQLException;
 * 
 * import org.springframework.jdbc.core.RowMapper;
 * 
 * import com.chainsys.munchmate.model.Food;
 * 
 * 
 * 
 * public class SearchFoodMapper implements RowMapper<Food> { public Food
 * mapRow(ResultSet rs, int rowNum) throws SQLException { Food food = new
 * Food();
 * 
 * 
 * 
 * Blob blob = rs.getBlob("image"); if (blob != null) { int blobLength = (int)
 * blob.length(); byte[] blobAsBytes = blob.getBytes(1, blobLength);
 * food.setFoodImage(blobAsBytes); } food.setFoodName(rs.getString("name"));
 * food.setFoodPrice(rs.getInt("price"));
 * 
 * 
 * return food; } }
 */
package com.chainsys.munchmate.mapper;

import java.sql.Blob;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.Food;

public class SearchFoodMapper implements RowMapper<Food> {
    public Food mapRow(ResultSet rs, int rowNum) throws SQLException {
        Food food = new Food();
        System.err.println("------->1");
        Blob blob = rs.getBlob("image");
        if (blob != null) {
            int blobLength = (int) blob.length();
            byte[] blobAsBytes = blob.getBytes(1, blobLength);
            food.setFoodImage(blobAsBytes);
    
        
        
        }
        food.setFoodName(rs.getString("name"));
        food.setFoodPrice(rs.getInt("price"));
        System.err.println("------->2");
        return food;
    }
}
