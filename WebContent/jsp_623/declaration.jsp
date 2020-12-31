<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제 declaration.jsp</title>
</head>
<body>

<% double radius = 4.8; %>

	<%!
		public double getArea(double r){
		return r * r * 3.14;
	}
	%>
	
	<%!
		public double getRound(double r){
		return 2 * r * 3.14;
	}
	%>
	
	반지름이 <%=radius %> 이고, 원의 면적은 <%=getArea(radius) + "\u33A0" %>이다.<br>
	원의 둘레은 <%=getRound(radius) + "\u339D" %>이다.
</body>
</html>