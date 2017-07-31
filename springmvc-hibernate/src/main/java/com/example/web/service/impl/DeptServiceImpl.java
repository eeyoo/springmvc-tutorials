package com.example.web.service.impl;

import com.example.web.dao.DeptDao;
import com.example.web.model.Dept;
import com.example.web.service.DeptService;

import java.util.List;

/**
 * Created by feilin on 2017/7/22.
 */
public class DeptServiceImpl implements DeptService {

    DeptDao deptDao;

    public void setDeptDao(DeptDao deptDao) {
        this.deptDao = deptDao;
    }

    public List<Dept> findAll() {
        return deptDao.findAll();
    }

    public Dept findById(long id) {
        return deptDao.findById(id);
    }

    public Dept findByName(String dname) {
        return deptDao.findByName(dname);
    }
}
