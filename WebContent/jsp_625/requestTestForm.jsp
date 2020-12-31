<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Test</title>
<style>
h1, #commandCell {
	text-align: center;
}

table {
	margin: auto;
	width: 400px;
	border: 1px solid red;
}
</style>
</head>
<body>
<h1> Request Test </h1>
<form action="requestTest1.jsp" method="post">
	<table>
	<tr>
		<td><label for = "name">이름</label></td>
		<td><input type="text" name="name" id="name"></td>
	</tr>
	<!-- label은 폼의 양식에 이름 붙이는 태그임.
		  주요 속성은 for임
		  label의 for의 값과 양식의 id의 값이 같으면 연결됨
		  label을 틀릭하면, 연결된 양식에 입력할 수 있도록 하거나
		  체크를 하거나 체크를 해제함. -->
	<tr>
		<td><label for = "gender">성별</label></td>
		<td>
		남<input type="radio" name="gender" value="male" id="gender">
		여<input type="radio" name="gender" value="female"></td>
	</tr>

	<tr>
		<td><label for = "hobby">취미</label></td>
		<td>
		독서<input type="checkbox" name="hobby" value="독서">
		게임<input type="checkbox" name="hobby" value="게임" id="hobby">
		TV<input type="checkbox" name="hobby" value="TV">
		축구<input type="checkbox" name="hobby" value="축구">
		기타<input type="checkbox" name="hobby" value="기타">
		</td>
	</tr>
	
	<tr>
		<td><label for = "m">산</label></td>
		<td>
		m1<input type="checkbox" name="m" value="m1">
		m2<input type="checkbox" name="m" value="m2" id="m">
		m3<input type="checkbox" name="m" value="m3">
		m4<input type="checkbox" name="m" value="m4">
		m5<input type="checkbox" name="m" value="m5">
		</td>
	</tr>
	<tr>
		<td colspan="2" id="commandCell">
			<input type="submit" value="전송">
		</td>
	</tr>
	</table>
</form>


</body>
</html>