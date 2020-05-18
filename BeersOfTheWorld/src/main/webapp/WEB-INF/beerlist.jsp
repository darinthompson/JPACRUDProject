<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Creative - Start Bootstrap Theme</title>
<!-- Favicon-->
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- Third party plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="style.css" rel="stylesheet" />
<link href="custom.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Masthead-->
	<header class="masthead beerlist"
		style="background-image: url('resources/img/beerlistbackground.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="site-heading">
						<h1>Clean Blog</h1>
						<span class="subheading">A Blog Theme by Start Bootstrap</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container">
		<c:forEach var="beer" items="${beers}">
			<c:if test="${not empty beer}">
				<div class="row">
					<div class="col-lg-8 col-md-10 mx-auto">
						<div class="post-preview">
							<a href="getBeer.do?bid=${beer.id}">
								<h2 class="post-title">${beer.name} - ${beer.style}</h2>
							</a>
							<p class="post-meta">
								${beer.description}
							</p>
							<hr>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>