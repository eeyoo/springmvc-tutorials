package com.example.web.dao.impl;

import com.example.web.dao.DeptDao;
import com.example.web.model.Dept;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by feilin on 2017/7/22.
 */
public class DeptDaoImpl implements DeptDao {

    SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Dept findById(long id) {
        String hql = "from Dept obj where obj.deptNo = ?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setLong(0, id);

        return (Dept) query.uniqueResult();
    }

    @Override
    public List<Dept> findAll() {
        String hql = "from Dept";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        return query.list();
    }
}
