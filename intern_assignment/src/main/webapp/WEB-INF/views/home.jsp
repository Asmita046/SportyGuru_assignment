<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<%@ include file="master.jsp" %>
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
	${success=='success' ? '<div class="alert alert-success m-3" role="alert">
 		Profile Updated Successfully!!!
	</div>': '' }
	
</body>
</html>