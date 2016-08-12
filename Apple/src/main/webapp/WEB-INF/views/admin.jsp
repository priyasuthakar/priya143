<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Shopping</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
.navbar {
	margin-bottom: 0;
	background-color: #20B2AA;
	z-index: 9999;
	border: 0;
	font-size: 18px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 2px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a, .navbar .navbar-brand {
	color: Black !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #20B2AA !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
</style>


</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> Shopping Site</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home">Home</a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
		</ul>
	</div>
	</nav>

	<div id="admin">
		<h1>Welcome to admin page</h1>
		<br> <br>
		<div class="container">
			<div class="col-md-1 col-md-offset-1">
				<a href="catagory">ADDCATEGORY</a>
			</div>
			<div class="col-md-1 col-md-offset-1">
				<a href="editcatagory">EDITCATEGORY</a>
			</div>
			<div class="col-md-1 col-md-offset-1">
				<a href="viewcatagory">VIEWCATEGORY</a>
			</div>
			<br> <br> <br>

			<div class="col-md-1 col-md-offset-1">
				<a href="#">ADDSUPPLIER</a>
			</div>
			<div class="col-md-1 col-md-offset-1">
				<a href="#">EDITSUPPLIER</a>
			</div>
			<div class="col-md-1 col-md-offset-1">
				<a href="#">VIEWSUPPLIER</a>
			</div>
			<br> <br> <br>
			<div class="col-md-1 col-md-offset-1">
				<a href="#">ADDPRODUCT</a>
			</div>
			<div class="col-md-1 col-md-offset-1">
				<a href="#">EDITPRODUCT</a>
			</div>
			<div class="col-md-1 col-md-offset-1">
				<a href="#">VIEWPRODUCT</a>
			</div>
		</div>
	</div>
	</br>
	</br>
	<img src=<c:url value="/resource/images/apple.jpg"/> width="2000"
		height="550">


</body>
</html>