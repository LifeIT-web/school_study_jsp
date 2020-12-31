<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mem" class="javaBean.MemberBean" scope="page"/>
<jsp:setProperty property="*" name="mem"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member info print</title>
</head>
<body>

아이디 : <jsp:getProperty property="id" name="mem"/><br>
비밀번호 : <jsp:getProperty property="pass" name="mem"/><br>
이름 : <jsp:getProperty property="name" name="mem"/><br>
주소 : <jsp:getProperty property="addr" name="mem"/><br>
전화번호 : <jsp:getProperty property="tel" name="mem"/><br>
취미 : <jsp:getProperty property="hobby1" name="mem"/>
</body>
</html>