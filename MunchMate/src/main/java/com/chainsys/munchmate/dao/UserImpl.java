package com.chainsys.munchmate.dao;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.munchmate.mapper.HotelMapper;
import com.chainsys.munchmate.mapper.UserId;
import com.chainsys.munchmate.mapper.UserMapper;
import com.chainsys.munchmate.model.Food;
import com.chainsys.munchmate.model.Hotel;
import com.chainsys.munchmate.model.User;
import com.chainsys.munchmate.mapper.FoodMapper;

import org.springframework.dao.IncorrectResultSizeDataAccessException;


@Repository
public class UserImpl implements UserDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	UserMapper mapper;
	@Override
	public void insertRegistration(User user) {
		String save = "insert into user (name,phone_number,password,city, mail_id)values(?,?,?,?,?)";
		Object[] params = { user.getName(), user.getPhoneNumber(), user.getPassword(), user.getCity(),
				user.getMailId() };
		int noOfRows = jdbcTemplate.update(save, params);
		System.out.println("in DAO -save");
	}
	public List<User> getAllUsers(){
	    String query = "SELECT userid, name, phone_number, city, mail_id FROM user WHERE status = 0";
        List<User> users = jdbcTemplate.query(query, new UserMapper());
        return users;
    }

	@Override
	public void hotelRegistration(Hotel hotel) {
		String save = "insert into hotel(name,location,image,phonenumber,email,password,status)values(?,?,?,?,?,?,?)";
		Object[] params = { hotel.getHotelName(), hotel.getHotelLocation(),hotel.getHotelImage(), hotel.getHotelPhoneNumber(),
				hotel.getHotelEmail(), hotel.getHotelPassword() ,hotel.getStatus()};
		int noOfRows = jdbcTemplate.update(save, params);
		System.out.println("in DAO -save");
	}
	@Override
	public boolean login(String mailId, String password) {
		String sql = "SELECT name FROM user WHERE mail_id = ? AND password = ?";
		Object[] params = { mailId, password };
		try {
			String name = jdbcTemplate.queryForObject(sql, params, String.class);
			return name != null;
		} catch (EmptyResultDataAccessException e) {
			return false;
		}
	}
	public void deleteUser(int userId) {
	    String deleteQuery = "UPDATE user SET status = 1 WHERE userid = ?";
	    jdbcTemplate.update(deleteQuery, userId);
	}
	public int getUserID(String email){
        String query = "Select userid from user where mail_id = ?";
        System.err.println("in the get userid --->" + email);
        try {
            return jdbcTemplate.queryForObject(query,new UserId(),email);
        }catch(NullPointerException | IncorrectResultSizeDataAccessException e) {
            return 0;
        }
    }   
	public List<Hotel> getAllHotels() {
		/*
		 * selct*;
		 */       
		String query = "SELECT name, location ,phonenumber ,email FROM hotel";
        List<Hotel> hotel = jdbcTemplate.query(query, new HotelMapper());
        return hotel;


}
    @Override
    public Hotel getHotelById(int hotelId) {
        String query = "SELECT * FROM hotel WHERE hotelid = ?";
        try {
            return jdbcTemplate.queryForObject(query, new Object[]{hotelId}, new HotelMapper());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
   @ Override
    public void updateHotel(Hotel hotel) {
        String updateQuery = "UPDATE hotel SET status = ? WHERE hotelid = ?";
        Object[] params = {hotel.getStatus(), hotel.getHotelId()};
        jdbcTemplate.update(updateQuery, params);
    }
   @Override
   public Hotel getHotelByEmail(String email) {
	    String query = "SELECT hotelid, name, location, image, phonenumber, email, password, status FROM hotel WHERE email = ?";

       try {
           return jdbcTemplate.queryForObject(query, new Object[]{email}, new HotelMapper());
       } catch (IncorrectResultSizeDataAccessException ex) {
           return null;
       }
   }
   


	@Override
	public void insertFood(Food food) {
		String save = "insert into food(hotelid,hotelname,image,name,price,quantity,catagories,mealtime)values(?,?,?,?,?,?,?,?)";
		Object[] params = {food.getHotelId(),food.getHotelName(),food.getFoodImage(),food.getFoodName(),food.getFoodPrice(),food.getFoodQuantity(),food.getFoodCategories(),food.getFoodSession()};
		int noOfRows = jdbcTemplate.update(save, params);
		System.out.println("in DAO -save");
	}
	public List<Food> getFoodsByHotelId(int hotelId) {
		System.out.println("hotelId - " +hotelId);
	    String query = "SELECT hotelid,hotelname ,image,name ,price,quantity,catagories,mealtime FROM food WHERE hotelid = ?";
	    try {
	        return jdbcTemplate.query(query, new FoodMapper(), hotelId);
	    } catch (EmptyResultDataAccessException ex) {
	        return Collections.emptyList(); 
	    }

}
    public List<Food> getAllFoods() {
        String query = "SELECT * FROM food";
        return jdbcTemplate.query(query, new FoodMapper());
    }

}