<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request Test</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>  
<!-- 
			post방식에서 encoding을 설정 안했을때 한글이 깨지지만(setCharaterEncoding 사용)
			get방식에선 없어도 잘 됨.(가끔씩 깨질때도 있지만 그것도 설정하면 해결됨(자세한 내용은 다음시간에))
-->

<%
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String sex = request.getParameter("sex");
	String country = request.getParameter("country");
	String addr = request.getParameter("addr");
	
	if(sex.equalsIgnoreCase("man")){ // 대소문자 구별하지 않겠다.
		sex="남자";
	}else{
		sex="여자";
	}
	/*
		문자열 비교보단 숫자로 변환해서 비교하는 걸 선호
		숫자로 비교하는 걸 많이 보기 때문에
	*/
	int country1 = Integer.parseInt(country);
	
	if(country1 == 1){
		country = "대한민국";
	}else if(country1 == 2){
		country = "일본";
	}else if(country1 == 3){
		country = "중국";
	}else if(country1 == 4){
		country = "터키";
	}else {
		country = "태국";
	}
	
%>

<h2> 학생 정보 입력 결과</h2>

성명 : <%=name %><p>
학번 : <%=studentNum %><p>
성별 : <%=sex %><p>
나라 : <%=country %><p>
주소 : <%=addr %><p>
</body>
</html>