<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form action="butterflyAdded.do" method="POST">
	<label for="date">Date (YYYY-MM-DD)</label>
	<input type="text" name="date" required="required" value="" />
	 <br>
	<label for= "city">City:</label>
	<input type="text" name="city" required="required" value="" />
	 <br>
	<label for= "state">State (Abbreviation):</label>
	<input type="text" name="state" required="required" value="" />
	 <br>
	<label for= "latitude">Latitude:</label>
	<input type="text" name="latitude" value="00.0" />
	 <br> 
	<label for= "longitude">Longitude:</label>
	<input type="text" name="longitude" value="00.0" />
	 <br> 
 	<label for= "amount">Number seen:</label>
	<input type="text" name="amount" value="0" />
	 <br> 
	<label for= "desciption">Description:</label>
	<input type="text" name="description" value="" />
	 <br> 
	<label for= "imageUrl">Image:</label>
	<input type="text" name="imageUrl" value="" />
	 <br> 
	 
	 <br>
    <input type= "submit" value= "Add entry">
     <br>
</form>
</body>
</html>