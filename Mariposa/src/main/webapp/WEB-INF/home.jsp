<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mariposa</title>
</head>
<body>
<h4>A site dedicated to the tracking of butterflies, specifically the Monarch</h4>



	<form action="findById.do" method="GET">
		Butterfly ID: <input type="text" name="id" /> 
		<input type="submit" value="Show Butterfly" />
	</form>
	
	<br>
	<form action="createForm.do" method="GET">
		<input type="hidden" name="id" /> 
		<input type="submit" value="Add Butterfly" />
	</form>
	<br>
 
  	<form action="updateForm.do" method="GET">
		Update Butterfly by ID<input type="text" name="id" /> 
		<input type="submit" value="Update Butterfly" />
	</form>		
	<br>
	<form action="deleteForm.do" method="GET">
		Delete by ID<input type="text" name="id" /> 
		<input type="submit" value="Delete Butterfly" />
	</form>
</body>
</html>