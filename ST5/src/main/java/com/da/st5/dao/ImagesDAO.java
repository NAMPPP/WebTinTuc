package com.da.st5.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.da.st5.mapper.ImagesMapper;
import com.da.st5.model.ImagesModel;


@Repository
@Transactional
public class ImagesDAO extends JdbcDaoSupport{
	@Autowired
    public ImagesDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	
	public List<ImagesModel> listImgByNew(int id) {
        String sql = "SELECT * FROM news , images "
        		+ "WHERE news.id=images.newid and images.newid ="+id ;

        Object[] params = new Object[] {};
        ImagesMapper mapper = new ImagesMapper();

        List<ImagesModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }

}
