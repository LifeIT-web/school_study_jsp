<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
	Connection conn = null;
	String sql = "SELECT * FROM STUDENT_1";
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			out.println("<h3>" + rs.getInt("NUM") + "," + rs.getString("NAME") + "</h3>");
		}
		
		rs.close();
		
	}catch(Exception e){
		out.println("<hr size='5' color='green'>");
		out.println("<h3>데이터 가져오기를 실패했음</h3>");
		e.printStackTrace();
	}
%>