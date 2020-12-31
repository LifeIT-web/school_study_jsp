<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getRequest 예제</title>
</head>
<body>
<h2> 메소드 get 방식에서 한글 처리 </h2>

<hr size="5" color="red">

한글 성명: <%=request.getParameter("korname") %><p>
영어 성명: <%=request.getParameter("engname") %><p>

</body>

<!-- 
			post방식에서 encoding을 설정 안했을때 한글이 깨지지만(setCharaterEncoding 사용)
			get방식에선 없어도 잘 됨.(가끔씩 깨질때도 있지만 그것도 설정하면 해결됨)
			(URIEncoding="UTF-8" server.xml에 63줄 connector 태그에 추가하면 해결됨.)
-->

</html>