<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제 request3</title>
</head>
<body>

<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("utf-8"); %>

<h2> 취미와 가보고 싶은 국가 결과</h2>
<% 
	//Enumeration e = request.getParameterNames();
	Enumeration<String> e = request.getParameterNames(); 
	//name 목록들을 받음 return값은 Enumeration
	
	// getParameterNames() : html으로 전송되어온 name 속성들만
	// Enumeration 타입으로 받아온 후,
	// 각 name을 하나씩 가져와 전송된 값을 출력한다.
	
	while(e.hasMoreElements()){
		
		//String name = (String) e.nextElement(); 
		//17번째 줄에<String>안했을시 넣어주는 코드
		String name = e.nextElement(); 
		String[] data = request.getParameterValues(name);
		// name끼리의 값들을 묶어 배열값으로 만든것 
		// hobby는 hobby끼리 flower는 flower끼리
		
		if(data != null){
			/* for(String eachdata : data){
				out.println(eachdata + " ");
			} */
			for(int i = 0 ; i < data.length; i++){
				out.println(data[i] + " ");
			}
			out.println("<p>");
		}
		
	}
   %>
</body>
</html>