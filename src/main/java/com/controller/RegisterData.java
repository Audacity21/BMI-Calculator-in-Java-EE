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

import com.entity.Register;
import com.model.RegisterRemote;


@WebServlet("/RegisterData")
public class RegisterData extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   @EJB(lookup ="java:global/ep-learnathon/RegisterModel!com.model.RegisterRemote")
   RegisterRemote rr;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	
		PrintWriter pw = response.getWriter();
		
		try {
			Register r = new Register();
			String username = request.getParameter("t1");
			String name = request.getParameter("t2");
			String email = request.getParameter("t3");
			String password = request.getParameter("t4");
			
			r.setUsername(username);
			r.setName(name);
			r.setEmail(email);
			r.setPassword(password);
			
			
			String ack = rr.register(r);
			pw.print(ack);
			
		}
		catch(Exception e) {
			pw.print(e.getMessage());
			
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
		rd.include(request, response);
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
