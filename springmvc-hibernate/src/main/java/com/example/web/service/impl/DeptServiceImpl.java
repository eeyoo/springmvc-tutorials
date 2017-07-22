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

    @Override
    public List<Dept> findAll() {
        return deptDao.findAll();
    }

    @Override
    public Dept findById(long id) {
        return deptDao.findById(id);
    }
}
