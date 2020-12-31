<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSTL Core : set </title>
</head>
<body>

<h2>JSTL Core Tag : set</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="foo" value="set Tag 태스트입니다." /> <!-- value의 값이 -->
\${foo} = ${foo}<br> <!-- foo에 들어가 출력 -->

<c:set var="n">
24 <!-- value -->
</c:set> <!-- value값이 <> 24 <> 에 있는 24값을 n에 넣어 출력 -->
\${n} = ${n} <br>

<c:set var="d">
31.54
</c:set>
\${d} = ${d} <br>
\${n + d} = ${n + d}<br>

<c:set var="b" value="true" />
\${!b} = ${!b} <br>

<c:set var="str" value="Hello set Tag!!!" scope="session" />
\${str} = ${str} <br>
\${sessionScope.str} = ${sessionScope.str}<br>

<c:set var="kbs" value="Lee" />
\${kbs} = ${kbs} <br>

<c:set var="kbs">
Lee
</c:set>
\${kbs} = ${kbs} <br>


</body>
</html>