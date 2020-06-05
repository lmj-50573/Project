<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기(과제)</title>
</head>
 
<body>
<h2>게시판</h2>
	<hr>
	<form action="boardPro.jsp" method="post">
	이름:<input type ="text" name="name"><br>
	제목:<input type = "text" name= "title"><br>
	이메일:<input type= "text" name= "email"><br>
	내용:<input type="text" name= "contents"><br>
	비밀번호:<input type="text" name= "pwd"><br>
	
	<input type= "submit" name ="id" value="글쓰기">
	<input type= "submit" name ="id" value="다시작성">
	<input type= "submit" name ="id" value="목록보기">
	
</body>
</html>