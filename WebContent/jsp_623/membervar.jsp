<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 membervar.jsp</title>
</head>
<body>

	
	<% int i = 0; %>
	[지역변수] i = <%= ++i %>
	<!--
	 지역변수는 선언한 다음에 쓸수 있다.
	선언을 밑에 하게되면 에러가 뜨는데 
	그 이유도 서블릿으로 들어가면 이해할 수 있다.
	 -->
	<p>
	
	[소속변수(전역)] memi = <%= ++memi %>
	<%! int memi = 0; %>
	<!--
	 소속변수는 선언을 나중에 해도 쓸수 있다.
	 그 이유는 서블릿으로 들어가면 이해 할 수 있다.
	 -->
</body>
</html>