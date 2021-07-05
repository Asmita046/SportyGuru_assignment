<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<%@ include file="master.jsp" %>
<style type="text/css">
	.error{
		color: red;
	}
</style>
</head>
<body>
	<div class="container">
	<h1>Registration Form</h1>
	<hr>
		<form:form action="processform" method="post" modelAttribute="student">
		  <div class="form-group">
		    <label >Name: </label>
		    <input type="text" class="form-control"  placeholder="Enter name" name="name" value="${student.name}">
		    <input type="hidden" name="id" value="${student.id}">
		    <form:errors path="name" class="error"></form:errors>
		  </div>
		  <div class="form-group">
		    <label >Email: </label>
		    <input type="text" class="form-control"  placeholder="Enter email" name="email" value="${student.email}">
		    <form:errors path="email" class="error"></form:errors>
		  </div>
		  <br/>
		  <div class="form-group">
		    <label>Gender: </label>
		    <input type="radio" value="Male" name="gender" ${student.gender == 'Male' ? 'checked' : ' ' } />Male
		    <input type="radio" value="Female" name="gender" ${student.gender == 'Female' ? 'checked' : '' } />Female
		    <form:errors path="gender" class="error"></form:errors>
		  </div>
		  <br/>
		  <div class="form-group">
		    <label >Username</label>
		    <input type="text" class="form-control"  placeholder="Enter username" name="username" value="${student.username}">
		    <form:errors path="username" class="error"></form:errors>
		  </div>
		  <div class="form-group">
		    <label>Password</label>
		    <input type="password" class="form-control" placeholder="Enter password" name="password" value="${student.password}">
		    <form:errors path="password" class="error"></form:errors>
		  </div>
		  <br>
		  <hr/><br>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
</body>
</html>