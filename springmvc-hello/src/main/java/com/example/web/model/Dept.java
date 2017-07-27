package com.example.web.model;

/**
 * Created by feilin on 2017/7/24.
 */
public class Dept {

    private int deptno;
    private String dname;
    private String loc;

    public Dept() {}

    public Dept(String dname, String loc) {
        this.dname = dname;
        this.loc = loc;
    }

    public int getDeptno() {
        return deptno;
    }

    public void setDeptno(int deptno) {
        this.deptno = deptno;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }
}
