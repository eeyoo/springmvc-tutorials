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

    public Dept findById(long id) {
        String hql = "from Dept obj where obj.deptNo = ?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setLong(0, id);

        return (Dept) query.uniqueResult();
    }

    public List<Dept> findAll() {
        String hql = "from Dept";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        return query.list();
    }

    public Dept findByName(String dname) {
        String hql = "from Dept obj where obj.deptName = ?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setString(0, dname);

        return (Dept) query.uniqueResult();
    }
}
