<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DMR</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>

body, html {
  height: 100%;
}

.bg { 
  /* The image used */
  background-image: url("https://mdbootstrap.com/img/Photos/Others/img (42).jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.block {
  display: block;
  width: 40%;
  border: none;
  background-color: #4CAF50;
  color: white;
  padding: 10px 10px;
  font-size: 13px;
  cursor: pointer;
  text-align: center;
  border-radius: 12px;
   
}
table.a {
  table-layout: auto;
  width: 70%;  
 
}

</style>


</head>
<body>
<div class="bg">
<center>
	
	
	<div class="p-3 mb-2 bg-dark text-light"><h2>Add Medical Record Information</h2></div>
	<br>
	<br>
	
	<form:form method="POST" modelAttribute="record">
		<table  class="a">
			<tr colspan="2">
				<form:hidden path="id" />
			</tr>
			<tr>
				<td><form:label path="diseasename"><h5>Disease Name</h5></form:label></td>
				<td><form:input path="diseasename" size="50" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="doctorname"><h5>Doctor Name</h5></form:label></td>
				<td><form:input path="doctorname" size="50" required="required"/></td>
			</tr>
			
			<tr>
				<td><form:label path="prescription"> <h5>Prescription</h5></form:label></td>
				<td><form:input path="prescription" size="50" required="required" /></td>
			</tr>
			<tr>
				<td ><input type="submit" value="SAVE" class="btn btn-success"/></td>
				<td><a type="button"  href="/listOfRecords" class="btn btn-warning">BACK</a></td>
				
			</tr>
		</table>
		<br>
		<br>
		<!--  <a type="button"  href="/listOfRecords" class="block">BACK</a>-->
	</form:form>


</center>
</div>
</body>
</html>