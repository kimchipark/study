<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %> 
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

		
DBManager db = new DBManager();
db.DBOpen();

//SQL �۾��� ���� ������ �����Ѵ�.

String sql = "insert into book ";
sql += "(btitle, bpub, bauthor, bprice, bnote) ";
sql += "values ('" + db._R(title) + "','" + db._R(pub) + "','" + db._R(author) + "','" + price + "','" + db._R(note) + "');";


//insert, delete, update ó�� ����

db.RunSQL(sql);

//�۾��� �����Ѵ�.

//db������ �ݴ´�.
db.DBClose();
response.sendRedirect("index.jsp");
/*
out.print("title = " + title +"<br>");
out.print("pub = " + pub +"<br>");
out.print("author = " + author +"<br>");
out.print("price = " + price +"<br>");
out.print("note = " + note +"<br>");
*/
%>