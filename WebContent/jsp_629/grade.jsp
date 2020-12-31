<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP grade.jsp test</title>
</head>
<body>
	<hr size = "5" color ="red">

	<h2>JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제</h2>
	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="score" class="javaBean.GradeBean" scope="page" />
	<!-- scope 기본값은 page -->
	 
	<%-- <% javaBean.GradeBean score = new javaBean.GradeBean(); %> 
	--> 자바빈코드
	--%>
	
	<hr size = "5" color ="green">
	
	<h3>폼에서 전달받은 이름과 성적을 JavaBeans GradeBean 에 저장</h3><P>
	이름 : <%=request.getParameter("name1") %><p>
	성적 : <%=request.getParameter("point1") %>
		<%-- <% score.setName(request.getParameter("name")); %>
		<% score.setPoint(Integer.parseInt(request.getParameter("point"))); %> --%>
	
	<!--  폼으로부터 넘어온 name 의 파라미터 명이 "name" 일 경우 위와 같이 param을 기술해 준다. -->
	
	<jsp:setProperty property="name" name="score" param="name1"/> 
	<jsp:setProperty property="point" name="score" param="point1" />
	
	<!-- param과 property 값이 같으면 param을 생략해줘도 useBean 속성으로 인해 자동으로 값을 설정함(502p) -->
	
	<hr size = "5" color ="cyan">
	
	<h3>JavaBeans GradeBean에 저장된 정보를 조회 출력</h3><p>
	이름 : <jsp:getProperty property="name" name="score"/><br>
	점수 : <jsp:getProperty property="point" name="score"/><br>
	등급 : <jsp:getProperty property="grade" name="score"/><br>
	 
	<%-- 이름 : <%= score.getName() %><br>
	점수 : <%= score.getPoint() %><br>
	성적 : <%= score.getGrade() %><br> --%>
	 
	
</body>
</html>