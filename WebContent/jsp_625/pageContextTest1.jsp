<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContextTest1 예제</title>
</head>
<body>

<%
	pageContext.forward("pageContextTest2.jsp");

/*  
1. forward() : 요청과 응답의 제어권을 다른 페이지로 넘기더라도
				주소가 변하지 않음.
				
				포워드 방식은 현재 페이지의 요청과 응답의 정보에
				대한 제어권만이 다른 페이지로 넘어가므로
				요청 정보와 응답정보가 유지되는 장점이 있다.
				
2. sendRedirect() : 브라우저에 표시되는 주소가 바뀌는 방식
					이동할 페이지로 요청과 응답 객체를
					새로 생성하여 전송하므로 요청 정보와 응답정보가
					유지되지 않는 특성이 있다.
					(얘는 제어권을 다른 페이지에 안넘기고 그 다른 페이지1에 요청을 하고
						다시 돌아와서 다른페이지2에 요청을 하는 방식 <책참고 264p>)
*/
%>


</body>
</html>
