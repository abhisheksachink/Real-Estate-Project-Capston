<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<title>Broker Admin</title>
</head>
<body style="text-align:center; background-color:grey">
<%@include file="navigation2.jsp" %>
<h3 style="color:red">${status}</h3>
<form  action="<%=request.getContextPath()%>/updatePropertyNow/${userId}/${propId}" method="get">
    <label for="configuration"><b>Configuration:</b></label>
    <input type="text" placeholder="Shop/Flat/Plot" name="configuration" value="${configuration}" required><br><br>
    <label for="offerType"><b>OfferType:</b></label>
    <input type="text" placeholder="Sell/Rent" name="offerType" value="${offerType}" required><br><br>
    <label for="offercost"><b>OfferCost:</b></label>
    <input type="number" placeholder="Enter Price" name="offerCost" value="${offerCost}" required><br><br>
    <label for="areaSqft"><b>AreaSqft:</b></label>
    <input type="number" placeholder="Enter areaSqft" name="areaSqft" value="${areaSqrft}" required><br><br>
    <label for="city"><b>City:</b></label>
    <input type="text" placeholder="Enter city" name="city" value="${city}" required><br><br>
    <label for="address"><b>Address:</b></label>
    <input type="text" placeholder="Enter address" name="address" value="${addr}" required><br><br>
    <label for="street"><b>Street:</b></label>
    <input type="text" placeholder="Enter street" name="street" value="${street}" required><br><br>
    <label for="picture"><b>Picture:</b></label>
    <input type="url" placeholder="Type picture url" name="picture" value="${picture}"><br><br>
    <label for="status"><b>Status:</b></label>
    <select name="status" id="status">
        <option value="Available">Available</option>
        <option value="Sold">Sold</option>
    </select><br><br>
    <button type="submit">Update Property</button><br>
    
   
    

</form>
<%@include file="footer.jsp" %>
</body>
</html>