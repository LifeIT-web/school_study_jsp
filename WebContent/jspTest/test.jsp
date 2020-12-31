<%@page import="com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<%
if(id == null || id.length() == 0){
%>
<script>
alert("아이디를 입력하시오");
</script>
<a href="../html/test.html">로그인하기</a>
<%
}else {
	if(id.equals("admin") && pw.equals("1234")){

%>

	<h1>관리자로 로그인 했습니다.</h1>
	<form>
		<input type="button" value="회원정보 삭제">
		<input type="button" value="회원정보 수정">
	</form>
<%
	}else{
%>

	<h1>환영함 <%=id %>님!!</h1>
<%
	}
}
%>
</body>
</html>