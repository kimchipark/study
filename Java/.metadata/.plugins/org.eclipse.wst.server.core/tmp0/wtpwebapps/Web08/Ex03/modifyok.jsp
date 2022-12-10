<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%
request.setCharacterEncoding("euc-kr");
String no = request.getParameter("no");
String title = request.getParameter("title");
String pub = request.getParameter("pub");
String author = request.getParameter("author");
String price = request.getParameter("price");
String note = request.getParameter("note");

if( title == null || note == null || pub == null || author == null || price == null)
{
	response.sendRedirect("index.jsp");
	return;
}
//jdbc 라이브러리 로딩
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/bookdb";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//데이터베이스에 연결한다.
conn = DriverManager.getConnection(host,userid,userpw);
Statement stmt = conn.createStatement();
String sql = "";
sql += "update book set ";
sql += "btitle ='"+ title +"', ";
sql += "bpub ='"+ pub +"', ";
sql += "bauthor ='"+ author +"', ";
sql += "bprice ='"+ price +"', ";
sql += "bnote ='"+ note +"' ";
sql += "where no = " + no;
stmt.executeUpdate(sql);
stmt.close();
conn.close();

response.sendRedirect("view.jsp?no=" + no);
/*
out.print("no = " + no +"<br>");
out.print("title = " + title +"<br>");
out.print("pub = " + pub +"<br>");
out.print("author = " + author +"<br>");
out.print("price = " + price +"<br>");
out.print("note = " + note +"<br>");
*/
%>