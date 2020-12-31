<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP score.jsp</title>
</head>
<body>

<h2>JavaBeans를 이용한 학생의 이름과 성적의 저장과 조회 예제</h2>
<jsp:useBean id="score" class="javaBean.ScoreBean" scope="page" />

<!--

	 12번 문장 : ScoreBean score = new ScoreBean()
	 
-->

<hr color="red" size="5">
<h3>이름과 성적을 JavaBeans ScoreBean에 저장</h3><p>

이름 : <%="수선화" %><p>
성적 : <%="85" %><p>
전화번호 : <%="010-2009-3123" %>

<jsp:setProperty name="score" property="name" value="수선화" />
<jsp:setProperty name="score" property="point" value="85" />
<jsp:setProperty name="score" property="tel" value="010-2009-3123" />

<!--
	
	
	 score.setName("수선화");
	 score.setPoint("85");
	 
	
-->

<hr color="green" size="5">

<h3>JavaBeans ScoreBean에 저장된 정보를 조회 출력</h3><p>
이름 : <jsp:getProperty name="score" property="name"/><p>
성적 : <jsp:getProperty name="score" property="point"/>
성적 : <jsp:getProperty name="score" property="tel"/>
 
<!--
	
	score.getName();
	score.getPoint();
	
 -->



</body>
</html>