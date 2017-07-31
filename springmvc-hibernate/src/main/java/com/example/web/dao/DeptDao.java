package com.example.web.dao;

import com.example.web.model.Dept;

import java.util.List;

/**
 * Created by feilin on 2017/7/22.
 */
public interface DeptDao {

    Dept findById(long id);

    List<Dept> findAll();

    Dept findByName(String dname);
}
