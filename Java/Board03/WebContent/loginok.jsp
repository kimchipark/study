<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%
String uid = request.getParameter("userid");
String upw = request.getParameter("userpw");

if( uid == null || upw == null)
{
	stmt.close();
	conn.close();
	%>
	<script type="text/javascript">
		alert("���̵� �Ǵ� ��й�ȣ�� �Էµ��� �ʾҽ��ϴ�.");
		document.location = "login.jsp";
	</script>
	<%
	return;
}
String sql = "";
sql += "select uno, uname from user ";
sql += "where uid = '"+ uid +"' and upw = md5('"+ upw +"') ";
ResultSet result = stmt.executeQuery(sql);
if(result.next() == false)
{
	stmt.close();
	conn.close();
	%>
	<script type="text/javascript">
		alert("���̵� �Ǵ� ��й�ȣ��  ��ġ���� �ʽ��ϴ�.");
		document.location = "login.jsp";
	</script>
	<%
	return;
}
String uno = result.getString("uno");
String uname = result.getString("uname");

session.setAttribute("id", uid);
session.setAttribute("name", uname);
session.setAttribute("no", uno);

response.sendRedirect("index.jsp");
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>