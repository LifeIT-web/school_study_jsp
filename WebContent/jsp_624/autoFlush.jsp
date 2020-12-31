<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> autoFlush </title>
</head>
<body>
<%@ page autoFlush="false" buffer="1kb" %>
<!--
	 autoFlush="true" 기본값인데 true라면 자동 flush() 처리를 해준다.
	 false로 설정하는 경우는 파일을 강제로 보내야할때 설정하여 처리해야하는데,
	  잘안쓸듯 강제로 보내다가 손상될수도 있으니(나의 생각)
 -->
<h2>현재 autoFlush = <%=out.isAutoFlush() %></h2><p>

<%
	for (int i = 1; i < 25 ; i++){ // 25 를 16 , 17(overflow 발생), 18(잘 실행됨) 으로 수정했을때 변화보기
		out.println("남은 출력 버퍼 크기(out.getRemaining()): " + out.getRemaining() + "<br>");
		
		//autoFlush가 false이면 알아서 버퍼을 출력해야 함.
		if(out.getRemaining() < 50){
			out.println("<br>");
			out.flush(); // flush가 버퍼의 내용들을 비워줌 
			// flush하지 않으면 버퍼오버플로우(IOException) : 내용들이 넘처흘러서 
		}
	}
%>

<hr>
초기 출력 버퍼 크기 : <%=out.getBufferSize()%> byte<p>
남은 출력 버퍼 크기 : <%=out.getRemaining()%> byte

</body>
</html>