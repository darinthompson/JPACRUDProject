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

						<h1>Beers Of The World!</h1>
						<form action="getBeer.do" method="GET">
							Beer ID: <input type="text" name="bid" /> <input type="submit"
								value="Show Beer" />
						</form>
						<c:forEach var="beer" items="${beers}">
							<c:if test="${not empty beer}">
								<ul>
									<li><a href="getBeer.do?bid=${beer.id}">${beer.name}</a></li>
								</ul>
							</c:if>
						</c:forEach>
</body>
</html>