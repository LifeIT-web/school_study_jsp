<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- http://www.servlets.com/cos/ 에서 다운 -->
    
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>

<%
	String uploadPath = request.getRealPath("/upload");
	//가상경로("/upload")에 해당되는 실제경로를 가져오는 메소드

	/*
	
		ServletRequest 의 request getRealPath()메소드 대신
		(https://docs.oracle.com/javaee/6/api/javax/servlet/ServletRequest.html)
		ServletContext 의 application getRealPath()메소드를 권장한데
		(https://docs.oracle.com/javaee/7/api/javax/servlet/ServletContext.html)
		중복 매소드를 포함해서 없앴데
		
	*/

	int size = 10*1024*1024; // 10MB (1MB -> 1024KB -> 1024 * 1024B)
	String name="";
	String subject="";
	String filename1="";
	String filename2="";
	String filename3="";
	String origfilename1="";
	String origfilename2="";
	String origfilename3="";
	
	try{
		MultipartRequest multi = new MultipartRequest(request, 
													uploadPath,
													size,
													"UTF-8",
													new DefaultFileRenamePolicy());
		
		/* 
		
		
		MultipartRequest multi = new MultipartRequest(1, 
													2,
													3,
													4,
													5);
		
		1. request 대입
		2. 업로드할 경로
		3. 한번애 업로드 가능한 용량
		4. 제목, 인코딩시킬때(UTF-8) 
		5. 중복 이름 정책 
		
		
		*/
		
		name = multi.getParameter("name");
		subject = multi.getParameter("subject");
		
		Enumeration<String> files = multi.getFileNames();
		
		String file1 = files.nextElement();
		filename1 = multi.getFilesystemName(file1);
		origfilename1 = multi.getOriginalFileName(file1);

		String file2 = files.nextElement();
		filename2 = multi.getFilesystemName(file2);
		origfilename2 = multi.getOriginalFileName(file2);

		String file3 = files.nextElement();
		filename3 = multi.getFilesystemName(file3);
		origfilename3 = multi.getOriginalFileName(file3);
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> file upload Test </title>
</head>
<body>

<form name="filecheck" action="fileCheck.jsp" method="post">
	<input type="hidden" name="name" value="<%=name %>">
	<input type="hidden" name="subject" value="<%=subject %>">
	<input type="hidden" name="filename1" value="<%=filename1 %>">
	<input type="hidden" name="filename2" value="<%=filename2 %>">
	<input type="hidden" name="filename3" value="<%=filename3 %>">
	<input type="hidden" name="origfilename1" value="<%=origfilename1 %>">
	<input type="hidden" name="origfilename2" value="<%=origfilename2 %>">
	<input type="hidden" name="origfilename3" value="<%=origfilename3 %>">
</form>

<a href="#" onclick="javascript:filecheck.submit()">
				업로드 확인 및 다운로드 페이지 이동</a>

</body>
</html>