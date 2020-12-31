<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="header.jsp" %>
	<hr color="red" size="5"><p>
	include 지시자 : &lt;%@ include file="fine_name" %&gt; <p>
	<hr color="cyan" size="5"><p>
	<%@ include file="footer.html" %> 
	<!--
		 include file은 코드가 삽입됨(변수가 중복되는 문제가 발생될 수 있음) = 정적 
		 다른 것들은 결과가 삽입됨
	-->
	
</body>
</html>