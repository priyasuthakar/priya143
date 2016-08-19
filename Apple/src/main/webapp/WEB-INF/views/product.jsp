<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="/WEB-INF/views/AdminHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Shopping</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!--Angularjs library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
h1 {
	font-size: 24px;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
	font-size: 24px;
}

.navbar {
	margin-bottom: 0;
	background-color: #622569;
	z-index: 9999;
	border: 0;
	font-size: 18px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 2px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar .navbar-brand {
	color: #FFFFFF !important;
}

.navbar .li a {
	color: #FFF !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #622569 !important;
	background-color: violet !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #FFCCCC !important;
}

footer .glyphicon {
	font-size: 24px;
	margin-bottom: 20px;
	color: #622569;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
</style>
</head>
<body>
	<h3>${editproduct}</h3>
	<h3>${addproduct}</h3>
	<h1>${success}</h1>

	<div class="container">
		<form:form action="product" method="post" modelAttribute="product">

			<%-- 	<div class="control-group">
				<form:label path="id" class="col-lg-4">
					<spring:message text="ID" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:input path="id" class="form-control" />
					<form:errors path="id" />
					<c:choose>
						<c:when test="${!empty productTable.id }">
							<td><form:input path="id" disabled="true" readonly="true" /></td>
						</c:when>
						<c:otherwise>
							<td><form:input path="id" /></td>
						</c:otherwise>
					</c:choose>
				</div>
			</div> --%>
			<div class="control-group">
				<form:label class="col-lg-4" path="name">
					<spring:message text="NAME" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:input path="name" placeholder="Enter name" />
					<form:errors path="name" />
				</div>
			</div>
			<div class="control-group">
				<form:label class="col-lg-4" path="color">
					<spring:message text="COLOR" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:input path="color" placeholder="Enter color" />
				</div>
			</div>
			<div class="control-group">
				<form:label class="col-lg-4" path="price">
					<spring:message text="PRICE" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:input path="price" placeholder="Enter price" />
					<form:errors path="price" />
				</div>
			</div>
			<div class="control-group">
				<form:label class="col-lg-4" path="catagory">
					<spring:message text="CATAGORY" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:select path="catagory.name" items="${catagoryList}"
						itemValue="name" itemLabel="name" placeholder="Enter category" />
				</div>
			</div>
			<div class="control-group">
				<form:label class="col-lg-4" path="supplier">
					<spring:message text="SUPPLIER" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" placeholder="Enter supplier" />
				</div>
			</div>
			<div class="control-group">
				<form:label class="col-lg-4" path="image">
					<spring:message text="IMAGE" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:input type="file" path="image" />
				</div>
			</div>
			<div class="control-group">
				<form:label class="col-lg-4" path="discription">
					<spring:message text="DISCRIPTION" />
				</form:label>
				<div class="col-lg-4 controls">
					<form:input path="discription" placeholder="Enter discription" />
					<form:errors path="discription" />
				</div>
			</div>
			<div class="control-group">
				<c:if test="${!empty productTable.name }">
					<form:button type="submit" value="Add Product" />
				</c:if>
				<c:if test="${empty productTable.name }">
					<form:button type="submit" value="Edit Product" />
				</c:if>
			</div>
		</form:form>
	</div>


</body>
</html>