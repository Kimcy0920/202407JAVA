<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>To Page</h1>
<h2>${kk}</h2><br>

<ul>
<c:forEach var="i" begin="1" end="9">
	<li>${gugu} * ${i} = ${gugu*i}</li><br>
</c:forEach>
</ul>
</body>
</html>