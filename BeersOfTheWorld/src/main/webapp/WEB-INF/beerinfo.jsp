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
	<p><strong>Name:</strong> ${beer.name}</p>
	<p><strong>Brewery:</strong> ${beer.brewery}</p>
	<p><strong>Description:</strong> ${beer.description}</p>
	<p><strong>Style:</strong> ${beer.style}</p>
	<p><strong>ABV:</strong> ${beer.abv}</p>
	<p><strong>Rating:</strong> ${beer.rating}</p>
	<p><strong>SRM:</strong> ${beer.srm}</p>
	<a href="deleteBeer.do?bid=${beer.id}">Delete</a>
	<a href="editBeer.do?bid=${beer.id}">Edit</a>
</body>
</html>