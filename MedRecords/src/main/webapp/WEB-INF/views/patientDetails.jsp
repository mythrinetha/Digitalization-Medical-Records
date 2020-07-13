<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body, html {
	height: 100%;
}

.bg {
	/* The image used */
	background-image:
		url("https://mdbootstrap.com/img/Photos/Others/img (42).jpg");
	/* Full height */
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.block {
	display: block;
	width: 50%;
	border: none;
	background-color: #4CAF50;
	color: white;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
	text-align: center;
	border-radius: 12px;
	box-shadow: 0 9px #999;
}

.block:hover {
	background-color: #ddd;
	color: black;
}
table.a {
  table-layout: auto;
  width: 50%;  
 
}
</style>




</head>
<body>
	<div class="bg">
		<center>
			<div class="p-3 mb-2 bg-dark text-light">
				<h2>Personal Information</h2>
			</div>
			
			<a type="button" href="/addPatient" class="block">Add Patient</a>
			<br>
			<table  style="width: 500px;" class="table table-striped">

				<tbody>
					<c:forEach items="${patient}" var="pat">

						<tr>
							<th scope="row">First Name</th>
							<td>${pat.firstname}</td>
						</tr>
						<tr>
							<th scope="row">LastName</th>
							<td>${pat.lastname}</td>
						</tr>
						<tr>
							<th scope="row">Gender</th>
							<td>${pat.gender}</td>
						</tr>
						<tr>
							<th scope="row">Profession</th>
							<td>${pat.profession}</td>
						</tr>
						
						<tr >
							<td><a type="button" href="/updatePatient?id=${pat.id }"
								class="btn btn-warning">Update</a></td>
							<td><a type="button"  href="/listOfRecords" class="btn btn-warning">BACK</a></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>

		</center>
	</div>
</body>
</html>
