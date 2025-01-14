<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="date" class="java.util.Date" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 라이브러리 사용 예제</title>
</head>
<body>

<fmt:setLocale value="ko_KR"/>	<!-- en_EN (build/classes/에 test_ko.properties, test.properties 저장) -->
<fmt:bundle basename="test_ko"> <!-- test 는 영어-->
	<fmt:message key="name" /><br>
	<fmt:message key="say" /><br>
	<fmt:message key="say2">
		<fmt:param value="이지윤" />
		<fmt:param value="수선화" />
	</fmt:message>
</fmt:bundle>

<p>
<fmt:formatNumber value="50000" type="currency"/><br>
<fmt:formatNumber value="0.15" type="percent"/><br>
<fmt:formatNumber value="500567300" pattern="###,###,###" /><p>

<fmt:formatDate value="${date}" type="date"/><br>
<fmt:formatDate value="${date}" type="time"/><br>
<fmt:formatDate value="${date}" type="both"/><p>

<fmt:formatDate value="${date}" type="both" timeStyle="short" dateStyle="short"/><br>
<fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long"/><br>




</body>
</html>