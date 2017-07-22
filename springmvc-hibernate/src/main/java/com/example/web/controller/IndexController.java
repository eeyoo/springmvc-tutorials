package com.example.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.web.model.Dept;
import com.example.web.service.DeptService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by feilin on 2017/7/22.
 */
@Controller
@RequestMapping("/")
public class IndexController {

    private final static String BASE = "/";

    @Resource(name = "deptService")
    DeptService deptService;

    @RequestMapping({"","/index"})
    public String index(Model model) {
        Map web = new HashMap();
        web.put("title", "首页");
        web.put("head", "你有木有梦想");
        web.put("content", "有梦想就要去实现");
        model.addAttribute("web",web);
        return "/index.html";
    }

    @RequestMapping("/json")
    @ResponseBody
    public String data() {
        List<Dept> list = deptService.findAll();

        return JSONObject.toJSONString(list);
    }

    @RequestMapping("/json/{id}")
    @ResponseBody
    public String select(@PathVariable long id) {
        Dept dept = deptService.findById(id);
        return JSONObject.toJSONString(dept);
    }
}
