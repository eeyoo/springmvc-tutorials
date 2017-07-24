package com.example.core.service.impl;

import com.example.core.dao.OrderDao;
import com.example.core.domain.Order;
import com.example.core.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by feilin on 2017/6/20.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

//    @Override
//    public List<Order> findAllOrder() {
//        return orderDao.findAll();
//    }
//
//    @Override
//    public Order findById(int id) {
//        return orderDao.findById(id);
//    }
//
//    @Override
//    public void deleteById(int id) {
//        try {
//            orderDao.deleteById(id);
//        } catch (DataAccessException e) {
//            e.printStackTrace();
//        }
//
//    }

    public List<Order> findAllOrder() {
        return null;
    }

    public Order findById(int id) {
        return null;
    }

    public void deleteById(int id) {

    }
}
