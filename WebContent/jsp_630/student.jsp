<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> student Test </title>
</head>
<body>
<h2>JavaBean StudentBean을 이용한 예제</h2>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="student" class="javaBean.StudentBean" scope="page" />

<hr color="red" size="5">

<h3>폼에서 전달받은 학생정보를 그대로 자바빈 StudentBean에 저장</h3><p>
<jsp:setProperty property="*" name="student" />

<hr color="green" size="5">
<h3>JavaBean StudentBean에 저장된 정보를 조회 출력</h3>

학생 ID: <jsp:getProperty property="id" name="student"/><br>
학생 이름: <jsp:getProperty property="name" name="student"/><br>
학생 번호: <jsp:getProperty property="snum" name="student"/><br>
나이(생년) : <%=student.getAge() %> 살&nbsp;&nbsp;
(<jsp:getProperty property="year" name="student"/>)<br>

암호 : <jsp:getProperty property="pass" name="student"/><br>
전자메일 : <jsp:getProperty property="email" name="student"/><br>

</body>
</html>