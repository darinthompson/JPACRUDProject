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
	<h1>Let the fun begin</h1>
	<form action="editBeer.do" method="POST">
		Beer Name<input type="text" value="${beer.name}" name="name" />
		Brewery<input type="text" value="${beer.brewery}" name="brewery" />
		Style<input type="text" value="${beer.style}" name="style" />
		Description<input type="text" value="${beer.description}" name="description" />
		ABV<input type="text" value="${beer.abv}" name="abv" />
		SRM<input type="text" value="${beer.srm}" name="srm" />
		Rating<input type="text" value="${beer.rating}" name="rating" />
		
		<p>${beer.id}</p>
		<input type="hidden" name="bid" value="${beer.id}"/>
		<input type="submit" value="SUBMIT" />
	</form>
</body>
</html>