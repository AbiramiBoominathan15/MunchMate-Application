package com.chainsys.munchmate.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.munchmate.model.Hotel;
import com.chainsys.munchmate.model.User;
import com.chainsys.munchmate.model.mapper.UserMapper;

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

	@Override
	public void hotelRegistration(Hotel hotel) {
		String save = "insert into hotel(name,location,image,phone_number,email,password,status)values(?,?,?,?,?,?,?,?)";
		Object[] params = { hotel.getHotelName(), hotel.getHotelLocation(), hotel.getHotelPhoneNumber(),
				hotel.getHotelEmail(), hotel.getHotelPassword() };
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

}
