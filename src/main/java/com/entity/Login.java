package com.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "register")
public class Login implements Serializable{

  
  private static final long serialVersionUID = 1L;
  
  @Id
  String username;
  @Column(name = "password")
  String passowrd;
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public String getPassowrd() {
    return passowrd;
  }
  public void setPassowrd(String passowrd) {
    this.passowrd = passowrd;
  }
  
  
  

}