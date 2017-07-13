package com.example.core.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by feilin on 2017/6/20.
 */
public class Order implements Serializable {

    private Integer id;
    private String contract;
    private String no;
    private Date dutyDay;
    private String duty;
    private Float atom;
    private String type;
    private Integer status;
    private String memo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public Date getDutyDay() {
        return dutyDay;
    }

    public void setDutyDay(Date dutyDay) {
        this.dutyDay = dutyDay;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public Float getAtom() {
        return atom;
    }

    public void setAtom(Float atom) {
        this.atom = atom;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}
