<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Shop 회원정보 검색</title>
</head>
<body>
<%@page import="java.util.ArrayList, shopBean.ShopEntity"%>
<h2>회원 정보 검색</h2>
<jsp:useBean id="shb" class="shopBean.ShopDatabase" scope="page" />

<%
	ArrayList<ShopEntity> list = shb.getShopInfo();
	int counter = list.size();
	if(counter > 0){
%>

	<table width="100" border="2">
		<tr>
			<td align="center">아이디</td>
			<td align="center">이름</td>
			<td align="center">출생년도</td>
			<td align="center">주소</td>
			<td align="center">휴대폰1</td>
			<td align="center">휴대폰2</td>
			<td align="center">키</td>
			<td align="center">입사일</td>
		</tr>
<%
	for(ShopEntity sei : list){
%>
		<tr>
			<td align="center"><%=sei.getUserid() %></td>
			<td align="center"><%=sei.getUsername() %></td>
			<td align="center"><%=sei.getBirthyear() %></td>
			<td align="center"><%=sei.getAddr() %></td>
			<td align="center"><%=sei.getMobile1() %></td>
			<td align="center"><%=sei.getMobile2() %></td>
			<td align="center"><%=sei.getHeight() %></td>
			<td align="center"><%=sei.getMdate() %></td>
		</tr>
<%
	}
}
%>
	</table>
	<p>
	<hr size="5" color="red">
	조회된 학생 수가 <%=counter %>명입니다.
</body>
</html>