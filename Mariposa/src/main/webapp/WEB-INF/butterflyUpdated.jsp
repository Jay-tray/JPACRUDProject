<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Butterfly updated</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty butterfly}">
			<p>Butterfly updated successfully</p>
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
		</c:when>
		<c:otherwise>
   	 		Error inserting butterfly.
   		</c:otherwise>

	</c:choose>
	
		<p> Return to main menu</p>
	<form action="home.do" method="GET">
	<input type= "hidden" name="butterfly" value= ${butterfly.id } />
	<input type= "submit" value="Main Menu" />
	</form>
</body>
</html>