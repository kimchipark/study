<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>    
<%
request.setCharacterEncoding("euc-kr");

String title = request.getParameter("title");
String pub = request.getParameter("pub");
String author = request.getParameter("author");
String price = request.getParameter("price");
String note = request.getParameter("note");

if( title == null || note == null || pub == null || author == null || price == null)
{
	response.sendRedirect("write.jsp");
	return;
}

		
//jdbc ���̺귯�� �ε�
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/bookdb";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//�����ͺ��̽��� �����Ѵ�.
conn = DriverManager.getConnection(host,userid,userpw);

//SQL �۾��� ���� ������ �����Ѵ�.
Statement stmt = conn.createStatement();
String sql = "insert into book ";
sql += "(btitle, bpub, bauthor, bprice, bnote) ";
sql += "values ('" + title + "','" + pub + "','" + author + "','" + price + "','" + note + "');";

//insert, delete, update ó�� ����
stmt.executeUpdate(sql);


//�۾��� �����Ѵ�.
stmt.close();

//db������ �ݴ´�.
conn.close();
response.sendRedirect("index.jsp");
/*
out.print("title = " + title +"<br>");
out.print("pub = " + pub +"<br>");
out.print("author = " + author +"<br>");
out.print("price = " + price +"<br>");
out.print("note = " + note +"<br>");
*/
%>