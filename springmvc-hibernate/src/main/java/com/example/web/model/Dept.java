package com.example.web.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by feilin on 2017/7/22.
 * spring/boot Dept table
 */
@Entity
@Table(name = "DEPT")
public class Dept {


    private int deptNo;
    private String deptName;
    private String location;

    @Id
    @GeneratedValue(generator="increment")
    @GenericGenerator(name="increment", strategy = "increment")
    @Column(name = "DEPTNO")
    public int getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(int deptNo) {
        this.deptNo = deptNo;
    }

    @Column(name = "DNAME")
    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    @Column(name = "LOC")
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
