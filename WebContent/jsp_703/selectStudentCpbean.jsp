<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.util.ArrayList, studentbean.StudentEntity" %>
 
 <!-- DBCP 와 JDBC의 차이를 알고 싶다면 META-INF의 xml파일을 지우고 실행 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈즈 StudentDatabaseCP를 이용한 테이블 student 조회 프로그램</title>
</head>
<body>
<h2>자바 빈즈 StudentDatabaseCP를 이용한 테이블 student 조회 프로그램</h2>
<hr size="5" color="cyan">
<h2>학생 정보 조회</h2>
	
	<jsp:useBean id="stdtdb" class="studentbean.StudentDatabaseCP" scope="page"/>
	<!-- 자바로 따지면 객체생성하여 생성자 호출을 한거나 마찬가지 즉 연결 로드는 호출하면서 된것 -->
<%
	ArrayList<StudentEntity> list = stdtdb.getStudentList();
	int counter = list.size();
	if(counter > 0){
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
<%
	for(StudentEntity stdt : list){
%>
	<tr>
		<td align="center"><%= stdt.getId() %></td>
		<td align="center"><%= stdt.getPasswd() %></td>
		<td align="center"><%= stdt.getName() %></td>
		<td align="center"><%= stdt.getYear() %></td>
		<td align="center"><%= stdt.getSnum() %></td>
		<td align="center"><%= stdt.getDepart() %></td>
		<td align="center"><%= stdt.getMobile1() %></td>
		<td align="center"><%= stdt.getMobile2() %></td>
		<td align="center"><%= stdt.getAddress() %></td>
		<td align="center"><%= stdt.getEmail() %></td>
	</tr>
<%
		}
%>
</table>
<%
	}
%>
<p>
<hr size="5" color="#55dd99">
조회된 학생 수가 <%=counter %>명 입니다.
</body>
</html>