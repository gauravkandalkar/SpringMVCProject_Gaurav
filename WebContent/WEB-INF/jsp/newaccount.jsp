<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/form.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css">
<title>Login Page</title>
</head>
<body onload='document.f.username.focus();'>

	<!-- Header -->

	<header class="primary-header container group">

		<h1 class="logo">
			Gaurav's <br> Webpage
		</h1>

		<nav class="nav primary-nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/offers">Show
						Current Offers</a></li>
				<li><a href="${pageContext.request.contextPath}/addnewoffer">Add
						New Offers</a></li>
				<li><a href="${pageContext.request.contextPath}/newaccount">Register</a></li>
			</ul>
		</nav>
	</header>

	<section class="row">
		<div class="grid">
			<div class="form-style-10">
				<h1>Create New Account</h1>
				<c:if test="${param.error !=null }">
				<p class="loginerror">Login failed, invalid ID or Password</p>
				</c:if>
				<sf:form name='f' action='${pageContext.request.contextPath}/createaccount'
					method='POST' commandName="User">
					<div class="section">
						<span>1</span>Username:
					</div>
					<div class="inner-wrap">
						<label>Login ID<sf:input type='text' name='username' path='username'  value=''/></label>
					</div>
					
					<div class="section">
						<span>2</span>Email:
					</div>
					<div class="inner-wrap">
						<label>Email<sf:input type='email' name='email' path='email' /></label>
						<br>
					</div>

					<div class="section">
						<span>3</span>Password:
					</div>
					<div class="inner-wrap">
						<label>Password<sf:input type='password' name='password' path='password' /></label>
						<br>
						<label>Confirm Password<input type='password' name='confirmpassword' /></label>
					</div>

					 <div class="button-section">
						<input name="submit" type="submit" value="Create Account" />
					</div>

				</sf:form>
			</div>
		</div>
	</section>

</body>
</html>