package com.example.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.web.dao.DeptDao;
import com.example.web.model.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by feilin on 2017/7/24.
 */
@Controller
@RequestMapping("/dept")
public class DeptController {

    @Autowired
    DeptDao deptDao;

    @RequestMapping({"","/"})
    @ResponseBody
    public String index() {
        Dept dept = new Dept();
        //dept.setDeptno(10)
        dept.setDname("研发部");
        dept.setLoc("北京");

        deptDao.add(dept);
        return "";
    }

    @RequestMapping(value = "/json",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String json() {
        List<Map<String,Object>> list = deptDao.findAll();
        return JSONObject.toJSONString(list);
    }
}
