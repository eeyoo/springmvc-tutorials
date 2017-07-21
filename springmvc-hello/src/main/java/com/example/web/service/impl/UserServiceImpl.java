package com.example.web.service.impl;

import com.example.web.dao.UserDao;
import com.example.web.model.User;
import com.example.web.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by feilin on 2017/7/21.
 */
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    UserDao userDao;

    public void changeUserStatus(int status) {

    }

    public User findBySerialId(long id) {
        return userDao.findById(id);
    }
}
