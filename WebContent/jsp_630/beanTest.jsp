<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="beanTest" class="javaBean.BeanTest" scope="page"/>
<%-- <jsp:setProperty name="beanTest" property="*" /> --%>
<jsp:setProperty name="beanTest" property="name" />
<jsp:setProperty name="beanTest" property="addr" />
<jsp:setProperty name="beanTest" property="email" />
<jsp:setProperty name="beanTest" property="birthday" />
<jsp:setProperty name="beanTest" property="tel" />
<!-- 속성과 param이 같을 경우 param은 생략 가능 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javaBeanTest test</title>
</head>
<body>

<h1>자바빈 속성 값 출력</h1>
<b>이름1 : </b> <%=beanTest.getName() %><br>
<b>이름2 : </b> <jsp:getProperty property="name" name="beanTest"/><br>
<b>주소 : </b> <%=beanTest.getAddr() %><br>
<b>이메일 주소 : </b> <%=beanTest.getEmail() %><br>
<b>생년월일 : </b> <%=beanTest.getBirthday() %><br>
<b>전화번호 : </b> <%=beanTest.getTel() %><br>
</body>
</html>