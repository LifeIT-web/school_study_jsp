<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.ArrayList, testBean.TestEntity" %>
<h2>회원 정보</h2>
<hr size="5" color = "red">
<jsp:useBean id="inf" class="testBean.TestDatabaseCP"></jsp:useBean>

<%
	ArrayList<TestEntity> list = inf.getInfo();
	int counter = list.size();
	if(counter > 0){
%>

	<table width="100%" border="2">
		<tr>
			<td align="center">사원이름</td>
			<td align="center">직급</td>
			<td align="center">부서</td>
		</tr>
<%
	for(TestEntity tey : list){
%>
		<tr>
			<td align="center"><%=tey.getEmp() %></td>
			<td align="center"><%=tey.getManager() %></td>
			<td align="center"><%=tey.getDepartment() %></td>
		</tr>
<%
		}
	}
%>
	</table>
</body>
</html>