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
request.setCharacterEncoding("euc-kr");

String title = request.getParameter("title"); // ����
String kind = request.getParameter("subject"); // ����
String note = request.getParameter("contents"); // ����

System.out.println("title : " + title);
System.out.println("kind : " + kind);
System.out.println("note : " + note);

String sql = "";
sql +="insert into board (uno, btitle, bkind, bnote) ";
sql +="values("+ LoginNo +", '"+ title +"', '"+ kind +"', '"+ note +"') ";
stmt.executeUpdate(sql);

//last_insert_id() ���������� ������ pk ���� �������� �Լ�.

sql = "select last_insert_id() as no ";
ResultSet result = stmt.executeQuery(sql);
result.next();
String bno = result.getString("no");
%>
<script type="text/javascript">
	alert("�Խù��� �ۼ��Ǿ����ϴ�.");
	document.location = "view.jsp?no=<%= bno %>";
</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>