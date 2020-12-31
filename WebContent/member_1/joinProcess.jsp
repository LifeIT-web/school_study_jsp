<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("INSERT INTO member_1 VALUES (?,?,?,?,?,?,?)");
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		pstmt.setString(4, addr);
		pstmt.setInt(5, age);
		pstmt.setString(6, gender);
		pstmt.setString(7, email);
		int result = pstmt.executeUpdate(); // 들어가는 행의 갯수를 받음 그래서 int
		
		if(result!=0){
			out.println("<script>");
			out.println("location.href='loginform.jsp'");
			out.println("</script>");
		}else{
			out.println("<script>");
			out.println("location.href='joinForm.jsp'");
			out.println("</script>");
			
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			pstmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>