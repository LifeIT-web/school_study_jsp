<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sendRedirect 예제</title>
</head>
<!-- 
	  영어로 검색
	  한글 검색은 안됨(따로 설정해야하는 것 같은데 자세한건 모름)
	  (비교도 영어로) 
-->
<body>
<%-- <% /* switch문 */
String word = request.getParameter("word"); // radio
String word1 = request.getParameter("word1"); // text
String word2 = request.getParameter("word2"); // select
String URL = "";

	switch(word){
		
	case "naver" :
		URL += "http://search.naver.com/search.naver?where=nexearch";
		URL += "&" + "query=" + word1;
		break; 
		
	case "google" :
		URL += "http://www.google.com/search";
		URL += "?" + "q=" + word1;
		break;
		
	case "daum" :
		URL += "https://search.daum.net/search?nil_suggest=btn&w=tot&DA=SBC";
		URL += "&" + "q=" + word1;
		break;
		
	}
	
	response.sendRedirect(URL);
	%> --%>
	
	<!--
	 response.sendRedirect(URL);
	 
	 response 기본 객체에서 많이 사용되는 기능 중의 하나는
	 Redirect 기능입니다.
	 Redirect 기능이란 웹 서버가
	 웹 브라우저에게 다른 페이지로 이동하라고 지시하는 것을 의미함
	 예를 들어 사용자가 로그인에 성공한 후 메인 페이지로 자동으로
	 이동하는 사이트가 많은데 이처럼 특정 페이지를 실행한 후,
	 지정한 페이지로 이동하길 원할때 Redirect 기능을 사용하면 됨
	 
	 Redirect 기능으 웹 서버 측에서 웹 브라우저에게 어떤 페이지로 이동하려고
	 지정하는 것임
	 Redirect를 지시한 JSP페이지가 있을 경우 웹 브라우저는 실질적으로
	 요청을 두번하게 됨.
	 -->
	 
	 
<%
	/* if문 */
	String word = request.getParameter("word"); // radio
	String word1 = request.getParameter("word1"); // text
	String word2 = request.getParameter("word2"); // select
	String URL = "";
	
	if(word2.equalsIgnoreCase("naver")){
		/* 네이버 */
		URL += "http://search.naver.com/search.naver?where=nexearch";
		URL += "&" + "query=" + word1;
		
	} else if(word2.equalsIgnoreCase("google")){
		/* 구글 */	
		URL += "http://www.google.com/search";
		URL += "?" + "q=" + word1;
 		
	} else if(word2.equalsIgnoreCase("daum")){
 		/* 다음 */
 		URL += "https://search.daum.net/search?nil_suggest=btn&w=tot&DA=SBC";
 		URL += "&" + "q=" + word1;
 	
	}
	
	response.sendRedirect(URL);
%>


</body>
</html>