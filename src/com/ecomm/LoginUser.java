package com.ecomm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String msg=null;
		User user=Database.checkUser(email, pwd);
		
		
		if(user!=null){

			String name=user.getName();
			String p=user.getPassword();
			System.out.println(name);
			System.out.println(p);
			HttpSession session=request.getSession();  
			session.setAttribute("user", user);
			session.setAttribute("email", email);
			//response.sendRedirect("index.jsp");
			msg="Successfully logged in!!";
			
			request.setAttribute("msg", msg);
			RequestDispatcher req=request.getRequestDispatcher("index.jsp");
			req.forward(request, response);
			
		}
		else{
			msg="Incorrect email or password";
			request.setAttribute("msg", msg);
			RequestDispatcher req=request.getRequestDispatcher("index.jsp");
			req.forward(request, response);
					
		}
	}
}
