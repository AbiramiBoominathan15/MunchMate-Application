package com.chainsys.munchmate.mapper;

import java.sql.ResultSet;


import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.munchmate.model.User;



public class UserId implements RowMapper<Integer> {

	    @Override
	    public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {  	
	    
	    	
	    	User user = new User();
	        user.setUserId(rs.getInt("userid"));
	        return  user.getUserId();
	    
	    }

}
