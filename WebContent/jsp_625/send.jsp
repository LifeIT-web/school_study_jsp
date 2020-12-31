<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send 예제</title>
</head>
<body>
<% response.sendRedirect("http://" + request.getParameter("url")); %>
</body>
</html>