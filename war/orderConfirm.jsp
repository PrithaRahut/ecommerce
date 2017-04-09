<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/stylee.css">
</head>
<body>
	<%@ include file="header.jsp" %>
	<h2>YOUR ORDER HAS BEEN RECIEVED</h2>
	<h4>Thank you for your purchase!</h4>
	<input type="submit"  class="btn btn-success" value="Checkout" id="checkout" onclick="openPage('index.jsp')">
	<script type="text/javascript">
	 function openPage(pageURL)
	 {
	 window.location.href = pageURL;
	 }
	</script>
</body>
</html>