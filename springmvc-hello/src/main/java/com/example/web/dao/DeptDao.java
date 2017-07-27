package com.example.web.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by feilin on 2017/7/24.
 */
public interface DeptDao {

    Map<String,Object> findById(int deptno);

    List<Map<String,Object>> findAll();

    void add(Object object);

    void update(Object object);

}
