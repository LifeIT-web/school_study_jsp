<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 increment.jsp</title>
</head>
<body>

<% int i = 0; %>

i = <%= ++i %>
<%--
(학원 컴퓨터 기준)
C:\jsp_2020\jsp_workspace\.metadata\.plugins\org.eclipse.wst.server.core
\tmp0\work\Catalina\localhost\first_jsp\org\apache\jsp\jsp_005f1\increment.java에
JSP가 서블릿으로 바뀌는 과정을 보여줌 그 파일에 대략 116줄에 있음(이 파일이 서블릿으로 바뀐 내용이)
JSP가 자바로 바뀐다.(이것이 서블릿임) 나중에 이 파일을 건드릴 예정 알아둬야 함.
 --%>
</body>
</html>