<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>thumbnailForm Test</title>
</head>
<body>

<h3>썸네일 이미지 폼 예제</h3>

<form action="thumbnail.jsp" method="post" enctype="multipart/form-data">
											<!-- 한번에 데이터를 전송하는 소스 -->
이미지 파일 : <input type="file" name="filename"><p>

<input type="submit" value="전송">

</form>
</body>
</html>