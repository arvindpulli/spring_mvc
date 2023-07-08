<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 class="d-flex justify-content-center">Employees Details</h1>

<table class="table table-hover">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Gender</th>
		<th>Salary</th>
		<th>Delete</th>
		<th>Edit</th>
	</tr>
	
	<c:forEach var="e" items="${emps}">
		<tr>
			<td>${e.id}</td>
			<td>${e.name}</td>
			<td>${e.address}</td>
			<td>${e.gender}</td>
			<td>${e.salary}</td>
			<td><a href="delete?id=${e.id}"><button class="btn btn-success">Delete</button></a></td>
			<td><a href="edit?id=${e.id}"><button class="btn btn-warning">Edit</button></a></td>
		</tr>
	</c:forEach>
	
	</tr>
	
</table>
</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>