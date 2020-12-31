<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>


<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("SELECT * FROM member_1 WHERE id=?");
		pstmt.setString(1, id);
		rs = pstmt.executeQuery(); // 퀘리에 의해 제공되는 데이터들을 담기위해 ResultSet를 받음.
		
		if(rs.next()){ /* 로그인 페스워드 같으면 메인으로.. */
			if(pass.equals(rs.getString("password"))){
				session.setAttribute("id", id);
				out.println("<script>");
				out.println("location.href = 'main.jsp'"); /* 5.로그인 맞으면 접속 */
				out.println("</script>");
			}
		}
		/* 로그인 페스워드 다르면 loginform으로 돌아감.. */
		out.println("<script>");
		out.println("location.href = 'loginform.jsp'");
		out.println("</script>");
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			rs.close();
			pstmt.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
