<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
========toString() 내용=======<br>
<h1><%=exception.toString() %></h1><br>
========getMessage() 내용=======<br>
<h1><%=exception.getMessage() %></h1><br>
========printStackTrace() 내용=======<br>
<h1><% exception.printStackTrace(); %></h1><br>
<h3>
숫자만 입력 가능
<a href="add.html">다시하기</a></h3>
</body>
</html>