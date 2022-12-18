<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Film</title>
<%@ include file="bootstrapHead.jsp" %>
</head>
<body>
<div class="container-fluid">
  <c:choose>
    <c:when test="${! deleted}">
      Butterfly successfully deleted!

    </c:when>
    <c:otherwise>
      <p>Error deleting film</p>
    </c:otherwise>
  </c:choose>
 </div> 
  		<p> Return to main menu</p>
	<form action="home.do" method="GET">
	<input type= "hidden" name="butterfly" value="" />
	<input type= "submit" value="Main Menu" />
	</form>
<%@ include file="bootstrapFoot.jsp" %>
</body>
</html>