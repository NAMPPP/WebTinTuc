package com.da.st5.dao;

import java.util.List;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.da.st5.mapper.CategoryMapper;
import com.da.st5.model.CategoryModel;



@Repository
@Transactional
public class CategoryDAO extends JdbcDaoSupport{
	
	@Autowired
    public CategoryDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }

    public List<CategoryModel> listCategory() {
        String sql = CategoryMapper.BASE_SQL;

        Object[] params = new Object[] {};
        CategoryMapper mapper = new CategoryMapper();

        List<CategoryModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    public List<CategoryModel> getcategoryId(int id) {
        String sql = CategoryMapper.BASE_SQL_GETID+id;

        Object[] params = new Object[] {};
        CategoryMapper mapper = new CategoryMapper();

        List<CategoryModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }


}
