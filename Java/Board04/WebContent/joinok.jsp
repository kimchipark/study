<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%
//�ѱ� �����͸� ��ȯ�Ѵ�.
request.setCharacterEncoding("euc-kr");

//join.jsp���� �Ѿ�� ������ ��´�.
String uid     = request.getParameter("id");
String upw     = request.getParameter("pw");
String uname   = request.getParameter("name");
String ugender = request.getParameter("gender");
String uhobby  = request.getParameter("hobby");
String ukind[] = request.getParameterValues("interest");
if(uid == null || upw == null || uname == null)
{
	db.DBClose();	
	response.sendRedirect("index.jsp");
	return;
}

//������ ���̵�� ȸ�� ����� �Ǿ� �ִ��� �˻��Ѵ�.
String sql = "";

sql  = "select uid ";
sql += "from user ";
sql += "where uid = '" + uid + "'";
db.OpenQuery(sql);
if(db.GetNext() == true)
{
	//�ߺ��� ���̵� ����.
	%>
	<script>
	
		alert("�ߺ��� ȸ�����̵� �Դϴ�.");		
		document.location = "join.jsp";
		
	</script>	
	<%	
	db.DBClose();
	return;
}

sql  = "insert into user ";
sql += "(uid,upw,uname,ugender,uhobby) ";
sql += "values ('" + db._R(uid) + "',";
sql += "md5('" + db._R(upw) + "'),";
sql += "'" + db._R(uname) + "',";
sql += "'" + ugender + "',";
sql += "'" + uhobby + "') ";
db.RunSQL(sql);

//��ϵ� ���̵��� ��ȣ�� ��´�.
sql = "select last_insert_id() as no ";
db.OpenQuery(sql);
db.GetNext();
String uno = db.GetValue("no");
db.CloseQuery();

//���ɺо� ���
String fname = "";
if(ukind != null)
{
	for(String fkind : ukind)
	{
		String ary[] = fkind.split(":");
		sql = "insert into fav (uno,fkind,fname) ";	
		sql += "values (" + uno + ",";
		sql += "'" + ary[0] + "',";
		sql += "'" + ary[1] + "')";
		db.RunSQL(sql);
	}
}
%>
<script>

	alert("ȸ�������� �Ϸ�Ǿ����ϴ�.");
	
	document.location = "login.jsp";
	
</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
