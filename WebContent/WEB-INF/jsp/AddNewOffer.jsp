<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/form.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="form-style-10">
		<h1>
			Add New Offer<span>Provides details of new offer</span>
		</h1>
		<sf:form method="post"
			action="${pageContext.request.contextPath}/docreate"
			commandName="offers">
			<div class="section">
				<span>1</span>Name
			</div>
			<div class="inner-wrap">
				<label>Your Full Name <sf:input path="name" name="name"
						type="text" /></label>
			<sf:errors path="name" cssClass="error"></sf:errors>
			</div>
			

			<div class="section">
				<span>2</span>Email
			</div>
			<div class="inner-wrap">
				<label>Email Address <sf:input type="email" path="email"
						name="email" /></label>
			<sf:errors path="email" cssClass="error"></sf:errors>
			</div>
			


			<div class="section">
				<span>3</span>Your Offer
			</div>
			<div class="inner-wrap">
				<label>Offer Details <sf:textarea name="text" path="text"
						rows="10" cols="30"></sf:textarea></label> 
			<sf:errors path="text" cssClass="error"></sf:errors>
			</div>
			
			<div class="button-section">
				<input type="submit" name="Add Offer" />
			</div>
		</sf:form>
	</div>





</body>
</html>