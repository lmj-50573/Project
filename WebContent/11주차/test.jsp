<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
Connection conn=null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xepdb1";
	
Boolean connect = false;
	
try{
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"sys","1111"); //자신의 아이디와 비밀번호
    connect = true;
    conn.close();
}catch(Exception e){
    connect = false;
    e.printStackTrace();
}
%>
<%
if(connect==true){%>
    연결되었습니다.
<%}else{ %>
    연결에 실패하였습니다.
<%}%> 