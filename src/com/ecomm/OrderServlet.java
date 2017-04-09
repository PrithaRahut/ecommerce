package com.ecomm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecomm.User;
import com.ecomm.Database;

public class OrderServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1692791338899943151L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
		User user=(User)request.getSession().getAttribute("user");
		CartItem cart=(CartItem)request.getSession().getAttribute("cart");
		String address=request.getParameter("sadd");
		String paymethod=request.getParameter("optradio");
		String msg=null;
		if(user!=null && cart!=null && address!=null && paymethod!=null){
			Order order=new Order();
			order.setUsername(user.getName());
			order.setEmail(user.getEmail());
			order.setCart(cart);
			order.setAddress(address);
			order.setPayment(paymethod);
			
			int quant=cart.getProd().getQty()-cart.getQty();
			if(quant<0){
				msg="Product out of stock";
			}else{
				msg="Order placed successfully!";
				cart.getProd().setQty(quant);
				Database.saveOrder(order);
				Database.saveClothProduct(cart.getProd());
			}
			request.setAttribute("msg", msg);
			RequestDispatcher dispatch=request.getRequestDispatcher("orderConfirm.jsp");
			dispatch.forward(request,response);
		}
	}

}
