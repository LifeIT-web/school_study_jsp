<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인터페이스 ResultSetMetaData 조회</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<h2>테이블 student의 테이블 메타데이터 조회 프로그램</h2>

<%
	Connection con = null;
	Statement stmt = null;
	
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	
	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(dbURL, "scott", "tiger");
		stmt = con.createStatement();
		ResultSet result = stmt.executeQuery("select * from student"); 
		// 여기선 ?못씀 Statement보다 향상된게 PreparedStatement
		ResultSetMetaData rsmd = result.getMetaData(); //해당 객체의 데이터를 쉽게 가져옴
		// https://m.blog.naver.com/heoguni/130170563284
		int cCount = rsmd.getColumnCount();
		// (https://docs.oracle.com/javase/7/docs/api/java/sql/ResultSetMetaData.html)
%>

	<table width="100%" border="2">
		<tr>
			<td align="center"><b>아이디</b></td>
			<td align="center"><b>암호</b></td>
			<td align="center"><b>이름</b></td>
			<td align="center"><b>입학년도</b></td>
			<td align="center"><b>학번</b></td>
			<td align="center"><b>학과</b></td>
			<td align="center"><b>휴대폰1</b></td>
			<td align="center"><b>휴대폰2</b></td>
			<td align="center"><b>주소</b></td>
			<td align="center"><b>이메일</b></td>
		</tr>
		<tr>
		<%
			for(int i = 1; i <= cCount; i++){
		%>
			<td align="center"><%=rsmd.getColumnName(i) %></td>
		<%
			}
		%>
		</tr>
		<tr>
		<%
			for(int i = 1; i <= cCount; i++){
		%>
			<td align="center"><%=rsmd.getColumnTypeName(i) %></td>
		<%
			}
		%>
		</tr>
		<tr>
		<%
			for(int i = 1; i <= cCount; i++){
		%>
			<td align="center"><%=rsmd.getPrecision(i) %></td>
		<%
			}
		%>
		</tr>

		<tr>
		<%
			for(int i = 1; i <= cCount; i++){
		%>
			<td align="center"><%=i %></td>
		<%
			}
		%>
		</tr>
		<%
			result.close();
		}
		catch(Exception e){
			out.println("Oracle 데이터베이스 scott의 student 조회에 문제가 있습니다.");
			out.println(e.toString());
			e.printStackTrace();
		}
		finally{
			if(stmt != null){
				stmt.close();
			}
			
			if(con != null){
				con.close();
			}
			
		}
		%>
	</table>
</body>
</html>