<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* getHeader 의미 파악 */
	String name = "";
	String value = "";
	String cookie = request.getHeader("cookie");
	
	if(cookie != null){
		Cookie[] cookies = request.getCookies();
		
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("name")){
				name=cookies[i].getName();
				value=cookies[i].getValue();
			}
		}
		
		/* for(Cookie c : cookies){
			out.println("쿠키 이름(name) : " + c.getName() + ", ");
			out.println("쿠키 값(value) : " + c.getValue() + "<br>");
		} */
	}
	

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieTest2</title>
</head>
<body>
	<h2>쿠키 이름 : <%=name %></h2>
	<h2>쿠키 값 : <%=value %></h2>
</body>
</html>