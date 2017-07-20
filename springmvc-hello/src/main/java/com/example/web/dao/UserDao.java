package com.example.web.dao;

import com.example.web.model.User;

import java.util.List;

/**
 * Created by feilin on 2017/7/20.
 */
public interface UserDao {

    List<User> findAll();
}
