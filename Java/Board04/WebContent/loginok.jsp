<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<%
//login.jsp���� ������ ������ �޴´�.
String uid = request.getParameter("userid");
String upw = request.getParameter("userpw");

if( uid == null || upw == null )
{
	db.DBClose();
	%>
	<script>
		alert("���̵� �Ǵ� ��й�ȣ�� �Էµ��� �ʾҽ��ϴ�.");
		document.location = "login.jsp";
	</script>
	<%
	return;
}


String sql = "";
sql += "select uno,uname from user ";
sql += "where uid = '" + db._R(uid) + "' ";
sql += "and upw = md5('" + db._R(upw) + "') ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//���̵� ���ų� ��� Ʋ��.
	%>
	<script>
		alert("���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		document.location = "login.jsp";
	</script>
	<%
}else
{
	//�α��� ������ ����.
	String uno   = db.GetValue("uno");
	String uname = db.GetValue("uname");
	LoginVO loginVO = new LoginVO();
	loginVO.setId(uid);
	loginVO.setName(uname);
	loginVO.setNo(uno);
	session.setAttribute("login",loginVO);
	%>
	<script>		
		document.location = "index.jsp";
	</script>
	<%	
}
db.CloseQuery();
%>
<%@ include file="config/dbclose.jsp" %>

