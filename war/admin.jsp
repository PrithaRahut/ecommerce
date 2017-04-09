<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ecomm.Product" %>
<%@ page import="com.ecomm.Database" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String code=request.getParameter("code");
	String name=request.getParameter("pname");
	String category=request.getParameter("category");
	String brand=request.getParameter("brand");
	String gender=request.getParameter("gender");
	String size=request.getParameter("size");
	String desc=request.getParameter("desc");
	String price=request.getParameter("price");
	String img=request.getParameter("img");
	String qty=request.getParameter("qty");

	
	//out.println(qty);
	String msg=null;
	if(code!=null && name!=null && category!=null && gender!=null && price!=null && qty!=null ){
		int quantity=Integer.parseInt(qty);
		Product prod=new Product();
		prod.setCode(code);
		prod.setName(name);
		prod.setCategory(category);
		prod.setGender(gender);
		prod.setSize(size);
		prod.setDescription(desc);
		prod.setPrice(price);
		prod.setImg(img);
		prod.setQty(quantity);
		prod.setBrand(brand);
		
		Database.saveClothProduct(prod);
	}
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin</title>
</head>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #F28C1D;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>

<body>
	<h3>Save Products</h3>
	<form action="admin.jsp">
		<label for="code">Product Code</label>
		<input type="text" id="code" name="code">
		
		<label for="pname">Product Name</label>
		<input type="text" id="pname" name="pname">
		
		<label for="brand">Product Brand</label>
		<input type="text" id="brand" name="brand"> 
		
		<label for="category">Product Category</label>
		<input type="text" id="category" name="category">
		
		<label for="gender">Product gender</label>
		<input type="text" id="category" name="gender">
		
		<label for="size">Product size</label>
		<input type="text" id="size" name="size">
		
		<label for="desc">Product Description</label>
		<input type="text" id="desc" name="desc">
		
		<label for="price">Product price</label>
		<input type="text" id="price" name="price">
		
		<label for="img">Product Image</label>
		<input type="text" id="img" name="img">
		
		<label for="qty">Product Quantity</label>
		<input type="number" id="qty" name="qty">
		
		<input type="submit" value="Submit">
		
	</form>

</body>
</html>