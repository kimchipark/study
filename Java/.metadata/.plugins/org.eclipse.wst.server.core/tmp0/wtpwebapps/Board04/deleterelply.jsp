<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<%
//�α��� ���� �˻�
LoginVO loginVO = (LoginVO)session.getAttribute("login");
if( loginVO == null )
{
	//�α��� ���� ����
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//deletereply.jsp?kind=H&key=&page=1&no=60602&reno=9 �м�
String kind   = request.getParameter("kind");
String type = request.getParameter("type");
String key    = request.getParameter("key");
String curpage= request.getParameter("page");
String no     = request.getParameter("no");
String reno   = request.getParameter("reno");

if( no == null || reno == null)
{
	//�Խù� ��ȣ �Ǵ� ��� ��ȣ�� ������..
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

String sql = "";

//��� ���� 
sql = "delete from reply where reno = " + reno;
db.RunSQL(sql);
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>

	alert("����� ���� �Ǿ����ϴ�.");
	document.location = "view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>";

</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>

