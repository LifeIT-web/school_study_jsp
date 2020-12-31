<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%

	String id = null;
	if((session.getAttribute("id") == null) || (!((String)session.getAttribute("id")).equals("admin"))){
			out.println("<script>");
			out.println("location.href = 'loginform.jsp'");
			out.println("</script>");
	}

	String de_id = request.getParameter("id");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		pstmt = conn.prepareStatement("DELETE FROM member_1 WHERE id = ?");
		pstmt.setString(1, de_id);
		pstmt.executeUpdate();
		
		out.println("<script>");
		out.println("alert('삭제되었습니다.')");
		out.println("location.href='member_list.jsp'");
		out.println("</script>");
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
 %>
