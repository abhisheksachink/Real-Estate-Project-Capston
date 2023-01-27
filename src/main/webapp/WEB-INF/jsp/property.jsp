<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<title>APR Real Estate</title>
</head>
<body style="text-align:center; background-color:grey">
<%@include file="navigation2.jsp" %>
<h3 style="color:red">${status}</h3>
<form action="fetchPropertyByCity"method="post">
    <label for="cityInput">City:</label>
    <input type="text" id="cityInput" name="cityInput" placeholder="Type City F0r Property Search">
    <button type="submit">Search By City</button>
</form>

<form action="fetchPropertyByOffer"method="post">
    <label for="offertype">Offer Type:</label>
    <input type="text" id="offertype" name="offerType" placeholder="Type offer type for Property Search">
    <button type="submit">Search By Offer Type</button>
</form>

<form action="fetchPropertyByPropType"method="post">
    <label for="configuration">Prop Type:</label>
    <input type="text" id="configuration" name="configuration" placeholder="Type Property type for Property Search">
    <button type="submit">Search By Property Type</button>
</form>
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
					<td><a href = "<%=request.getContextPath()%>/addtoDeal/${property.getPropId()}/${userId}/${property.getOfferCost()}" class="w3-button w3-bar-item">Book</a> </td>
					</tr>

			</c:forEach>

	</table>
<%@include file="footer.jsp" %>
</body>
</html>