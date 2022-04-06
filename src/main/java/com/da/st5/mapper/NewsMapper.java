package com.da.st5.mapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.da.st5.model.NewsModel;

public class NewsMapper implements RowMapper<NewsModel> {

	public static final String BASE_SQL = //
			"Select * "//
					+ " from news ";
	public static final String BASE_SQL_GB = //
			"Select * "//
					+ " from news GROUP BY createddate DESC";
	
	@Override
	public NewsModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String title = rs.getString("title");
		String thumbnail = rs.getString("thumbnail");
		String shortDescription = rs.getString("shortDescription");
		String content = rs.getString("content");
		int categoryid = rs.getInt("categoryid");
		String createdDate = rs.getString("createdDate");
		String createdBy = rs.getString("createdBy");
		
		return new NewsModel(id, title, thumbnail,shortDescription,
				content,categoryid,createdDate,createdBy);
	}
	

}
