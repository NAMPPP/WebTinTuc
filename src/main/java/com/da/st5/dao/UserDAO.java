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

    public UserModel user(String username,String pw) {
        String sql = UserMapper.BASE_SQL+"WHERE username="+username+" and password="+pw ;

        Object[] params = new Object[] {};
        UserMapper mapper = new UserMapper();

        List<UserModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list.get(0);
    }

}
