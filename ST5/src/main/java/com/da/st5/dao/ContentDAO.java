package com.da.st5.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.da.st5.mapper.ContentMapper;
import com.da.st5.model.ContentModel;

@Repository
@Transactional
public class ContentDAO extends JdbcDaoSupport{
	@Autowired
    public ContentDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	
	public List<ContentModel> listContentByNew(int id) {
        String sql = "SELECT * FROM news , content "
        		+ "WHERE news.id=content.newid and content.newid ="+id ;

        Object[] params = new Object[] {};
        ContentMapper mapper = new ContentMapper();

        List<ContentModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
}
