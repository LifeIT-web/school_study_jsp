<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Number1 - Add - Number2</h1>
<hr size="2" color="#ffffff50">
<jsp:useBean id="sum" class="javaBean.AddTest" scope = "page"/>


Number1 : <%=request.getParameter("num1") %><br>
Number2 : <%=request.getParameter("num2") %><br><br>


<jsp:setProperty name="sum" property="*" />


Number1 Add Number2 : <jsp:getProperty property="add" name="sum"/>

</body>
</html>