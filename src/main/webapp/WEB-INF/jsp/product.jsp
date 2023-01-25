<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<title>Insert title here</title>
</head>
<body style="text-align:center; background-color:grey">
<%@include file="navigation2.jsp" %>
<h1> Welcome ${name}!</h1>

<h3 style="color:red">${cartMsg}</h3>

	<h1>Product List:</h1>
	
	
	<table border="1" style="text-align:center; margin:auto; width:100%">
		<tr>
			<th>Prod_ID</th>
			<th>Prod_Name</th>
			<th>Prod_Desc</th>
			<th>Price</th>
			<th>Product Image</th>
			<th>Action</th>
			<c:forEach items="${allProducts}" var="product">
				<tr>
					<td>${product.getProdId()}</td>
					<td>${product.getProdName()}</td>
					<td>${product.getProdDesc()}</td>
					<td>${product.getPrice()}</td>
					<td><img src="${product.getImage()}" style="width:300px;height:142px;"></td>
					<td><a href = "addtocart/${product.getProdId()}/${product.getProdName()}/${product.getProdDesc()}/${product.getPrice()}/${userId}" class="w3-button w3-bar-item">Add to Cart</a> </td>
					</tr>

			</c:forEach>

	</table>

	<h3 style="color:red">${delMsg}</h3>
	<h3 style="color:red">${updatemsg}</h3>
	<h3 style="color:red">${msg}</h3>
	
	<%@include file="footer.jsp" %>

</body>
</html>