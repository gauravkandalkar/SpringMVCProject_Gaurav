<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css"> --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/form.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <!-- Header -->

	<header class="primary-header container group">

		<h1 class="logo">
			Gaurav's <br> Webpage
		</h1>

		<h3 class="tagline">August 24&ndash;26th &mdash; Chicago, IL</h3>

		<nav class="nav primary-nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/offers">Show
						Current Offers</a></li>
				<li><a href="${pageContext.request.contextPath}/addnewoffer">Add
						New Offers</a></li>
				<li><a href="register.html">Register</a></li>
			</ul>
		</nav>

	</header>
 --%>	
	
	<div class="form-style-10">
		<h1>
			Add New Offer<span>Provides details of new offer</span>
		</h1>
		<form method="post"
			action="${pageContext.request.contextPath}/docreate">
			<div class="section">
				<span>1</span>Name
			</div>
			<div class="inner-wrap">
				<label>Your Full Name <input name="name" type="text"></label>
			</div>

			<div class="section">
				<span>2</span>Email
			</div>
			<div class="inner-wrap">
				<label>Email Address <input type="email" name="email" /></label>
			</div>

			<div class="section">
				<span>3</span>Your Offer
			</div>
			<div class="inner-wrap">
				<label>Offer Details <textarea name="text" rows="10"
						cols="30"></textarea></label>
			</div>
			<div class="button-section">
				<input type="submit" name="Add Offer" /> <span
					class="privacy-policy"> <input type="checkbox" name="field7">You
					agree to our Terms and Policy.
				</span>
			</div>
		</form>
	</div>





</body>
</html>