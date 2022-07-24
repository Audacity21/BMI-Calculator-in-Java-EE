package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BmiModel;


@WebServlet("/BmiData")
public class BmiData extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
 
   
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");  
    PrintWriter pw = response.getWriter();
    
    try {
      BmiModel bm = new BmiModel();
      double weight = Double.parseDouble(request.getParameter("t2"));
      double height = Double.parseDouble(request.getParameter("t3"));
      
      String ack = bm.bmiCheck(weight, height);
      pw.print(ack); 
    }
    catch(Exception e) {
      pw.print(e.getMessage());
      
      
    }
    
    RequestDispatcher rd = request.getRequestDispatcher("bmi.jsp");
    rd.include(request, response);
    
    
  }

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
  }

}