<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 errorpage.jsp</title>
</head>
<body>
<%@ page errorPage="exception.jsp" %>

<% String[] str = {"갑사합니다.", "Thank you"}; %>
한국어로 <%= str[0] %>이고, <br>
영어로는 <%= str[2] %>이다.
</body>
</html>