<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<nav class="navbar navbar-inverse">

	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> <span class="glyphicon glyphicon-apple"></span>Shopping
				Site
			</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home"><span
					class="glyphicon glyphicon-home"></span>Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> Catagory <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="product">Desktop</a></li>
					<li><a href="product">Laptop</a></li>
					<li><a href="product">Iphone</a></li>
					<li><a href="product">Ipad</a></li>
					<li><a href="product">Ipod</a></li>
					<li><a href="product">Accessories</a></li>
				</ul></li>
			<li><a href="#portfolio"><span
					class="glyphicon glyphicon-pencil"></span>Portfolio</a></li>
			<li><a href="#about"><span class="glyphicon glyphicon-stats"></span>About
					Us</a></li>
			<li><a href="#contactus"><span
					class="glyphicon glyphicon-earphone"></span>Contact Us</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="cart"><span
					class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
			<!-- <li><a href="admin"><span class="glyphicon glyphicon-log-in"></span>
					Admin</a></li>
 -->
			<c:choose>
				<c:when test="${empty loggedInUser}">


					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="reg"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>


				</c:when>

				<c:when test="${not empty loggedInUser}">

					<li><a href="logout"><span
							class="glyphicon glyphicon-user"></span> Logout</a></li>

				</c:when>
			</c:choose>
		</ul>
	</div>
	</nav>
	<c:choose>

		<c:when test="${isAdmin==true }">
			<a href="admin.jsp"></a>
		</c:when>

		<c:when test="${isAdmin==false }">
			<a href="Home.jsp"><h2>${loginsuccess}</h2></a>
		</c:when>
		<c:when test="${invalidCredentials==true }">
			<a href="login.jsp"><h2>${errorMessage}</h2></a>
		</c:when>

	</c:choose>
</body>
</html>