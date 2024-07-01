package com.chainsys.munchmate.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.munchmate.model.Hotel;
import com.chainsys.munchmate.model.User;

@Repository

public interface UserDAO {
	public void insertRegistration(User user);
	public void hotelRegistration(Hotel hotel);
	 public List<User> getAllUsers();
public boolean login(String mailId, String password);
public void deleteUser(int userId);
public int getUserID(String email);
public List<Hotel> getAllHotels();
public Hotel getHotelById(int hotelId);
public void updateHotel(Hotel hotel);
public Hotel getHotelByEmail(String email);

}
