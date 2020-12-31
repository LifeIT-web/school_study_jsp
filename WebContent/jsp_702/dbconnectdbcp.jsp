<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jakarta DBCP를 이용한 DB scott 연결 점검 프로그램</title>
</head>
<body>
<%@page import="java.sql.*, javax.sql.*, javax.naming.*" %>

<h2>Jakarta DBCP를 이용한 DB univdb 연결 점검 프로그램</h2>
<%
	try {
		InitialContext ctx = new InitialContext(); // 시작 컨텍스트
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB"); // 경로를 ds에 저장
		Connection con = ds.getConnection(); // ds로 DB연결한걸 con에 반환
		
		out.println("Oracle 데이터베이스 scott에 성공적으로 접속했음"); // 잘됬으면 출력
		con.close();
	} catch(Exception e){
		out.println("Oracle 데이터베이스 scott에 접속 문제 있음"); // 안됬을때 출력
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>

<!-- 
lookup( )은 리소스를 찾은 후 리소스를 사용할 수 있도록 객체를 반환해주는 메소드 입니다.
lookup( ) 메소드의 인자값으로는 찾으려는 리소스의 등록된 이름을 지정합니다.
우리가 찾으려는 리소스의 이름은 "jdbc/myoracle" 이고 
WAS인 톰캣에서 리소스를 관리하는 가상의 디렉터리는 "java:comp/env"입니다.
그래서 lookup( ) 메소드의 최종인자 값은 "java:comp/env/jdbc/myoracle"이 됩니다
 -->
</body>
</html>