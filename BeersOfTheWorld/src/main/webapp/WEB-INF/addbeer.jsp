<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="createBeer.do" method="POST">
	<strong>NAME: </strong><input type="text" name="name" value="Name"></input>
	<strong>BREWERY: </strong><input type="text" name="brewery" value="Brewery"></input>
	<strong>DESCRIPTION: </strong><input type="text" name="description" value="Description"></input>
	<strong>STYLE: </strong><input type="text" name="style" value="style"></input>
	<strong>ABV: </strong><input type="text" name="abv" value="0"></input>
	<strong>SRM: </strong><input type="text" name="srm" value="0"></input>
	<strong>RATING: </strong><input type="text" name="rating" value="0"></input>
	<input type="submit" value="submit" />
</form>
</body>
</html>