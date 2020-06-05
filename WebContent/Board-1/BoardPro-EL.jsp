<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<h2>게시판 정보</h2>
	<hr>
	<jsp:useBean id = "m" class ="Board.ch00"/>
	<jsp:setProperty property="*" name="m"/>
	
	이름:${param.name}<br>
	제목:${param.title}<br>
	이메일:${param.email}<br>
	내용:${param.contents}<br>
	비밀번호:${param.pwd}<br>
</body>
</html>