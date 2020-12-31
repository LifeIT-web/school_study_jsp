<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "INSERT INTO STUDENT_1 (NUM, NAME) VALUES (12, '홍길동')";
	String sql2 = "SELECT * FROM STUDENT_1 WHERE NUM = 12";
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		conn.setAutoCommit(false);
		// java의 AutoCommit()은 true임(기본)
		// java 에서 transaction 처리를 하려면
		// false로 해주어야함.
		
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		pstmt.close();

		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery();
		if(!rs.next()){
			conn.rollback();
			out.println("<hr size='5' color='red'>");
			out.println("<h3>데이터 삽입이 문제가 발생하여 롤백하였습니다.</h3>");
		}else {
			conn.commit();
			out.println("<hr size='5' color='green'>");
			out.println("<h3>데이터 삽입이 모두 완료하였습니다.</h3>");
		}
		pstmt.close();
		conn.setAutoCommit(true);
	}catch(Exception e){
		out.println("<h3>데이터 삽입에 실패하였음</h3>");
		e.printStackTrace();
	}
%>
