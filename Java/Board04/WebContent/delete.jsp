<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<%
//delete.jsp?kind=J&key=&page=1&no=60601 �м��Ѵ�.
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
String type = request.getParameter("type");
if(type == null) type = "T";
String key = request.getParameter("key");
if(key == null) key = "";
String curpage = request.getParameter("page");
if(curpage == null) curpage = "1";
String no = request.getParameter("no");
if(no == null)
{
	//�Խù� ��ȣ�� ������ ������.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//�Խù��� �����Ѵ�.
String sql = "";

//��� ���� 
sql = "delete from reply where bno = " + no;
db.RunSQL(sql);

//÷������ ���� 
sql = "delete from attach where bno = " + no;
db.RunSQL(sql);

//�Խù� ���� 
sql = "delete from board where bno = " + no;
db.RunSQL(sql);
%>
<script>
	
	alert("�Խù��� �����Ǿ����ϴ�.");
	document.location = "index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>";

</script>
<%@ include file="config/dbclose.jsp" %>