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

String bkind = request.getParameter("subject"); // ������ �Խù��� �Խ��� ���
String btitle = request.getParameter("title"); // ������ ����
String bnote = request.getParameter("contents"); //������ ����


//System.out.println("subject :" + bkind);
//System.out.println("title :" + btitle);
//System.out.println("contents :" + bnote);

//update ����
String sql = "";
sql += "update board set btitle='"+ btitle +"', bkind='"+ bkind +"', bnote = '"+ bnote +"' ";
sql += "where bno = " + no;
stmt.executeUpdate(sql);
%>
<script type="text/javascript">
	alert("�Խù� ������ �Ϸ�Ǿ����ϴ�.");
	document.location="view.jsp?kind=<%= kind %>&page=<%= pageno %>&no=<%= no %>"; <%//������ �Ϸ���� �����ߴ� �Խù��� ������, �Խù� ��ȣ, �Խ��� ������ �����ش�.%>
</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>