<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardLoginHandle</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	String studentNum = request.getParameter("snum");
%>

<%
	if( userid == null ? true : userid.equals("")){
%>
	
	<h2>로그인</h2>
	<form method="post" action="forwardLogin1.jsp">
	아이디 : <input type="text" name="userid"><br>
	암호 : <input type="text" name="passwd"><p>
	<input type="submit" value="로그인">
	<input type="reset" value="다시입력">
	
	</form>
<%
	} else{
%>

	아이디 : <%=userid %>,
	비번 : <%=passwd %>,
	학번 : <%=studentNum %>
	<hr color="green" size="5"> 호갱님 반갑습니다.
<%
	}
%>
<!-- 결과가 null이 나오는데 이게 각각 태그(액션, 내장객체)들마다 스코프의 의미가 있는거 같음. -->
</body>
</html>