package com.da.st5.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.da.st5.mapper.UserMapper;
import com.da.st5.model.UserModel;



@Repository
@Transactional
public class UserDAO extends JdbcDaoSupport{
	
	@Autowired
    public UserDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }

    public UserModel user(UserModel user) {
        String sql = "Select * from user WHERE username='"+user.getUserName()+"' and password='"+user.getPassword()+"'" ;
        Object[] params = new Object[] {};
        UserMapper mapper = new UserMapper();
        List<UserModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list.get(0);
    }
    public int adduser(UserModel user) {
    	
        String sql = "INSERT INTO user(id, username,password,fullname,status,roleid) "
        		+ "VALUES ('"+user.getId()+"','"+user.getUserName()+"','"+user.getPassword()+"','"+user.getFullName()+"',"
        				+ "'"+user.getStatus()+"','"+user.getRoleid()+"')";
        int insert = this.getJdbcTemplate().update(sql);
        return insert;
    }
    public List<UserModel> listUser(){
        String sql = "Select * from user" ;
        Object[] params = new Object[] {};
        UserMapper mapper = new UserMapper();
        List<UserModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }

}
