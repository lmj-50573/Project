<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//1. Context 객체얻기
    Context initCtx = new InitialContext();
    
    //2. "java:com/env"에 해당하는 객체를 찾아서 envCtx에 삽입
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    
    //3. "jabc/jskim"에 해당하는 객체를 찾아서 ds에 삽입
    
    DataSource ds = (DataSource)envCtx.lookup("jdbc/mjlee");
    //4. 커넥션 풀로부터 커넥션 객체를 얻어냄
    Connection conn = ds.getConnection();
    
    String str = "연결 성공";
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DBCP 연결</title>
</head>
<body>
	<%=str %>
</body>
</html>