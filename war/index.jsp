<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String msg=(String)request.getAttribute("msg");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/css/stylee.css">
</head>
<body>
	<%if(msg!=null){ %>
		<div class="alert alert-success">
			<button class="close" data-dismiss="alert">&times;</button>
			<strong><%=msg %></strong>
		</div>
	<%} %>
	<%@ include file="header.jsp" %>
	<div id="categorytable">
		<table width="100%" border="0">
		  <tr>
		    <th style="color: #F28C1D; padding: 5px; text-align: center;"><a href="product.jsp?category=saree">Sarees</a></th>
		    <th style="color: #F28C1D; padding: 5px; text-align: center;"><a>Kurtis</a></th>
		    <th style="color: #F28C1D; padding: 5px; text-align: center;"><a>Dresses</a></th>
		    <th style="color: #F28C1D; padding: 5px; text-align: center;"><a>Tops</a></th>
		  </tr>
		  <tr>
		    <td><img src="http://assets5.mirraw.com/images/1603050/AFS108_original.jpg?1474885833" style="width: 200px; height: 300px;"></td>
		    <td><img src="https://img.looksgud.com/blog/wp-content/uploads/2016/02/peach-front-open-slit-kurti.jpg" style="width: 200px; height: 300px;"></td>
		    <td><img src="http://assets.myntassets.com/assets/images/1737452/2017/2/3/11486109507900-UF-Women-Dresses-7271486109507685-1.jpg" style="width: 200px; height: 300px;"></td>
		    <td><img src="http://assets.myntassets.com/assets/images/1345346/2016/5/11/11462957039067-Hypernation-Women-Tshirts-5691462957038782-1.jpg" style="width: 200px; height: 300px;"></td>
		  </tr>
		</table>
	</div>
	
	<%@ include file="footer.jsp" %>

</body>
</html>