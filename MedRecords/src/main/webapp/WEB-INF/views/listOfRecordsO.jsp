<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Records</title>
</head>
<body>
	<center>
		<h2>Digital Medical Records</h2>

		<a type="button" href="/addRecords">Add Record</a>

		<h3>List of Records</h3>
		<table border="1">
			<thead>
				<tr>
					<th>Doctor Name</th>
					<th>Disease name</th>
					<th>Prescription</th>
					<th colspan="2">Actions</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${records}" var="rec">

					<tr>
						<td>${rec.doctorname}</td>
						<td>${rec.diseasename}</td>
						<td>${rec.prescription}</td>
						<td><a type="button" href="/updateRecord?id=${rec.id}">Update</a></td>
						<td><a type="button" href="/deleteRecord?id=${rec.id}">Delete</a></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>

	</center>
</body>
</html>