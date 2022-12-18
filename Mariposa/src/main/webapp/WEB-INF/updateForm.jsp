<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Butterfly Information</title>
<%@ include file="bootstrapHead.jsp" %>
</head>
<body>

	<div class='perchImage'>
	  <p class='caption'>Butterfly perched</p>
  	</div>
  	
<div class="container-fluid">
<form action="butterflyUpdated.do" method="POST">
	<input type="hidden" name="id" value="${butterfly.id}" />
	
	<label for="date">Date (YYYY-MM-DD)</label>
	<input type="text" name="date" required="required" value="${butterfly.date }" />
	 <br>
	<label for= "city">City:</label>
	<input type="text" name="city" required="required" value="${butterfly.city }" />
	 <br>
	<label for= "state">State (Abbreviation):</label>
	<input type="text" name="state" required="required" value="${butterfly.state }" />
	 <br>
	<label for= "latitude">Latitude:</label>
	<input type="text" name="latitude" value="${butterfly.latitude }" />
	 <br> 
	<label for= "longitude">Longitude:</label>
	<input type="text" name="longitude" value="${butterfly.longitude }" />
	 <br> 
 	<label for= "amount">Number seen:</label>
	<input type="text" name="amount" value="${butterfly.amount }" />
	 <br> 
	<label for= "desciption">Description:</label>
	<input type="text" name="description" value="${butterfly.description }" />
	 <br> 
	<label for= "imageUrl">Image:</label>
	<input type="text" name="imageUrl" value="${butterfly.imageUrl }" />
	 <br> 
	 
	 <br>
    <input type= "submit" value= "Update entry">
     <br>
</form>
    </div> 
    <%@ include file="bootstrapFoot.jsp" %>
</body>
</html>