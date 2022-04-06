package com.da.st5.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.da.st5.model.UserModel;


public class UserMapper implements RowMapper<UserModel>{

	public static final String BASE_SQL = //
			"Select * "//
					+ " from user ";

	
	@Override
	public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String userName = rs.getString("userName");
		String password = rs.getString("password");
		String fullName = rs.getString("fullName");
		int status = rs.getInt("status");
		int roleid = rs.getInt("roleid");
		
		return new UserModel(id, userName, password,fullName,
				status,roleid);
	}
	

}
