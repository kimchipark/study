<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<%
if(LoginID == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

request.setCharacterEncoding("euc-kr"); // �ѱ�ó��

String no = request.getParameter("no"); // �Խù� ��ȣ
String pageno = request.getParameter("page"); // �Խù��� �ִ� ���� ������
String kind = request.getParameter("kind"); // �Խù��� ���

if(kind == null) kind = "J";
if(pageno == null) pageno ="1";
if(no == null )
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String rnote = request.getParameter("rnote"); //��� ����
out.print(rnote);

String sql = "";
sql += "insert into reply (bno, uno, rnote) ";
sql += "values('"+ no +"', '"+ LoginNo +"', '"+ rnote +"') ";
stmt.executeUpdate(sql);

%>
<script type="text/javascript">
	alert("��� �ۼ��� �Ϸ�Ǿ����ϴ�.");
	document.location="view.jsp?kind=<%= kind %>&page=<%= pageno %>&no=<%= no %>";	
</script>
<%@ include file = "include/tail.jsp" %>