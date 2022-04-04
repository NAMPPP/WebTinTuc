package com.da.st5.mapper;

import java.security.Timestamp;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.da.st5.model.ContentModel;

public class ContentMapper implements RowMapper<ContentModel> {

	public static final String BASE_SQL = //
			"Select * "//
					+ " from content ";

	
	@Override
	public ContentModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		int newid = rs.getInt("newid");
		String content1 = rs.getString("content1");
		String content2 = rs.getString("content2");
		String content3 = rs.getString("content3");
		
		return new ContentModel(id, newid, content1,content2,content3);
	}
}
