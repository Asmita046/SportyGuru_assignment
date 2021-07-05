<%@page import="spring.assignment.entities.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@ include file="master.jsp" %>
<style type="text/css">
	.error{
		color: red;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">Student Portal</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/profile/${id}">Profile</a>
	        </li>
	        <li class="nav-item position-absolute end-0">
	          <a class="nav-link" href="#">Welcome ${username}</a>
	        </li>
	      </ul>
	    </div>
  		</div>
	</nav>
	<div class="container">
	<br/>
	<br/>
	<h1>Update Your Details</h1>
	<br/>
	<hr/><br/>
		<form:form action="${pageContext.request.contextPath}/update" method="post" modelAttribute="student">
		  <div class="form-group">
		    <label >Name</label>
		    <input type="text" class="form-control"  placeholder="Enter name" name="name" value="${student.name}">
		    <input type="hidden" name="id" value="${student.id}">
		    <form:errors path="name" class="error"></form:errors>
		  </div>
		  
		  <div class="form-group">
		    <label >Email</label>
		    <input type="text" class="form-control"  placeholder="Enter email" name="email" value="${student.email}">
		    <form:errors path="email" class="error"></form:errors>
		  </div>
		  <div class="form-group">
		    <label>Gender</label>
		    <input type="radio" value="Male" name="gender" ${student.gender == 'Male' ? 'checked' : ' ' } />Male
		    <input type="radio" value="Female" name="gender" ${student.gender == 'Female' ? 'checked' : '' } />Female
		    <form:errors path="gender" class="error"></form:errors>
		  </div>
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
		  <button type="submit" class="btn btn-primary">Save</button>
		</form:form>
	</div>
</body>
</html>