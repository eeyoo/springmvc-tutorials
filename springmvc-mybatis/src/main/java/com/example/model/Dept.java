package com.example.model;

/**
 * Created by feilin on 2017/7/24.
 */
public class Dept {

    private int deptNo;
    private String dName;
    private String loc;

    public Dept() {}

    public Dept(String dName, String loc) {
        this.dName = dName;
        this.loc = loc;
    }

    public int getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(int deptNo) {
        this.deptNo = deptNo;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }
}
