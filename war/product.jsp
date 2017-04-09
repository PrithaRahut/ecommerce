<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ecomm.Product" %>
<%@ page import="com.ecomm.Database" %>
<%
	String category=request.getParameter("category");
	
	List<Product> list= Database.fetchProductbyCategory(category);
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Products</title>
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
      <div class="row content">
        <div class="col-sm-12 text-center">
        <% if(list.isEmpty()) { %>
        	<div class="alert alert-warning">
        		<strong>Oops! No Products Available</strong>
        	</div>
        		
       
        <%}  else {%> 
        	<div class="row">
        	 <%  for (Product cloth : list) {
        %>
        
          
            <div class="col-sm-3" >
                <a href="item.jsp?code=<%=cloth.getCode() %>"><img src="<%=cloth.getImg() %>" class="img-responsive" style="width:300px; height:360px;" alt="Image"></a>
                <p><%=cloth.getName() %></p>
                <p> &#8377;<%=cloth.getPrice() %></p>
            </div>
            
          
          <%} %>
          </div>
         <%} %>
        
          
        </div>
      </div>
  </div>
  <%@ include file="footer.jsp" %>
</body>
</html>