<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹브라우저와 웹서버 정보표시</title>
</head>
<body>
	<h2>웹브라우저와 웹서버 정보표시</h2>
	<hr>
	<ul>
	<li>서버명 :<%=request.getServerName() %></li>
	<li>전송방식: <%=request.getMethod() %></li>
	
	
	</ul>
</body>
</html>