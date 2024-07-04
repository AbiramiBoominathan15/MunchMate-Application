package com.chainsys.munchmate.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.User;

public class UserMapper implements RowMapper<User>{
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		
			
			
			
			User user = new User();
			int userId = rs.getInt(1);
			String name = rs.getString(2);
	String phoneNumber=rs.getString(3);
			String city=rs.getString(4);
			String mailId=rs.getString(5);
			user.setUserId(userId);
			user.setName(name);
			user.setPhoneNumber(phoneNumber);
			user.setCity(city);
			user.setMailId(mailId);
			return user;
		}


}
