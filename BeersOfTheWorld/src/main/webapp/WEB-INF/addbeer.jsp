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
</head>
<body id="page-top">
	<!-- Masthead-->
	<header class="masthead">
		<div class="container h-100">
			<div
				class="row h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-10 align-self-end">
					<h1 class="text-uppercase text-white font-weight-bold">Know
						Something We Don't?</h1>
					<hr class="divider my-4" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 font-weight-light">Tell us about one of
						your favorite beers. We'd love to learn more!</p>




					<form action="createBeer.do" method="POST">
						<div class="form-group">
							<label class="text-white-75 font-weight-light"
								for="exampleFormControlTextarea1">Beer Name</label> <input
								type="text" class="form-control" id="exampleFormControlInput1"
								value="beer" name="name">
						</div>
						<div class="form-group">
							<label class="text-white-75 font-weight-light"
								for="exampleFormControlTextarea1">Brewery</label> <input
								class="form-control" font-weight-light" type="text"
								class="form-control" id="Brewery" placeholder="Brewery"
								value="brewery" name="brewery">
						</div>
						<div class="form-group">
							<label class="text-white-75 font-weight-light"
								for="exampleFormControlTextarea1">Beer Description</label> <input
								type="text" class="form-control" id="exampleFormControlInput1"
								placeholder="Style" value="Style" name="style">
						</div>
						<div class="form-group">
							<label class="text-white-75 font-weight-light"
								for="exampleFormControlTextarea1">Beer Description</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								placeholder="Description" rows="3" name="description"></textarea>
						</div>
						<div class="form-group">
							<label class="text-white-75 font-weight-light" for="ABV">ABV</label>
							<select class="form-control" id="ABV" name="abv">
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10+</option>
							</select>
						</div>
						<div class="form-group">
							<label class="text-white-75 font-weight-light" for="ABV">Rating</label>
							<select class="form-control" id="ABV" name="rating">
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</div>
						<div class="form-group">
						<label class="text-white-75 font-weight-light" for="ABV">SRM(1-100)</label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" 
								value="0" name="srm">
						</div>
						<input class="btn btn-primary btn-md js-scroll-trigger" type="submit" value="SUBMIT" />
					</form>
				</div>
			</div>
		</div>
	</header>




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