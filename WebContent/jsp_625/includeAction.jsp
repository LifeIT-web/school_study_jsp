<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- includeDirective -->
<title>includeAction 예제</title>
</head>
<body>
	<% int i = 12; %>
	<% int n = 365; %>
	
	1년은 <%= i %> 달 입니다.
	<jsp:include page="includeSub.jsp" />
	1년은 <%= n %> 달 입니다.
	<!-- include 지시어/액션 차이
		액션은 파일 내용 두개를 각각 컴파일하여 관리하기때문에 동적인 페이지를
		포함시킬때 유용하고,  지시어는 두개의 내용파일을 하나로 컴파일하여
		관리하기에 정적인 페이지에 유용 
	  -->
</body>
</html>