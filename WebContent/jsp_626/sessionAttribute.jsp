<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> sessionAttribute 예제 / invalidate() 메소드 기능 </title>
</head>
<body>
<%@ page import="java.util.Enumeration, java.util.Date" %>

	<h1>세션 예제</h1>
	
	<hr size="5" color="red">
	
	<h2>세션 만들기</h2>
	<%
		session.setAttribute("id", 12);
		session.setAttribute("pwd", 123);
		session.setAttribute("lee", 324); 
		// 주로 로그인 할때 데이터값을 가져와 그 안쪽에서 비교를 하고 그 안의 데이터를 가져오는 방식
	%>
	
	<hr size="5" color="cyan">
	
	<h2>세션 조회</h2>
	세션 id : <%=session.getId() %><br>
	세션 CreationTime : <%= new Date(session.getCreationTime())%><br><br>
	<%
		Enumeration<String> e = session.getAttributeNames();
		while(e.hasMoreElements()){
			String name = e.nextElement();
			int value = (int) session.getAttribute(name);
			// name값을 통해 value값을 가져옴 이때 getAttribute는 object로 리턴
			// 그래서 int나 String으로 형변환
			out.println("세션 name : " + name + ", ");
			out.println("세션 value : " + value + "<br>");
			
		}
	%>
	<br> 세션 Invalidate : <% //session.invalidate(); %>
</body>
</html>