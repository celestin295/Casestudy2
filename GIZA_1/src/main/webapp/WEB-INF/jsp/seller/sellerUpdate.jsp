<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>

	<style type="text/css" >

		* {
			box-sizing: border-box;
		}
		/* Header/Blog Title */
		.bg-light {
			background-color: #2196f3!important;
		}

		.container {
			margin-top: 10px;
			padding: 10px;
			background-color: #b2dfdb!important;
		}

		.header h1 {
			font-size: 50px;
		}

		.btn-primary {
			color: #fff;
			background-color: #ff5722;
			border-color: #e0e0e0;
		}

	</style>
</head>
<!--  navbar   -->
<body>

<center>
<div class="header">
	<h1>GIZA  Shopping Store</h1>
	<p>Here you can Add, Delete, Update and View Data of Products, Category.</p>
</div>
</center>
<nav class="navbar fixed-navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" style="width: auto">

		<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNav">

			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/seller">Add seller</a></li>
				<li class="nav-item"><a class="nav-link" href="/buyer">Add Buyer</a></li>
				<li class="nav-item"><a class="nav-link" href="/product">Add Product</a></li>
				<li class="nav-item"><a class="nav-link" href="/productEdit">Edit Product</a></li>
				<li class="nav-item"><a class="nav-link" href="/productDisplay">all Products</a></li>
				<li class="nav-item"><a class="nav-link" href="/categoryDisplay">all Category</a></li>
				<li class="nav-item"><a class="nav-link" href="/cartDisplay">View Cart</a></li>
				<li class="nav-item"><a class="nav-link" href="/logout">Logout</a>
			</ul>

		</div>

	</div>
</nav>
	<div class="container">
	<!-- navbar -->
	<form method="post" action="/seller"
		enctype="multipart/form-data">
		<!-- Create Recipe Form -->
		<h1>Seller</h1>
		<c:forEach var="error" items="${errors}">
			<span style='color: red'>${error}</span>
			<br>
		</c:forEach>
			<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">
					Seller First Name </label> <input type="text" class="form-control"
					id="fexampleFormControlInput1" name="firstName"
					value="${form.firstName }" />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("firstName") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">
					Seller Last Name </label> <input type="text" class="form-control"
					id="fexampleFormControlInput1" name="lastName"
					value="${form.lastName }"  />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("lastName") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>

		<div class="mb-3">
			<label for="formGroupExampleInput1" class="form-label">
				Seller Address </label> <input type="text" class="form-control"
												 id="fexampleFormControlInput1" name="address"
												 value="${form.address }"  />
			<c:forEach items="${errorFields}" var="errorField">
				<c:if test='${errorField.getField().equals("address") }'>
					<br>
					<span style='color: red'>${errorField.defaultMessage}</span>

				</c:if>
			</c:forEach>
		</div>

			<div>
				<button type="submit" value="submit" class="btn btn-primary">Add</button>
			</div>

		</div>

		<br> <br>
	</form>

</div>
</body>
</html>