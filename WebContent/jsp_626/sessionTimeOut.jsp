<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--

 주로 은행에서 10분 카운트 하는 설정
 비교하는 법 : 새로고침 해서 보거나 웹브라우저를 두개 띄어서 비교
  
 -->
<meta charset="UTF-8">
<title>sessionTimeOut</title>
</head>
<body>
<%@ page import="java.util.Enumeration, java.util.Date" %>

<h1>세션 예제</h1>

<hr size="5" color="red">

<h2>세션 만들기</h2>
<%! long beforetime = new Date().getTime();
		// 이전 페이지 참조 시간을 저장하는 소속 변수 %>

<% 
	long nowtime = new Date().getTime();

	if(session.isNew()){
		session.setAttribute("id", session.getId()); // 초반에 id값을 가져옴
		session.setAttribute("time", new Date(session.getCreationTime()));
		session.setMaxInactiveInterval(5);
	} else{
		session.removeAttribute("id");
		// 5초 이내에 새로고침하면 null나오는 이유
		// id값을 유지하고 싶으면 getAttribute로 가져오면 됨
	}
	
%>
	
	<hr size="5" color="green">

	<h2> 세션 조회</h2>
	세션 id(유일한 식별자) : <%= session.getAttribute("id") %><br>
	세션 CreationTime : <%= session.getAttribute("time") %><br>
	세션 MaxInactiveInterval : <%= session.getMaxInactiveInterval() %><br>
	
	<% long sessiontime = nowtime - session.getCreationTime(); %><br>
				<!-- 새로고침한 시간 - 세션이 만들어진 시간  -->
	<%=nowtime %><br> <!-- 여긴 웹브라우저 -->
	<%=session.getCreationTime() %><br>
	
	세션이 만들어진 이후 지난 시간 : <%= sessiontime/1000 %>초
	<hr size="5" color="#44dd88">

	<font color = blue>	
	
	<% long inactiveinterval = nowtime - beforetime; %><br>
	<%=nowtime %><br> <!-- 여긴 서버 -->
	<%=beforetime %><br>
	서버에 반응을 보이지 않은 시간 : <%= inactiveinterval/1000 %>초 <br>
	<!-- 서버는 계속 돌아가기에 반응시간이 계속 바뀜 근데 거기서 5초이상이 넘어가면 세션을 초기화시키는 것 -->
	위 시간이 <%= session.getMaxInactiveInterval() %>초를 지나면
	이전 세션이 무효화되고 새로운 세션이 생성</font><br>
	
	<% beforetime = nowtime; %>

	<!-- 웹페이지에서 활동 5초이내에 하면 리셋이 안되고, 5초가 넘어가면 세션이 초기화된다. (335p 참고)-->
</body>
</html>