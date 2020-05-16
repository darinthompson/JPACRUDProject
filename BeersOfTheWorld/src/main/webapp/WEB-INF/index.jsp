<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beers Of The World</title>
</head>
<body>
 <h1>Beers Of The World!</h1>
 <c:forEach var="beer" items="${beers}">
 	<ul>
 		<li>${beer.name}</li>
 	</ul>
 </c:forEach>
</body>
</html>