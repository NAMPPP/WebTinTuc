package com.da.st5.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.da.st5.model.CategoryModel;


public class CategoryMapper implements RowMapper<CategoryModel> {

    public static final String BASE_SQL = //
            "Select * "//
                    + " from category ";
    public static final String BASE_SQL_GETID = //
            "Select * "//
                    + " from category where id=";
    

    @Override
    public CategoryModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        int id = rs.getInt("id");
        String name = rs.getString("name");
        String code = rs.getString("code");
        return new CategoryModel(id,name, code);
    }

}