package com.example.web.controller;

import com.alibaba.fastjson.JSON;
import com.example.core.domain.Order;
import com.example.core.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by feilin on 2017/6/20.
 */
@Controller
public class HelloController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public ModelAndView hello() {
        ModelAndView model = new ModelAndView();
        model.setViewName("hello");
        model.addObject("message", "世界你好");
        return model;
    }

    @RequestMapping(value = "/json", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String data() {
//        List list = new ArrayList();
//        Map map = new HashMap();
//        list.add(map);
//
//        map.put("id",1);
//        map.put("name", "吴飞林");
//        map.put("sex", "男");
//        map.put("age", 33);
//        map.put("phone", "18258729246");
        List<Order> list = orderService.findAllOrder();

        return JSON.toJSONString(list);
    }
}
