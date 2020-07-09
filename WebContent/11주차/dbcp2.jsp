<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
    Connection con = ds.getConnection();
    
    String sql = "SELECT * FROM LOGIN";
    Statement st = con.createStatement();
    
    //4. 반환객체
    ResultSet rs = st.executeQuery(sql);
    %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>로그인 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
<h1 class="text-center font-weight-bold">로그인 정보</h1>
<br><br>
   <table class = "table table-hover">
      <tr>
         <th>아이디</th>
         <th>이름</th>
         <th>비밀번호</th>
      </tr>
<%//5. 결과집합 처리
   while(rs.next()) {
      String id = rs.getString("ID");
      String name = rs.getString("NAME");
      String pwd = rs.getString("PWD");
%>
      <tr>
         <td><%= id %></td>
         <td><%= name %></td>
         <td><%= pwd %></td>
      </tr>
<%}
   //6. 객체 해지
   rs.close();
   st.close();
   con.close();
%>
   </table>
   </div>
</body>
</html>