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
	
	이름:<jsp:getProperty property="name" name="m"/><br>
	제목:<jsp:getProperty property="title" name="m"/><br>
	이메일:<jsp:getProperty property="email" name="m"/><br>
	내용:<jsp:getProperty property="contents" name="m"/><br>
	비밀번호:<jsp:getProperty property="pwd" name="m"/><br>
</body>
</html>