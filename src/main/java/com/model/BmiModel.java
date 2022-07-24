package com.model;

import javax.ejb.Stateless;

@Stateless
public class BmiModel implements BmiRemote{
	public static String set = "";
  public  String bmiCheck(double weight, double height) {
    double bmi = 0.0;
    height = height/100.0;
    bmi = weight/(height*height);
    String result ="";
    System.out.println(weight+", "+height);
    
    
    
    
    if(bmi<18.5){
        result = "Underweight calorie: 2500-3000 ";
         }
    else if(18.5<=bmi&&bmi<=24.9){
        result = "Healthy calorie:2000-2500 ";
         }
    else if(25<=bmi&&bmi<=29.9){
        result = "Overweight calorie: 1500-2000 ";
         }
    else if(30<=bmi&&bmi<=34.9){
        result = "Obese calorie: 1000-1500 ";
         }
    else if(35<=bmi){
        result = "Extremely obese calorie: 700-1250 ";
         }
    else {
      result = "you are not human ";
    }
    
    set = "BMI: "+String.format("%.2f", bmi) + "\n Status: "+ result;
    return "";
  }

}