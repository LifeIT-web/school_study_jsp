<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = null;

	if(session.getAttribute("id") != null){
		id = (String)session.getAttribute("id");
	}else{
		out.println("<script>");
		out.println("location.href='loginform.jsp'");
		out.println("</script>");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 메인 페이지</title>
<!-- 로그인 접속 화면 -->
</head>
<body>

<h3><%= id %> 로 로그인하셨습니다.</h3>
<hr size="5" color="cyan">

<!-- 게시판 관리자 : 관리자가 관리하는 유일한 아이디 -->
<!-- 6. 관리자 접속 (관리자 창을 만들것임) -->
<% if(id.equals("admin")){ %>

<a href="member_list.jsp">관리자 모드 접속(회원 목록 보기)</a>

<%} %>
</body>
</html>