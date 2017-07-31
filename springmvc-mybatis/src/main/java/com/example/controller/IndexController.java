package com.example.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.dao.DeptDao;
import com.example.model.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by feilin on 2017/7/31.
 */

@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    DeptDao deptDao;

    @RequestMapping("")
    @ResponseBody
    public String json() {
        Map map = new HashMap();
        map.put("name", "feilinwu");
        map.put("sex", "male");
        map.put("age", 33);
        return JSONObject.toJSONString(map);
    }

    @RequestMapping(value = "/dept", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String dept() {
        List<Map<String,Object>> list = deptDao.findAll();

        return JSONObject.toJSONString(list);
    }

    @RequestMapping(value = "/dept/{deptNo}", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String findByNo(@PathVariable int deptNo) {
        Dept dept = deptDao.findById(deptNo);
        return JSONObject.toJSONString(dept);
    }

    @RequestMapping(value = "/dept/add", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String add() {
        Dept dept = new Dept();
        dept.setdName("中宣部");
        dept.setLoc("中南海");

        Map map = new HashMap();
        try {
            deptDao.add(dept);
            map.put("code", 1);
            map.put("msg", "插入数据成功");
        } catch (Exception e) {
            e.printStackTrace();
            map.put("code", -1);
            map.put("msg", "插入数据失败");
        }

        return JSONObject.toJSONString(map);
    }

    @RequestMapping(value = "/dept/delete/{deptNo}", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String deleteByNo(@PathVariable int deptNo) {
        deptDao.deleteById(deptNo);

        return dept();
    }
}