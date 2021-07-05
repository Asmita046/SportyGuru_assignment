<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@ include file="master.jsp" %>
<style type="text/css">
	.error{
		color: red;
	}
</style>
</head>
<body>
	<div class="container">
	<h1>Login Here</h1><hr>
		<form:form action="checkuser" method="post" modelAttribute="student">
		  <div class="form-group">
		    <label >Username</label>
		    <input type="text" class="form-control"  placeholder="Enter username" name="username">
		    <form:errors path="email" class="error"></form:errors>
		  </div>
		  <div class="form-group">
		    <label>Password</label>
		    <input type="password" class="form-control" placeholder="Enter password" name="password">
		    <form:errors path="password" class="error"></form:errors>
		  </div>
		  <br/>
		  <hr/>
		  <br/>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
</body>
</html>