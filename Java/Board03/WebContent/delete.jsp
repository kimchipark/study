<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%
if(LoginID == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}
String no = request.getParameter("no"); // �Խù� ��ȣ
String pageno = request.getParameter("page"); // �Խù��� �ִ� ���� ������
String kind = request.getParameter("kind"); // �Խù��� ���
if(pageno == null) pageno="1";
if(kind == null) kind="J";

if( no == null || pageno == null || kind == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String sql = "";
sql = "delete from attach where bno = " + no;
stmt.executeUpdate(sql);

sql = "delete from reply where bno = " + no;
stmt.executeUpdate(sql);

sql = "delete from board where bno = " + no;
stmt.executeUpdate(sql);
%>
���� �����Ǿ����ϴ�.
<br>
<a href="index.jsp?kind=<%= kind %>">������� ���ư���</a>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>