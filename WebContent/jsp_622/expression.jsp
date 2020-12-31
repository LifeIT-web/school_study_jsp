<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSP 예제 expression.jsp </title>
</head>
<body>

<% int year = 365; %>

		<% out.println("1년은 약 몇 주일까요?"); %>
		<%= year / 7 %>
		<%= " 주 입니다. <br>" %>
		
		<%-- 위의 내용(Expression(<%= %>))은 out.println(Scriptlet(<% %>))과 같다
			Expression != Scriptlet  --%>
		<% out.println(year/7 + " 주 입니다."); %>
		<% out.println("뭐지?"); %>
		
</body>
<!-- 
	out.println() html 코드안에서 개행 된것 따라서 화면출력하면 개행되지 않고 한줄로 출력되는 이유
	즉 <br>코드 입력 해줘야 화면 출력할때 개행 된다.
 -->
</html>