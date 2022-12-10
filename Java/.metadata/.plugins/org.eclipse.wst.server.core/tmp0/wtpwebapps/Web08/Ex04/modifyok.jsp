<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "dbopen.jsp" %>
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
%>
<%@ include file = "dbclose.jsp" %>
<%
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