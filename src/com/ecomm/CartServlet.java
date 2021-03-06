package com.ecomm;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		String size=request.getParameter("size");
		String code=request.getParameter("code");
		String quant=request.getParameter("qty");
		
		Product prod=Database.fetchProductbyCode(code);
		
		if(prod!=null && size!=null && quant!=null){
			int qty=Integer.parseInt(quant);
			CartItem cart= new CartItem();
			cart.setImg(prod.getImg());
			cart.setName(prod.getName());
			cart.setSize(size);
			cart.setPrice(prod.getPrice());
			cart.setQty(qty);
			cart.setProd(prod);
			HttpSession session=request.getSession();
			session.setAttribute("cart", cart);
			response.sendRedirect("cart.jsp");
		}
		
		
	}

}
