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

request.setCharacterEncoding("euc-kr");

//replyok.jsp?kind=J&key=&page=1&no=60602 ���� ������ ���� �м�
String kind  = request.getParameter("kind");
String type  = request.getParameter("type");
String key   = request.getParameter("key");
String curpage = request.getParameter("page");
String no    = request.getParameter("no");
if( no == null)
{
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}
String rnote   = request.getParameter("rnote");
System.out.println("rnote:" + rnote);

//��� ������ �����Ѵ�.
String sql = "";
sql += "insert into reply ";
sql += "(uno,bno,rnote) ";
sql += "values (" + loginVO.getNo() + ",";
sql += "'" + no + "', ";
sql += "'" + rnote + "') ";
db.RunSQL(sql);
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>

	alert("����ۼ��� �Ϸ�Ǿ����ϴ�.");
	document.location = "view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>";

</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
