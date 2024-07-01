package com.chainsys.munchmate.dao;

import org.springframework.stereotype.Repository;

import com.chainsys.munchmate.model.Hotel;
import com.chainsys.munchmate.model.User;

@Repository

public interface UserDAO {
	public void insertRegistration(User user);
	public void hotelRegistration(Hotel hotel);

public boolean login(String mailId, String password);
}
