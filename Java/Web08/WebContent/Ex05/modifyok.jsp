<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>
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
DBManager db = new DBManager();
db.DBOpen();

String sql = "";
sql += "update book set ";
sql += "btitle ='"+ db._R(title) +"', ";
sql += "bpub ='"+ db._R(pub) +"', ";
sql += "bauthor ='"+ db._R(author) +"', ";
sql += "bprice ='"+ price +"', ";
sql += "bnote ='"+ db._R(note) +"' ";
sql += "where no = " + no;
db.RunSQL(sql);
db.DBClose();

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