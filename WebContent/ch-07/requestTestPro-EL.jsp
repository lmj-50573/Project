<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 등록</title>
</head>
<body>
	<h2>학생 정보</h2>
	<hr>
	<jsp:useBean id = "m" class ="Request.test"/>
	<jsp:setProperty property="*" name="m"/>
	
	학번:${param.num}<br>
	이름:${param.name}<br>
	학년:${param.grade}<br>
	선택과목:${param.subject}<br>
</body>
</html>