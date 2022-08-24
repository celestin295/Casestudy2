<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Display</title>
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
					<li class="nav-item"><a class="nav-link" href="/home">Home</a>
					</li>

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
	<!-- navbar -->
	<div class="container">
	<h1> All Products </h1>

		<form action="/productDisp" method="get">

			Search <input type="text" name="search" class="form-control" >
			<br>
			<input type="submit"
															value="Submit" class="btn btn-primary" />
		</form>
		<br>

		<c:choose>
			<c:when test="${empty products }">
				<h1>No results found.</h1>
			</c:when>
			<c:otherwise>
				<table border="1" cellpadding="3">
					<tr>
						<td><b>ID</b></td>
						<td><b>Product name</b></td>
						<td><b>Quantity</b></td>
						<td><b>Price</b></td>
						<td><b>Category</b></td>
						<td><b>Action</b></td>
					</tr>

					<c:forEach items="${products}" var="products">
						<tr>
							<td>${products.id }</td>
							<td>${products.productName }</td>
							<td>${products.quantity }</td>
							<td>${products.price }</td>
							<c:forEach items="${products.categories}" var="Category">
							<td>${Category.category_name }</td>
							</c:forEach>
							<td><a href="/deleteProduct?id=${products.id }">Delete</a> <a href="/addToCart?id=${products.id}&productName=${products.productName }&price=${products.price }">Add To Cart</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>

	</div>
</div>
</body>

</html>