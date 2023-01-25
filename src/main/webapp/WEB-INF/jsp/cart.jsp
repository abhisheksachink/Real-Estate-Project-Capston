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
<h1>List of Product in Cart:-</h1>



	
	
	<table border="1" style="text-align:center; margin:auto; width:100%">
		<tr>
		    <th>Order By User Id</th>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Description</th>
			<th>Price</th>
			<c:forEach items="${cartsss}" var="cart">
				<tr>
				    <td>${cart.getUser_id()}</td>
				    <td>${cart.getProdId()}</td>
					<td>${cart.getProdName()}</td>
					<td>${cart.getProdDesc()}</td>
					<td>${cart.getPrice()}</td>
					
					</tr>

			</c:forEach>

	</table>
<%@include file="footer.jsp" %>
</body>
</html>