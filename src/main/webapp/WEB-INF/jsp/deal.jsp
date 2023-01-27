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
<title>Deal</title>
</head>
<body style="text-align:center; background-color:grey">
<%@include file="navigation2.jsp" %>
<h3 style="color:red">${status}</h3>
<table border="1px" style="margin-left: auto; margin-right: auto; border:1px solid black;">
    <tr>
        <th>Property Id:</th>
        <td>${propId}</td>
    </tr>
    <tr>
        <th>Deal Id:</th>
        <td>${dealId}</td>
    </tr>
    <tr>
        <th>Deal Date:</th>
        <td>${dealDate}</td>
    </tr>
    <tr>
        <th>Deal Cost:</th>
        <td>${dealcost}</td>
    </tr>
</table>
<%@include file="footer.jsp" %>

</body>
</html>