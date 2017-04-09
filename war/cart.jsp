<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ecomm.CartItem" %>
<%
	CartItem cart=(CartItem)request.getSession().getAttribute("cart");
	int price=Integer.parseInt(cart.getPrice());
	int total=cart.getQty()*price;
%>
<!DOCTYPE html>
<html>
<head>
	<title>Cart</title>
	<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/stylee.css">
</head>
<body>
	<%@ include file="header.jsp" %>
	<div style="padding: 14px 16px;" class="container">
		<h3>Shopping cart</h3>
	</div>
	<div align="center">
		<table class="table table-bordered" style="padding-left: 50px; padding-right: 50px;">
			<thread>
			<tr>
				<th>Product Image</th>
				<th>Product Name</th>
				<th>Product Size</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Subtotal</th>
			</tr>
			</thread>
			<tbody>
				<tr>
				<td><img src="<%=cart.getImg()%>" style="width: 70px; height: 75px"></td>
				<td><%=cart.getName() %></td>
				<td><%=cart.getSize() %></td>
				<td><%=cart.getPrice() %></td>
				<td><%=cart.getQty() %></td>
				<td><%=total %></td>
				</tr>
				<tr>
					<td colspan="5">Cell</td>
				</tr>
			</tbody>
			
		</table>
	</div>
	<div align="right" id="total">
		<table style="border: 0px; width: 50%" class="table">
			<tr>
				<th style="border: 0px;">Subtotal</th>
				<td style="border: 0px;"><%=total %></td>
			</tr>
			<tr>
				<th style="border: 0px;">VAT</th>
				<td style="border: 0px;">50.73</td>
			</tr>
			<tr>
				<th style="border: 0px;">Grand total</th>
				<td style="border: 0px;"><%=total+50.73 %></td>
			</tr>
		</table>
		<input type="submit"  class="btn btn-success" value="Checkout" id="checkout" onclick="openPage('checkout.jsp')">
	</div>
	<script type="text/javascript">
	 function openPage(pageURL)
	 {
	 window.location.href = pageURL;
	 }
	</script>

</body>
</html>