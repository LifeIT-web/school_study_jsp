<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자 empty test</title>
</head>
<body>

\${null} = ${null} <p> <!-- null이라 안보임 (n도) -->
\${n} = ${n} <p>

\${empty null} = ${empty null} <p> <!-- true가 나오는 건 null이라는 것 -->
\${empty n} = ${empty n} <p>

\${param.user} = ${param.user} <p> <!-- param.user가 비었다면 null -->
\${empty param.user} = ${empty param.user} <!-- param.user가 null이면 true  -->

</body>
</html>