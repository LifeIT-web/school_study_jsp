<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core : IF</title>
</head>
<body>

<h2>JSTL Core Tag : if</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

안녕하세요
<c:set var="today" value="<%= new java.util.Date() %>" />
<c:if test="${today.hours < 13 }" var="bool">
점심식사는 하셨으?<br>
</c:if>

<p>

<hr size="5" color="red">
\${today.hours} = ${today.hours} <br>
\${bool} = ${bool}


</body>
</html>