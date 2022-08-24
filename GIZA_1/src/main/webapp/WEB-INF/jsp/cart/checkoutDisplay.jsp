<%@ page import="lombok.var" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
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
	background-color: #b2dfdb!important;
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
			font-size: 45px;
		}

		.btn-primary {
			color: #fff;
			background-color: #ff5722;
			border-color: #e0e0e0;
		}
		.header{
			background-color: aqua;
		}

	</style>
</head>
<!--  navbar   -->
<body>
<center>
	<div class="header">
		<h1>GIZA Online Store</h1>
		<img src ="/static/image/logo2.png" width="150" height="150" /></div>
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
	<h1> Checkout </h1>


		<div class="row">
			<div class="col-6">
				<div class="container">
				<form method="post" action=""
					  enctype="multipart/form-data">
					<!-- Create Recipe Form -->
					<h4>Shipping</h4>
					<c:forEach var="error" items="${errors}">
					<span style='color: red'>${error}</span>
					<br>
					</c:forEach>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							First Name </label> <input type="text" class="form-control"
														 id="fexampleFormControlInput1" name="productName"
														 value="${form.productName }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("productName") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Last Name </label> <input type="text" class="form-control"
													 id="fexampleFormControlInput1" name="quantity"
													 value="${form.quantity }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("quantity") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Postal Address </label> <input type="number" class="form-control"
												  id="fexampleFormControlInput1" name="price"
												  value="${form.price }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("price") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Streat Address </label> <input type="text" class="form-control"
													 id="fexampleFormControlInput1" name="category"
													 value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Country </label> <input type="text" class="form-control"
														   id="fexampleFormControlInput1" name="category"
														   value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Email </label> <input type="text" class="form-control"
													id="fexampleFormControlInput1" name="category"
													value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div>
						<button type="submit" value="submit" class="btn btn-primary">Place Order</button>
					</div>


			</form>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="container ">
				<h4> Cart </h4>
<br>
		<c:choose>
			<c:when test="${empty carts }">
				<h1>Please Add Products To Cart.</h1>
			</c:when>
			<c:otherwise>
				<table border="1" cellpadding="3">
					<tr>
						<td><b>ID</b></td>
						<td><b>Product name</b></td>
						<td><b>Price</b></td>
						<td><b>Quantity</b></td>
						<td><b>Amount</b></td>
						<td><b>Action</b></td>
					</tr>

					<c:set var="total" value="0"></c:set>
					<c:set var="totalitems" value="0"></c:set>
					<c:forEach items="${carts}" var="carts">
						<c:set var="total" value="${total + carts.price * carts.quantity }"></c:set>
						<c:set var="totalitems" value="${totalitems+1 }"></c:set>
						<tr>

							<td>${carts.id }</td>
							<td>${carts.productName }</td>
							<td>${carts.price }</td>
							<td><form method="get" action="/editCart"><input type="hidden" name="id" value="${carts.id }">  <input type="number" name="quentity" value="${carts.quantity }" style="width: 50px" > <input type="hidden" name="productName" value="${carts.productName }" > <input type="hidden" name="price" value="${carts.price }" > <input type="submit" value="Edit" > </form></td>
							<td>${carts.price * carts.quantity }</td>

							<td><a href="/deleteCart?id=${carts.id }">Delete</a> </td>
						</tr>
					</c:forEach>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Total Items:</td>
						<td>${totalitems }</td>
					</tr>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Shipping:</td>
						<td>Free</td>
					</tr>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Taxes:</td>
						<td>0</td>
					</tr>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Total Amount:$</td>
						<td>${total }</td>
					</tr>
				</table>

			</c:otherwise>
		</c:choose>

					<br>
					<br>

					<h4> Shipping & Delivery </h4>
					<p>Orders are delivered on business days (Monday-Friday) excluding public holidays. </p>
					<p>Tracking number</P>
				</div>
			</div>
		</div>
	</div>
</div>
<br/>
</body>

</html>
