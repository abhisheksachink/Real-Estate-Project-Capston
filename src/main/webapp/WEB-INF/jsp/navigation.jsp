<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/w3css/3/w3.css">
<body>

<!-- Navigation -->
<nav class="w3-bar w3-black">
  <a href="<%=request.getContextPath()%>/home" class="w3-button w3-bar-item">Home</a>
  <a href="#band" class="w3-button w3-bar-item">APR RealEstate</a>
  <a href="#tour" class="w3-button w3-bar-item">Tour</a>
  <a href="#contact" class="w3-button w3-bar-item">Contact</a>
  <a onclick="document.getElementById('id01').style.display='block'"  class="w3-button w3-bar-item">Login</a>
  <a onclick="document.getElementById('id02').style.display='block'"  class="w3-button w3-bar-item">Registration</a>
</nav>

</body>
</html>

