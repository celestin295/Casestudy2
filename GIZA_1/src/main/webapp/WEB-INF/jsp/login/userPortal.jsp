<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
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
	body{
		background-color: #2196f3!important;
	}

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
<div class="container" >
	<h1><b>Welcome</b> ${user.fullName }</h1>
</div>
</body>

</html>
