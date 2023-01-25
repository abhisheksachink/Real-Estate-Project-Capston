<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>property</h1>

<table border="1" style="text-align:center; margin:auto; width:100%">
		<tr>
			<th>Property Type </th>
			<th>Offer Type</th>
			<th>Offer Cost</th>
			<th>Area Square Feet</th>
			<th>City</th>
			<th>Address</th>
			<th>Street</th>
			<th>Picture</th>
			<th>Status</th>
			<th>Action</th>
			<c:forEach items="${allProperties}" var="property">
				<tr>
					<td>${property.getConfiguration()}</td>
					<td>${property.getOfferType()}</td>
					<td>${property.getOfferCost()}</td>
					<td>${property.getAreaSqft()}</td>
					<td>${property.getCity()}</td>
					<td>${property.getAddress()}</td>
					<td>${property.getStreet()}</td>
					<td><img src="${property.getPicture()}" style="width:300px;height:142px;"></td>
					<td>${property.getPstatus()}</td>
					<td><a href = "addtocart/${product.getProdId()}/${product.getProdName()}/${product.getProdDesc()}/${product.getPrice()}/${userId}" class="w3-button w3-bar-item">Add to Cart</a> </td>
					</tr>

			</c:forEach>

	</table>
</body>
</html>