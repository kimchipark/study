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
String reno = request.getParameter("reno"); // ��۹�ȣ
if(pageno == null) pageno="1";
if(kind == null) kind="J";

if( no == null || reno == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String sql = "";
//��� ����
sql = "delete from reply where reno = " + reno;
stmt.executeUpdate(sql);

%>
<script type="text/javascript">
	alert("����� ���� �Ǿ����ϴ�.");
	document.location="view.jsp?kind=<%= kind %>&page=<%= pageno %>&no=<%= no %>";	
</script>
<%@ include file = "include/tail.jsp" %>