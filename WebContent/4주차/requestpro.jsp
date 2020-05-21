<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); 
    	String num = request.getParameter("num");
    	String name = request.getParameter("name");
    	String grade = request.getParameter("grade");
    	String subject = request.getParameter("subject");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력확인</title>
<style>table {border:1px solid gray;
	border-collapse : collapse;
	}
	td {border:1px solid gray; width:150px;
	}
	</style>
	
</head>
<body>
	<h2>학생정보</h2>
	<hr>
	<table>
	<tr>
	<td>학번</td>
	<td><%= num %></td>
	</tr>
	<tr>
	<td>이름</td>
	<td><%= name %></td>
	</tr>
	<tr>
	<td>학년</td>
	<td><%= grade %></td>
	</tr>
	<tr>
	<td>선택과목</td>
	<td><%= subject %></td>
	</tr>
	<tr>
	<td>취미</td>
	<td>
	<%
	String[] hobby=request.getParameterValues("hobby");
	for(int i=0; i<hobby.length; i++){
		out.println(hobby[i] + " ");
	}
	%>
	</td>
	</tr>
	</table>
</body>
</html>