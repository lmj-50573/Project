<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러가 발생되는 페이지</title>
</head>
<body>
	<%
	int a, b, c;
	a= 10;
	b=0;
	c=a/b; //문제 발생

	%>
	<%=c %>
</body>
</html>