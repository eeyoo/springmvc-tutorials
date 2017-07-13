package com.example.core.dao;

import com.example.core.domain.Order;

import java.util.List;

/**
 * Created by feilin on 2017/6/20.
 */
public interface OrderDao {

    List<Order> findAll();

    Order findById(int id);

    void deleteById(int id);
}
