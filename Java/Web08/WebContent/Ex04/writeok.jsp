<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
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

		
%>
<%@ include file = "dbopen.jsp" %>
<%
//SQL �۾��� ���� ������ �����Ѵ�.
Statement stmt = conn.createStatement();

String sql = "insert into book ";
sql += "(btitle, bpub, bauthor, bprice, bnote) ";
sql += "values ('" + title + "','" + pub + "','" + author + "','" + price + "','" + note + "');";


//insert, delete, update ó�� ����


stmt.executeUpdate(sql);




//�۾��� �����Ѵ�.
stmt.close();
%>
<%@ include file = "dbclose.jsp" %>
<%
//db������ �ݴ´�.
response.sendRedirect("index.jsp");
/*
out.print("title = " + title +"<br>");
out.print("pub = " + pub +"<br>");
out.print("author = " + author +"<br>");
out.print("price = " + price +"<br>");
out.print("note = " + note +"<br>");
*/
%>