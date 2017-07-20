package com.example.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.web.dao.UserDao;
import com.example.web.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by feilin on 2017/7/20.
 */
@Controller
@RequestMapping("/user")
public class UserManagerController {
    private static final String BASE = "/user";

    @Autowired
    UserDao userDao;

    @RequestMapping({"","/","/list"})
    public String index() {
        return BASE + "/list.html";
    }

    @RequestMapping("/data")
    @ResponseBody
    public String data() {
        List<User> list = userDao.findAll();

        return JSONObject.toJSONString(list);
    }

    @RequestMapping("/add")
    public String add() {
        return BASE + "/edit.html";
    }

    @RequestMapping("/edit/{id}")
    public String edit(@RequestParam("id") long id) {
        return BASE + "/edit.html";
    }

    @RequestMapping("/save")
    @ResponseBody
    public String save() {
        Map map = new HashMap();
        User user = new User();
        try {
            userDao.save(user);
            map.put("status", 200);
            map.put("message", "操作成功");
        } catch (DataAccessException e) {
            e.printStackTrace();
            map.put("status", 300);
            map.put("message", "操作失败");
        }

        return JSONObject.toJSONString(map);
    }

    @RequestMapping("/delete/{id}")
    @ResponseBody
    public String delete(@RequestParam("id") long id) {
        Map map = new HashMap();
        try {
            userDao.deleteById(id);
            map.put("status", 200);
            map.put("message", "操作成功");
        } catch (DataAccessException e) {
            e.printStackTrace();
            map.put("status", 300);
            map.put("message", "操作失败");
        }

        return JSONObject.toJSONString(map);
    }
}
