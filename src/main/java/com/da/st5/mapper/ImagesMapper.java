package com.da.st5.mapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.da.st5.model.ImagesModel;

public class ImagesMapper implements RowMapper<ImagesModel> {

	public static final String BASE_SQL = //
			"Select * "//
					+ " from images ";

	
	@Override
	public ImagesModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		int newid = rs.getInt("newid");
		String img1 = rs.getString("img1");
		String img2 = rs.getString("img2");
		
		return new ImagesModel(id, newid, img1,img2);
	}

}
