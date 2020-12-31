<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 jspcomments.jsp</title>
</head>
<body>
<h1> HTML 주석과 JSP 주석의 차이 </h1>

<!-- 이것은 HTML 주석으로 웹 브라우저의 [소스 보기]에서 보임 -->
<%-- 다음은 자바 코드의 스크립트릿입니다. --%>

	<%
		String str;
	if(java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY) >= 12){
		str = "오후";
	} else {
		str = "오전";
	}
		%>
	<!-- 지금은 <%=str %>입니다. -->
	<%-- 지금은 <%=str %>입니다. --%>
	
	 <!-- : 홈페이지 소스에는 주석이 보임
	 		저 위에있는건 html주석안에 jsp가 들어간것
	 		저 자체가 html주석임.
	  -->
	
	지금 시각은 <%= new java.util.Date() %> 입니다.
	
</body>
</html>