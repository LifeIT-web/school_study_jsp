<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<% 
	String id = null;
	/* id 가 null이거나 admin이 아니라면 loginform으로 다시 가라 */
	if((session.getAttribute("id") == null) || (!((String)session.getAttribute("id")).equals("admin"))){
		out.println("<script>");
		out.println("location.href = 'loginform.jsp'");
		out.println("</script>");
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("SELECT * FROM member_1");
		rs = pstmt.executeQuery();
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 관리자모드(회원 목록 보기)</title>
<style>
	table{
		margin : auto;
		width : 400px;
		border : 1px solid gray;
		text-align : center;
	}
	.td_title{
		font-weight: bold;
		font-size: x-large;
	}
</style>
</head>
<body>

<table>
	<tr><td colspan="2" class="td_title">회원목록</td></tr>
	<%while(rs.next()){ %>
	<tr>
		<td>
			<%= rs.getString("id") %>
		</td>
		<td>     <!-- info.jsp에 id값 가져오기 7. 정보 보기-->
			<a href="member_info.jsp?id=<%=rs.getString("id")%>">
			정보
			</a>
		</td>
		<td>    <!-- id값을 가져와 삭제하기 8. 삭제하기 -->
			<a href="deleteProcess.jsp?id=<%=rs.getString("id")%>">
			삭제
			</a>
		</td>
	</tr>
	<%} %>	
</table>
</body>
</html>