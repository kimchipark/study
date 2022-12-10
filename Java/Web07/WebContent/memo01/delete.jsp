<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %> 
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/ezen";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//데이터베이스에 연결한다.
conn = DriverManager.getConnection(host,userid,userpw);
Statement stmt = conn.createStatement();

String sql = "";
sql += "delete from memo where no = " + no;
stmt.executeUpdate(sql);
stmt.close();
conn.close();
%>
삭제 완료.
<br>
<a href=index.jsp>목록으로 이동</a>