<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
	Connection conn = null;
	String sql = "SELECT * FROM STUDENT_1";
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(
										sql,
										ResultSet.TYPE_SCROLL_SENSITIVE,
										ResultSet.CONCUR_UPDATABLE);
		ResultSet rs = pstmt.executeQuery();
		
		rs.last();// 마지막 레코드가 존재하는 행으로 이동
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");

		rs.first();// 처음 레코드가 존재하는 행으로 이동
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
		
		rs.absolute(3);// 3번째 레코드가 존재하는 행으로 이동
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
		
		rs.previous();// 이전 레코드가 존재하는 행으로 이동 
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
		
		}catch(Exception e){
			out.println("<hr size='5' color='green'>");
			out.println("<h3>데이터 가져오기를 실패했음</h3>");
			e.printStackTrace();
	}
%>