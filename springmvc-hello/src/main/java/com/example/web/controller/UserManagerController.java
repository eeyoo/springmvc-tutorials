package com.example.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.web.dao.UserDao;
import com.example.web.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by feilin on 2017/7/20.
 */
@Controller
@RequestMapping("/user")
public class UserManagerController {
    private static final String BBASE = "/user";

    @Autowired
    UserDao userDao;

    @RequestMapping({"","/","/list"})
    public String index() {
        return BBASE + "/list.html";
    }

    @RequestMapping("/data")
    @ResponseBody
    public String data() {
        List<User> list = userDao.findAll();

        return JSONObject.toJSONString(list);
    }
}
