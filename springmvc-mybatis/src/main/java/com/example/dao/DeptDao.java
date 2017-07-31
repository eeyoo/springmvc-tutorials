package com.example.dao;

import com.example.model.Dept;

import java.util.List;
import java.util.Map;

/**
 * Created by feilin on 2017/7/24.
 */
public interface DeptDao {

    Dept findById(int deptno);

    List<Map<String,Object>> findAll();

    void add(Object object);

    void update(Object object);

    void deleteById(int deptNo);

}
