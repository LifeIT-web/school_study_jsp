<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 data_1.jsp</title>
</head>
<body>

<% java.util.Date today = new java.util.Date(); %>
<% out.print("현재 시각은 [" + today + "] 입니다"); %>

</body>
<!-- import="java.util.Date" 하면 java때 객체 생성하듯 가능 
	Date today = new Date();
 -->
</html>

