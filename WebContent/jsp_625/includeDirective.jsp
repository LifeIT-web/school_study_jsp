<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- includeAction 과 비교 -->
<title>includeDirective 예제</title>
</head>
<body>

	<% int i = 12; %>
	<%// int n = 365; %>
	<!--
	 Duplicate local variable n (= error) include 요청하여 includeSub파일의 값을 가져왔는데
	 이 파일 안에서도 includeD의 변수와 같은게 있다는 (변수 중복) error
	 여기 파일 실행 후 서블릿으로 확인하면 이해됨.
	 -->
	<% int days = 365; %>
	
	1년은 <%= i %> 달 입니다.
	<%@ include file="includeSub.jsp" %>
	1년은 <%= days %> 달 입니다.
	<!-- include 지시어/액션 차이
		액션은 파일 내용 두개를 각각 컴파일하여 관리하기때문에 동적인 페이지를
		포함시킬때 유용하고,  지시어는 두개의 내용파일을 하나로 컴파일하여
		관리하기에 정적인 페이지에 유용 
	  -->
</body>
</html>