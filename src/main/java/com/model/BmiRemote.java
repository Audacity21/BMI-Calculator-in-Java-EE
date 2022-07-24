package com.model;

import javax.ejb.Stateless;

@Stateless
public interface BmiRemote {
  public String bmiCheck(double weight, double height);

}