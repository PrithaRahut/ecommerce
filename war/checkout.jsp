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
<title>Checkout</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/stylee.css">
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container">
	<div style="padding: 14px 16px;" class="container">
		<h4>Checkout</h4>
	</div>
	<form action="OrderServlet" method="post">
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
	          			<a data-toggle="collapse" data-parent="#accordion" href="#ShippingAdd">Shipping Address</a>
	        		</h4>
				</div>
				<div id="ShippingAdd" class="panel-collapse collapse in">
					<div class="panel-body">
						 <div class="form-group">
						  <textarea class="form-control" rows="5" id="sadd" name="sadd"></textarea>
						 </div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
	          			<a data-toggle="collapse" data-parent="#accordion" href="#payment">Payment Information</a>
	        		</h4>
				</div>
				<div id="payment" class="panel-collapse collapse ">
					<div class="panel-body">
						  	<div class="radio">
							  <label><input type="radio" name="optradio">Cash on Delivery</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="optradio">Credit/Debit card</label>
							</div>
							<div class="radio disabled">
							  <label><input type="radio" name="optradio">Netbanking</label>
							</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
	          			<a data-toggle="collapse" data-parent="#accordion" href="#OrderSum">Order Summary</a>
	        		</h4>
				</div>
				<div id="OrderSum" class="panel-collapse collapse ">
					<div class="panel-body">
						  	<table class="table table-bordered">
						  		<thead>
						  		<tr>
						  			<th>Product Name</th>
									<th>Product Size</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Subtotal</th>
								</tr>
						  		</thead>
						  		<tbody>
						  			<tr>
						  				<td><%=cart.getName() %></td>
										<td><%=cart.getSize() %></td>
										<td><%=cart.getPrice() %></td>
										<td><%=cart.getQty() %></td>
										<td><%=total %></td>
						  			</tr>
						  		</tbody>
						  	</table>
					</div>
				</div>
			</div>
	
		</div>
		<button type="submit" class="btn btn-success">Place Order</button>
	</form>
	</div>

</body>
</html>