<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login1 예제</title>
</head>
<body>
<h2>로그인 예제</h2>
<%
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String passpw = request.getParameter("passpw");
	String tel = request.getParameter("tel");
%>

<%
	if(userid.equals("")){
%>

	<jsp:include page="loginHandle.jsp">
		<jsp:param value="guest" name="userid"/>
		<jsp:param value="anonymous" name="passpw"/>
		<jsp:param value="010-2659-3247" name="tel"/>
	</jsp:include>
		<!-- text안에 아무것도 입력 안받아도 결과창이 나오게 도와줌 -->
	
<%
	} else {
%>

	<jsp:include page="loginHandle.jsp"/>

<%
	}
%>

</body>
</html>