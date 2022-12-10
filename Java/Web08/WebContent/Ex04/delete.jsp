<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
%>
<%@ include file = "dbopen.jsp" %>
<%
Statement stmt = conn.createStatement();
String sql = "";
sql += "delete from book where no = " + no;
stmt.executeUpdate(sql);
stmt.close();
response.sendRedirect("index.jsp");
%>
<%@ include file = "dbclose.jsp" %>