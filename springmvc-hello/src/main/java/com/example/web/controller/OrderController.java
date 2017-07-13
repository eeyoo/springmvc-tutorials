package com.example.web.controller;

import com.alibaba.fastjson.JSON;
import com.example.core.domain.Order;
import com.example.core.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by feilin on 2017/6/21.
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/order")
    public String index() {
        return "/order.html";
    }

    @RequestMapping(value = "/order/data", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String data() {
        List<Order> list = orderService.findAllOrder();
        return JSON.toJSONString(list);
    }

    /**
     * 新增/编辑数据展示页面
     * @param id
     * @return
     */
    @RequestMapping("/order/form")
    public String form(@RequestParam("id") int id, Model model) {
        Order order = new Order();
        if (id != 0) {
            order = orderService.findById(id);
        }
        model.addAttribute("order", order);
        return "form";
    }

    @RequestMapping(value = "/order/save", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
    @ResponseBody
    public String save(@RequestParam Map<String,String> param) {
        Map map = new HashMap();
        map.put("code",1);
        return JSON.toJSONString(map);
    }

    @RequestMapping(value = "/order/delete", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delete(@RequestParam("id") int id) {
        orderService.deleteById(id);
        Map map = new HashMap();
        map.put("code",1);
        return JSON.toJSONString(map);
    }
}
