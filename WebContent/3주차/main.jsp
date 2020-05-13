<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시자 실습</title>
</head>
<body>
	<%@ include file="Top.jsp" %><hr>
	여기는 메인 페이지인 includeDirective.jsp 입니다.
	<%@ include file= "pagedirective.jsp" %><hr>
	<%@ include file= "bottom.jsp"%>
</body>
</html>