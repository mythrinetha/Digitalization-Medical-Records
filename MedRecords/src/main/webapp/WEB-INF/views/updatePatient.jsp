<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Patient Details</title>
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
  width: 50%;  
 
}

</style>
</head>
<body>
<div class="bg">
<center>


<div class="p-3 mb-2 bg-dark text-light"><h2>Update Personal Information</h2></div>
<form:form method="POST" modelAttribute="patient">
		  <table  class="a">
			<tr colspan="2">
				<form:hidden path="id" />
			</tr>
			<tr>
				<td><form:label path="firstname"><h5>First Name</h5></form:label></td>
				<td><form:input path="firstname" size="50" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname"><h5>Last Name</h5></form:label></td>
				<td><form:input path="lastname" size="50" required="required"/></td>
			</tr>
			
			<tr>
				<td><form:label path="gender"> <h5>Gender</h5></form:label></td>
				<!--  <td><form:input path="gender" size="50" required="required" /></td>-->
				<td><form:select path="gender">  
        <form:option value="Male" label="Male"/>  
        <form:option value="Female" label="Female"/>  
        <form:option value="Other" label="Other"/>  
         
        </form:select>  </td>
			</tr>
			<tr>
				<td><form:label path="profession"> <h5>Profession</h5></form:label></td>
				<td><form:input path="profession" size="50" required="required" /></td>
			</tr>
			
			
			
			<tr>
				<td ><input type="submit" value="SAVE" class="btn btn-success"/></td>
				<td><a type="button"  href="/listOfRecords" class="btn btn-warning">BACK</a>
				
			</tr>
		</table>
		<br>
		<br>
		
	</form:form>

</center>
</div>
</body>
</html>