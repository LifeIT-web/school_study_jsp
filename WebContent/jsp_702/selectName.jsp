<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 예제 : 테이블 student name으로 조회</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<h2>테이블 student에서 이름으로 조회하는 프로그램</h2>

<hr size="5" color="cyan">

<h2>학생정보 조회</h2>

<%
	Connection con = null;
	PreparedStatement pstmt = null;
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = "select * from student where name like ?";
	// int sql = "select * from student where year = ?";
	String name = '%' + request.getParameter("sname") + "%";
	// int name = Integer.parseInt(request.getParameter("sname"));
	int rowCount = 0;
	
	try {
		Class.forName(driverName);
		con = DriverManager.getConnection(dbURL, "scott", "tiger");
		pstmt = con.prepareStatement(sql); // 쿼리를 담아서 사용할 수 있는 객체 (?을 쓸수 있는 객체)
		pstmt.setString(1, name); // ?기준으로 1자리에 name을 넣겠다.
		//  ?   ?   ? 물음표 앞부터 1, 2, 3... 에 name을 넣는것
		// pstmt.setInt(1, name);
		ResultSet result = pstmt.executeQuery();
		// 데이터가 테이블 형태로 출력되는 것 ResultSet
%>

<table width="100%" border ="2">
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
	<% 
		for(int i=1; i <= 10; i++){
	%>
		<td align="center"><%=result.getString(i) %></td>
<%-- 		<td align="center"><%=result.getString(2) %></td>
		<td align="center"><%=result.getString(3) %></td>
		<td align="center"><%=result.getString(4) %></td>
		<td align="center"><%=result.getInt(4) %></td>
		<td align="center"><%=result.getString(5) %></td>
		<td align="center"><%=result.getString(6) %></td>
		<td align="center"><%=result.getString(7) %></td>
		<td align="center"><%=result.getString(8) %></td>
		<td align="center"><%=result.getString(9) %></td>
		<td align="center"><%=result.getString(10) %></td>
 --%>	<%
		}
	%>	

	</tr>
<%
			rowCount++;
		}
		result.close();
	}
	catch(Exception e){
		out.println("oracle 데이터베이스 scott의 student 조회에 문제가 있습니다.");
		out.println(e.toString());
		e.printStackTrace();
	}
	finally{
		if(pstmt != null){
			pstmt.close();
		}
		
		if(con != null){
			con.close();
		}
	}
%>
</table>

<p><hr size="5" color="#dd6688">

<font color="blue">
<%
	if(rowCount == 0){
		out.println("조회된 결과가 없습니다.");
	}else {
		out.println("조회된 결과가 " + rowCount + "건 입니다.");
	}
%>
</font>
</body>
</html>