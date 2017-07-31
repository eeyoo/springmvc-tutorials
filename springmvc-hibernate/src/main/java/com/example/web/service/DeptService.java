package com.example.web.service;

import com.example.web.model.Dept;

import java.util.List;

/**
 * Created by feilin on 2017/7/22.
 */
public interface DeptService {

    List<Dept> findAll();

    Dept findById(long id);

    Dept findByName(String dname);
}
