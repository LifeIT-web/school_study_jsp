<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>

<% 
   Connection con = null;
   String sql = "INSERT INTO student_1 (num, name) VALUES (?, ?)";
   
   try {
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
      con = ds.getConnection();
      PreparedStatement pstmt = con.prepareStatement(sql);
      
      for(int i = 3; i <= 9; i++) {
         pstmt.setInt(1, i);
         pstmt.setString(2, "백합");
         
         if(pstmt.executeUpdate() != 0) {
            out.println("<hr color='green' size='5'");
            out.println("<h3>" + i + "번 레코드를 등록하였습니다</h3>");
         }
      }
   }
   catch(Exception e) {
      out.println("<hr color='#FF7E7E' size='5'");
      out.println("<h3>레코드 등록에 실패하였습니다</h3>");
      e.printStackTrace();
   }
%>