/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;

/**
 *
 * @author Bharat
 */
public class message {
    private String msg;
    private String type;
    private String cssclass;
    
    
    //constructor

    public message(String msg, String type, String cssclass) {
        this.msg = msg;
        this.type = type;
        this.cssclass = cssclass;
    }
    
    //getter and setter

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCssclass() {
        return cssclass;
    }

    public void setCssclass(String cssclass) {
        this.cssclass = cssclass;
    }
    
    
    
    
}



