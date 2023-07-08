<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>
</head>
<body>

  <div class="border-0 m-5">
	<form:form action="save" modelAttribute="employee">
		<div class="form-group">
		Employee ID: <form:input class="form-control" path="id"/>
		</div>
		<div class="form-group">
		Employee Name: <form:input class="form-control"  path="name"/>
		</div>
		<div class="form-group">
		Employee Address: <form:input class="form-control" path="address"/>
		</div>
		<div class="form-group">
		Employee Gender: <form:input class="form-control" path="gender"/>
		</div>
		<div class="form-group">
		Employee Salary: <form:input class="form-control" path="salary"/>
		</div>
		<div class="form-group">
		<input class="form-control btn btn-primary" type="submit"/>
		</div>
	</form:form>
	</div>
	
	
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>