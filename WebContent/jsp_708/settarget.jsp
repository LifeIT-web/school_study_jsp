<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core : set target</title>
</head>
<body>

<h2>JSTL Core Tag : set target</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="book" value="<%= new java.util.HashMap() %>" />
<c:set target="${book}" property="java" value="자바로 배우는 프로그래밍 기초" />
<c:set target="${book}" property="c" value="C로 배우는 프로그래밍 기초" />
<c:set target="${book}" property="jsp" value="JSP로 배우는 프로그래밍 기초" />
<c:set target="${book}" property="oracle" value="ORACLE로 배우는 프로그래밍 기초" />

\${book.java} = ${book.java} <p>
\${book.c} = ${book.c} <p>
\${book.jsp} = ${book.jsp} <p>
\${book.oracle} = ${book.oracle} <p>
      
\${book.java} = ${book["java"]} <p>
\${book.c} = ${book["c"]} <p>
\${book.jsp} = ${book["jsp"]} <p>
\${book.oracle} = ${book["oracle"]} <p>

							<!-- value값은 key값에 들어가 (target)객체화 된다. -->
							
<c:set target="${pageScope}" property="name" value="수선화" />
\${pageScope.name} = ${pageScope.name} <p>

<jsp:useBean id="oneday" class="java.util.Date" />
<c:set target="${oneday}" property="year" value="2020" />
\${oneday.year} = ${oneday.year} <p>
\${oneday.month+1} = ${oneday.month+1} <p>
\${oneday.date} = ${oneday.date} <p>


</body>
</html>