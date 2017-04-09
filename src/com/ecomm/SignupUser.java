package com.ecomm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupUser extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
		String uname= request.getParameter("name");
		String email= request.getParameter("email");
		String pwd= request.getParameter("pwd");
		String confirmPass= request.getParameter("confirm");
		String contact= request.getParameter("cnum");
		
		String msg=null;
		
		if(pwd.equals(confirmPass)){
			User user=new User();
			user.setName(uname);
			user.setEmail(email);
			user.setPassword(pwd);
			user.setNumber(contact);
			
			boolean value=Database.createUser(user);
			if(value){
				msg="Successfully registered continue to login";
			}else{
				msg="Email not available";
			}
		}else {
			msg="Passwords do not match";
		}
		
		request.setAttribute("msg", msg);
		
		RequestDispatcher dispatch=request.getRequestDispatcher("index.jsp");
		dispatch.forward(request,response);
		
	}

}
