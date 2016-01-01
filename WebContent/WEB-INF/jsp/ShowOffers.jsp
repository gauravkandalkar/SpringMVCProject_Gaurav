<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/form.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Offers</title>
</head>
<body>

	<!-- Header -->

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

	<section class="row">
		<div class="grid">
			<table border="1" width="100%">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>email</th>
					<th>Text</th>
				</tr>
				<c:forEach var="row" items="${offers}">
					<tr>
						<td><c:out value="${row.id}" /></td>
						<td><c:out value="${row.name}" /></td>
						<td><c:out value="${row.email}" /></td>
						<td><c:out value="${row.text}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</section>
</body>
</html>