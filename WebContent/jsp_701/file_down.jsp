<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder" %>

<%@ page import="java.io.File" %>
<%@ page import="java.io.*" %>

<%
	String fileName = request.getParameter("file_name");

	String savePath = "upload";
	ServletContext context = getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
	String sFilePath = sDownloadPath +"\\"+fileName;

	byte b[] = new byte[4096];
	FileInputStream in = new FileInputStream(sFilePath); // 바이트 단위로 입력하는 클래스
	String sMimeType = getServletContext().getMimeType(sFilePath);
	// getMimeType 은 지정된 파일의 MIME형식을 반환 / MIME형식이 아닌경우 NULL
	System.out.println("sMimeType>>>"+sMimeType);
	// MIME 형식 : 파일종류/파일포맷 ex)image/gif
	// https://server-talk.tistory.com/183 참고
	
	if(sMimeType == null){
   	sMimeType = "application/octet-stream";
   	// 모든 종류의 파일들을 전송 (ex) jpg, png, video.. 등의 파일을 전송)
	}
	response.setContentType(sMimeType);
	String agent = request.getHeader("User-Agent"); // 접속자 즉, 나의 데이터값을 가져옴
	boolean ieBrowser = (agent.indexOf("MSIE")> -1) || (agent.indexOf("Trident") > -1);
						// MSIE나 TRIDENT 값이 있는 경우 true MSIE = 마이크로소프트(?)
						// 접속자의 브라우저가 MSIE, TRIDENT면 true TRIDENT = 인터넷 익스플로어의 레이아웃 엔진
						// https://kimyhcj.tistory.com/217 참고
	if(ieBrowser){
   	fileName = URLEncoder.encode(fileName,"UTF-8").replaceAll("\\+","%20");
   	// 문자열 깨짐방지 소스
	}
	else{
   	fileName = new String(fileName.getBytes("UTF-8"),"iso-8859-1");
	}
	response.setHeader("Content-Disposition","attachment; filename = "+fileName);
	/* 
	Content-Disposition
	응답 본문을 브라우저가 어떻게 표시해야 할지 알려주는 헤더입니다. inline인 경우 웹페이지 화면에 표시되고, attachment인 경우 다운로드됩니다.

	"Content-Disposition", "inline"
	"Content-Disposition", "attachment; filename=" + fileName
	
	다운로드되길 원하는 파일은 attachment로 값을 설정하고,
	filename 옵션으로 파일명까지 지정해줄 수 있습니다. 파일용 서버인 경우 이 태그를 자주 사용하게 될 것입니다.
	
	(https://www.zerocho.com/category/HTTP/post/5b4c4e3efc5052001b4f519b 참고)
	*/
	ServletOutputStream out2 = response.getOutputStream(); // 클라이언트에게 보여주는 클래스
	int numRead;

	while((numRead=in.read(b,0,b.length))!= -1){ // read 한 바이트값을 int값으로 반환
   	out2.write(b,0,numRead); // 출력
	}
	out2.flush();
	out2.close();
	in.close();

%>