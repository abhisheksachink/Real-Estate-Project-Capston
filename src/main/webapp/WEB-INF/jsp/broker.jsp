<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Broker</title>
</head>
<body>
<h2>Add Property</h2>
<form action="" method="post">
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
    <button type="submit">Add Property</button>
    

</form>
</body>
</html>