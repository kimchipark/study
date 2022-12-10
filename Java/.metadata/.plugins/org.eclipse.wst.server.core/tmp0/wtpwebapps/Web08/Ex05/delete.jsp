<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
DBManager db = new DBManager();
db.DBOpen();

String sql = "";
sql += "delete from book where no = " + no;
db.RunSQL(sql);
db.DBClose();
response.sendRedirect("index.jsp");
%>