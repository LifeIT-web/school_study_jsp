<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL SQL Tag Test</title>
</head>
<body>

<h2>JSTL SQL Tag : update, dateParam</h2>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<hr>

<h2>전체 게시판 조회</h2>
<sql:setDataSource var="ds" dataSource="jdbc/OracleDB"/>
<!-- DBCP에서 ds를 가지고 DB에 연결한 것과 유사 -->
<sql:query var="rs" dataSource="${ds}" sql="select * from board_1"/>

<c:forEach var="brdRow" begin="0" items="${rs.rows}">
${brdRow.id}, ${brdRow.name}, ${brdRow.title}, ${brdRow.regdate} <br>
</c:forEach>

<hr>

<h3>이름 "엄재성"인 레코드에서 이름을 "유현진"으로, 등록일 현재시간으로 수정</h3>

<sql:update var="n" dataSource="${ds}">
update board_1 set name=?, regdate=? where name=?
<sql:param value="엄재성" />
<sql:dateParam value="<%= new java.util.Date() %>" type="timestamp"/>
<sql:param value="유현진" />
</sql:update>

<hr>

<h2> 다시 게시판 전체 조회</h2>

<sql:query var="rs" dataSource="${ds}" sql="select * from board_1" />

<c:forEach var="brdRow" begin="0" items="${rs.rows}">
${brdRow.id}, ${brdRow.name}, ${brdRow.title}, ${brdRow.regdate}<br>
</c:forEach>

<hr>

<c:forEach var="brdRow" begin="0" items="${rs.rowsByIndex}">
${brdRow[0]}, ${brdRow[1]}, ${brdRow[3]}, ${brdRow[5]} <br>
</c:forEach>
</body>
</html>