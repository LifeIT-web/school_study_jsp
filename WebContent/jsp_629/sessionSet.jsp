<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% session.setAttribute("name", "Lee"); %>

<script>
	location.href = "sessionTest.jsp";
</script>