<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;

}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
<title>Insert title here</title>
</head>
<body>

<button class="open-button" onclick="openForm()">Add Product</button>
<div class="form-popup" id="myForm">
<form id="addprop" action="addProperty" method="post">
    <label for="configuration"><b>Configuration:</b></label>
    <input type="text" placeholder="Shop/Flat/Plot" name="configuration" required><br><br>
    <label for="offerType"><b>OfferType:</b></label>
    <input type="text" placeholder="Sell/Rent" name="offerType" required><br><br>
    <label for="offercost"><b>OfferCost:</b></label>
    <input type="number" placeholder="Enter Price" name="offerCost" required><br><br>
    <label for="areaSqft"><b>AreaSqft:</b></label>
    <input type="number" placeholder="Enter areaSqft" name="areaSqft" required><br><br>
    <label for="city"><b>City:</b></label>
    <input type="text" placeholder="Enter city" name="city" required><br><br>
    <label for="address"><b>Address:</b></label>
    <input type="text" placeholder="Enter address" name="address" required><br><br>
    <label for="street"><b>Street:</b></label>
    <input type="text" placeholder="Enter street" name="street" required><br><br>
    <label for="picture"><b>Picture:</b></label>
    <input type="url" placeholder="Type picture url" name="picture" required><br><br>
    <label for="status"><b>Status:</b></label>
    <select name="status" id="status">
        <option value="Available">Available</option>
        <option value="Sold">Sold</option>
    </select><br><br>
    <button type="submit">Add Property</button><br>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
   
    

</form>
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
<br>

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
					<td><a href = "deleteProperty/${property.getPropId()}" class="w3-button w3-bar-item">Delete</a> </td>
					</tr>

			</c:forEach>

	</table>
</body>
</html>

