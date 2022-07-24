package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Login;
import com.model.LoginRemote;


@WebServlet("/LoginData")
public class LoginData extends HttpServlet {
  private static final long serialVersionUID = 1L;
  public static boolean redir;
  public static String uname;
  
  public static void setRedir(boolean val) {
	  LoginData.redir = val;
  }
     @EJB(lookup ="java:global/ep-learnathon/LoginModel!com.model.LoginRemote")
     LoginRemote lr;
       
    
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");  
    PrintWriter pw = response.getWriter();
    
    try {
      Login r = new Login();
      String username = request.getParameter("t1");
      String password = request.getParameter("t2");
      
      uname = username;
      
      r.setUsername(username);
      r.setPassowrd(password);
      
      
      redir =lr.login(username, password, r);
      if(redir) {
        response.sendRedirect(request.getContextPath() + "/bmi.jsp");
      }
      else {
        pw.print("<h1>Login unsuccessfull</h1>");
      }
      
      
    }
    catch(Exception e) {
      pw.print(e.getMessage());
      
      
    }
    
    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
    rd.include(request, response);
    }

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
  }

}