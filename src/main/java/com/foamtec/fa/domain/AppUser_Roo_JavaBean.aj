// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.fa.domain;

import com.foamtec.fa.domain.AppUser;

privileged aspect AppUser_Roo_JavaBean {
    
    public String AppUser.getUsername() {
        return this.username;
    }
    
    public void AppUser.setUsername(String username) {
        this.username = username;
    }
    
    public String AppUser.getPassword() {
        return this.password;
    }
    
    public void AppUser.setPassword(String password) {
        this.password = password;
    }
    
    public String AppUser.getName() {
        return this.name;
    }
    
    public void AppUser.setName(String name) {
        this.name = name;
    }
    
    public String AppUser.getDepartment() {
        return this.department;
    }
    
    public void AppUser.setDepartment(String department) {
        this.department = department;
    }
    
    public String AppUser.getAppRole() {
        return this.appRole;
    }
    
    public void AppUser.setAppRole(String appRole) {
        this.appRole = appRole;
    }
    
}