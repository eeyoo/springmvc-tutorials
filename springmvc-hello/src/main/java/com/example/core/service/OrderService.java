package com.example.core.service;

import com.example.core.domain.Order;

import java.util.List;

/**
 * Created by feilin on 2017/6/20.
 */
public interface OrderService {

    List<Order> findAllOrder();

    Order findById(int id);

    void deleteById(int id);
}
