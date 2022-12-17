<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${butterfly.id}

<h2> test </h2>

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