<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Butterfly result:</title>
</head>
<body>
<h3>Your butterfly's information is:</h3>
	<ul id="Your butterfly's information is:" >
			    <li>${butterfly.id }</li>
			    <li>${butterfly.date }</li>
			    <li>${butterfly.city }</li>
			    <li>${butterfly.state }</li>
			    <li>${butterfly.latitude }</li>
			    <li>${butterfly.longitude }</li>
			    <li>${butterfly.amount }</li>
			    <li>${butterfly.description }</li>
			    <li>${butterfly.imageUrl }</li>

</ul>

		<form action="home.do" method="GET">
	<input type= "hidden" name="butterfly" value= ${butterfly.id } />
	<input type= "submit" value="Main Menu" />
	</form>
	<br>
	<form action="updateForm.do" method="GET">
		<input type="hidden" value="${butterfly.id }" name="id" /> 
		<input type="submit" value="Update Butterfly" />
	</form>
	<br>
	<form action="deleteForm.do" method="GET">
		<input type="hidden" value="${butterfly.id }" name="id" /> 
		<input type="submit" value="Delete Butterfly" />
	</form>
</body>
</html>