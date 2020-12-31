<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginHandle 예제</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");
	String passpw = request.getParameter("passpw");
	String tel = request.getParameter("tel");
%>

<%
	if(userid.equals("guest")) {
		out.println("회원이 아니시군요. 반갑습니다.<br>");
		out.println("다음으로 로그인 하쇼<hr>");
		
	} else {
		out.println("회원님 반갑슴네다. <hr color=red size=5> ");
	}
%>

	아이디 : <%=userid %>
	암호 : <%=passpw %>
	전화번호 : <%=tel %>
</body>
</html>