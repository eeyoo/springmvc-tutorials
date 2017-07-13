package com.example.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by feilin on 2017/6/20.
 *
 */

@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping({"","index"})
    public String index(ModelMap model) {

        model.addAttribute("message", "我的未来不是梦12！");
        return "/index.html";
    }
}
