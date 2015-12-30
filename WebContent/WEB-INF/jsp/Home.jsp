<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home for Gaurav</title>
</head>
<body>
<p><b>Welcome from <c:out value="${name}"></c:out></b></p>
	<p> <a href="${pageContext.request.contextPath}/offers">Show Current Offers</a></p>
	<p> <a href="${pageContext.request.contextPath}/addnewoffer">Add New Offers</a></p>
</body>
</html>
</body>
</html>