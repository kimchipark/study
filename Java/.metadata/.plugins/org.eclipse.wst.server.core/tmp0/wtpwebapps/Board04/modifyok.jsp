<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%
request.setCharacterEncoding("euc-kr");

//���ε尡 ������ �ִ� ���� ũ�⸦ �����Ѵ�.
int size = 10 * 1024 * 1024;

//enctype="multipart/form-data" �� �����͸� �޴´�.
MultipartRequest multi = 
	new MultipartRequest(request,uploadPath,size,
		"EUC-KR",new DefaultFileRenamePolicy());

//modify.jsp ���� �Ѱ��� �����͸� �޴´�.
String kind  = multi.getParameter("kind");
String type  = multi.getParameter("type");
String key   = multi.getParameter("key");
String curpage = multi.getParameter("page");
String no    = multi.getParameter("no");
String btitle = multi.getParameter("title");
String bkind  = multi.getParameter("subject");
String bnote  = multi.getParameter("contents");

System.out.println("title:" + btitle);
System.out.println("kind:" + bkind);
System.out.println("note:" + bnote);

//�Խù� ������ �����Ѵ�.
String sql = "";
sql += "update board ";
sql += "set btitle = '" + db._R(btitle) + "', ";
sql += "bkind = '" + bkind + "', ";
sql += "bnote = '" + db._R(bnote) + "' ";
sql += "where bno = " + no;
db.RunSQL(sql);

//÷�������� ó���Ѵ�.
String filename = (String) multi.getFilesystemName("attach");
String phyname  = "";
System.out.println("filename:" + filename);

if(filename != null)
{
	//������ ���ڿ��� �����Ѵ�.
	phyname = UUID.randomUUID().toString();
	out.println("UUID:" + phyname);
	
	//���ε�� ���ϸ��� ������ ���ڿ��� ���ϸ����� �����Ѵ�.
	String srcName    = uploadPath + "/" + filename;
	System.out.println(srcName);
	String targetName = uploadPath + "/" + phyname;
	System.out.println(targetName);
	File srcFile    = new File(srcName);
	File targetFile = new File(targetName);
	srcFile.renameTo(targetFile);
	
	//���� ÷�������� �����Ѵ�.
	sql = "delete from attach where bno = " + no;
	db.RunSQL(sql);
	
	//���ο� ÷�������� �߰��Ѵ�.
	sql  = "";
	sql += "insert into attach (bno,pname,fname) ";
	sql += "values (" + no + ",'" + phyname + "','" + filename + "')";
	db.RunSQL(sql);	
}
%>
<script>

	alert("�Խù� ������ �Ϸ�Ǿ����ϴ�.");
	document.location = "view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>";

</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>