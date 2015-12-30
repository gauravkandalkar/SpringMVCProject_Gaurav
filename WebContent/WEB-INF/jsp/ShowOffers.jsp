<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Offers</title>
</head>
<body>
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

</body>
</html>