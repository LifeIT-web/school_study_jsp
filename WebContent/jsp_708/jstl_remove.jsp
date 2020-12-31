<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSTL Core : remove </title>
</head>
<body>

<h2>JSTL Core Tag : remove</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="str" value="Hello set Tag!!!" scope="session" />
\${str1} = ${str} <br>
\${sessionScope.str} = ${sessionScope.str} <br>

<c:remove var="str" scope="page"/>
 <!-- page범위보다 session범위가 더강하기 때문에 출력이 됨  -->
\${str2} = ${str} <br>

<c:remove var="str" scope="session"/>
\${str3} = ${str} <br>

<c:set var="app" value="응용프로그램변수" scope="application" />
\${app4} = ${app} <br>
  
<c:remove var="app" scope="page"/>
\${app5} = ${app} <br>

<c:remove var="app" scope="session"/>
\${app6} = ${app} <br>

<c:remove var="app" scope="application"/>
\${app7} = ${app} <br>
 

</body>
</html>