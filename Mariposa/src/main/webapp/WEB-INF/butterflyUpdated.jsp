<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Butterfly updated</title>
<%@ include file="bootstrapHead.jsp" %>
</head>
<body>
<div class="container-fluid">
	<c:choose>
		<c:when test="${! empty butterfly}">
			<h3>Butterfly updated successfully</h3>
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
</div>	
		<p> Return to main menu</p>
	<form action="home.do" method="GET">
	<input type= "hidden" name="butterfly" value= ${butterfly.id } />
	<input type= "submit" value="Main Menu" />
	</form>
	
	<%@ include file="bootstrapFoot.jsp" %>
</body>
</html>