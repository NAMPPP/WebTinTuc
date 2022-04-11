package com.da.st5.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.da.st5.mapper.NewsMapper;
import com.da.st5.model.NewsModel;
import com.da.st5.model.UserModel;

@Repository
@Transactional
public class NewsDAO extends JdbcDaoSupport{
	
	@Autowired
    public NewsDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }

    public List<NewsModel> listNews() {
        String sql = NewsMapper.BASE_SQL ;

        Object[] params = new Object[] {};
        NewsMapper mapper = new NewsMapper();

        List<NewsModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    public List<NewsModel> listNewsByCategory(int id) {
        String sql = "SELECT * FROM news , category "
        		+ "WHERE news.categoryid=category.id and news.categoryid ="+id ;

        Object[] params = new Object[] {};
        NewsMapper mapper = new NewsMapper();

        List<NewsModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    public List<NewsModel> detailNews(int id) {
        String sql = "SELECT * FROM news WHERE id ="+id;
        Object[] params = new Object[] {};
        NewsMapper mapper = new NewsMapper();

        List<NewsModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    public List<NewsModel> listNewsHot() {
        String sql = NewsMapper.BASE_SQL_GB ;

        Object[] params = new Object[] {};
        NewsMapper mapper = new NewsMapper();

        List<NewsModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public void update(int id) {
        String sql = NewsMapper.BASE_SQL_GB ;

        Object[] params = new Object[] {};
        NewsMapper mapper = new NewsMapper();

        NewsModel list = (NewsModel) this.getJdbcTemplate().query(sql, params, mapper);
    }
    public int addNews(NewsModel news) {
    	
        String sql = "INSERT INTO news(id,title,thumbnail,shortdescription,content,categoryid,createddate,createdby) "
        		+ "VALUES ("+news.getId()+",'"+news.getTitle()+"','"+news.getThumbnail()+"','"+news.getShortDescription()+"',"
        				+ "'"+news.getContent()+"',"+news.getCategoryid()+",'"+news.getCreatedDate()+"','"+news.getCreatedBy()+"')";
        int insert = this.getJdbcTemplate().update(sql);
        return insert;
    }


    
    
    
    
    

}
