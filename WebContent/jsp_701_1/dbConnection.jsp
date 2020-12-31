<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database 연결 테스트</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<h2>데이터베이스 드라이버와 DBScott 연결 점검 프로그램</h2>

<%
	try{
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String dbURL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
										/* localhost(@빼도됨), 자신 ip주소 써도 됨(@빼야함)  내컴 : orcl 대신 xe  */
	
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "scott", "tiger");
		out.println("Oracle 데이터베이스 scott에 성공적으로 접속했습니다.");
		con.close();
		
	}catch(Exception e){
		out.println("Oracle 데이터베이스 scott 접속에 문제가 있습니다. <hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}

%>

</body>
</html>