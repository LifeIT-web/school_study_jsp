<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application</title>
</head>
<body>

<!-- http://hsprnote.blogspot.com/2017/03/jsp-application.html 참고 -->
<%! int count; %>

<%
	// application 은 서버가 돌면 어디 웹브라우저나 상관 없이 동기화됨
	// session은 서버가 돌때 동일한 웹브라우저에서만 동기화 됨
	// 비교 getAttribute, setAttribute application -> session으로
	
	String scount = (String) application.getAttribute("count");
													// 변수명
	// getAttribute() 메소드 자체가 Object로 리턴하기때문에 String으로 형변환한것
	// 초반에 count라는 변수의 value을 받겠다라는 뜻 근데, value을 set한 결과가 없어서 null
	// getAttribute()는 setAttribute()를 통한 설정이 없으면 무조건 null
	
	if(scount != null){
		count = Integer.parseInt(scount);
	}else {
		count = 0;
	}
	
	application.setAttribute("count", Integer.toString(++count));
	//						변수명(name) ,    저장값(value)
	// int로 증가 해야 하니 integer 형변환
	// 그래서 count라는 변수명의 value값을 초기화 한 값의 ++count 하여 증가
	// 새로고침하면 count는 이미 저장되어 있는 상태이기에 count라는 변수명의 value값이 있어 null이 아님
	// 그래서 value값을 가져와 String으로 형변환 하여 scount에 넣고 다시 integer로 또 형변환
	// 증가 반복
	application.log("현재까지 조회수 : " + count);
	
	//application은 서버가 종료되기 전까지 유지됨
	//따라서 새로고침을 해도 데이터가 그대로 저장되고 증가하는 이유가 서버가 아직 돌고 있기 때문
%>

	서버 컨테이너 정보 : <%=application.getServerInfo() %><p>
	현재까지 조회수 : <%=count %>
</body>
</html>