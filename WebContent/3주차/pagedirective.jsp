<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "@copyright by minhi Lee"
    import= "java.util.Date, java.text.SimpleDateFormat"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>page 지시자 실습</title>
</head>
<body>
	<h2>반갑습니다</h2>
	<hr>
	<% 
	Date d = new Date();
	SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
	String date = f.format(d);
	SimpleDateFormat t=new SimpleDateFormat("hh:mm:ss");
	String time = t.format(d);
	%>
	오늘의 날짜: <%=date %><br>
	지금의 시간: <%=time %><br>
	작성자: <%=this.getServletInfo()%>
</body>
</html>