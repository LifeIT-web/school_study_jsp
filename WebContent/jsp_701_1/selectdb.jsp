<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 예제 : 테이블 student 조회</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<h2>데이터베이스 univdb의 테이블 student 조회 프로그램</h2>

<hr size="5" color="red">

<h2>학생정보 조회</h2>

<%
	Connection con = null;
	Statement stmt = null;
	// String driverName = "org.gjt.mm.mysql.Driver" mySQL로 쓸때의 driverName
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String dbURL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	
	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(dbURL, "scott", "tiger");
		stmt = con.createStatement(); // SQL문으로 보내기 위한 객체메소드
		ResultSet result = stmt.executeQuery("select * from student");
%>
	<table border="2">
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

<%
	while(result.next()){

%>
	<tr>
		<td align="center"><%=result.getString(1) %></td>  <!-- 인덱스 값 1행의 열의 데이터를 가져와 출력 -->
		<td align="center"><%=result.getString(2) %></td>	<!-- 여기 td값들 몇개 지우면 이해됨  -->
		<td align="center"><%=result.getString(3) %></td>	<!-- 열이 세로 행이 가로 -->
		<td align="center"><%=result.getString(4) %></td>
		<td align="center"><%=result.getString(5) %></td>
		<td align="center"><%=result.getString(6) %></td>
		<td align="center"><%=result.getString(7) %></td>
		<td align="center"><%=result.getString(8) %></td>
		<td align="center"><%=result.getString(9) %></td>
		<td align="center"><%=result.getString(10) %></td>
	</tr>
<%
	}
	result.close();
	}
	catch(Exception e){
		out.println("Oracle 데이터베이스 scott의 student 조회에 문제가 생겼습니다");
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