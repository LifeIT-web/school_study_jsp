<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>grade All Test</title>
</head>
<body>

<h2>JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제</h2>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="score" class="javaBean.GradeBean" scope="page"/>

<hr size="5" color="green">

<h3>폼에서 전달받은 이름과 성적을 JavaBeans GradeBean에 저장</h3>
이름 : <%= request.getParameter("name")%>
성적 : <%= request.getParameter("point")%><p><%-- 
<jsp:setProperty property="*" name="score"/> --%>
<!-- 하나하나 집어서 저장할게 아니라 *(All)하나로 한꺼번에 저장하여 쓸수 있다.(set만 가능)  -->
<jsp:setProperty property="name" name="score"/>
<jsp:setProperty property="point" name="score"/>
<!--
grade.jsp와 비교해보면 param 설정값이 없다. 그 이유는  
param과 property 값이 같으면 param을 생략해줘도 useBean 속성으로 인해 자동으로 값을 설정함(502p) 
-->

<hr size="5" color="#dd7777">
<h3>JavaBeans GradeBean에 저장된 정보를 조회 출력</h3><p>
이름 : <jsp:getProperty property="name" name="score"/><br>
성적 : <jsp:getProperty property="point" name="score"/><br>
등급 : <jsp:getProperty property="grade" name="score"/><br>
전화 : <jsp:getProperty property="tel" name="score"/><br>
</body>
</html>