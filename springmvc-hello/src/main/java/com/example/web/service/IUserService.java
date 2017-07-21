package com.example.web.service;

import com.example.web.model.User;

/**
 * Created by feilin on 2017/7/21.
 */
public interface IUserService {

    void changeUserStatus(int status);

    User findBySerialId(long id);
}
