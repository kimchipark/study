<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
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

String title = multi.getParameter("title");
String kind  = multi.getParameter("subject");
String note  = multi.getParameter("contents");

System.out.println("title:" + title);
System.out.println("kind:" + kind);
System.out.println("note:" + note);

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
}

//�Խù��� �����Ѵ�.
String sql = "";
sql += "insert into board ";
sql += "(uno,btitle,bkind,bnote) ";
sql += "values (" + loginVO.getNo() + ",";
sql += "'" + db._R(title) + "',";
sql += "'" + kind + "',";
sql += "'" + db._R(note) + "') ";
db.RunSQL(sql);


//��ϵ� �Խù���  ��ȣ�� ��´�.
sql = "select last_insert_id() as no ";
db.OpenQuery(sql);
db.GetNext();
String bno = db.GetValue("no");
db.CloseQuery();

//÷�������� ������ ÷�������� �����Ѵ�.
if(filename != null)
{
	sql  = "";
	sql += "insert into attach (bno,pname,fname) ";
	sql += "values (" + bno + ",'" + phyname + "','" + filename + "')";
	db.RunSQL(sql);
}

response.sendRedirect("view.jsp?no=" + bno);
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
<%@ include file="include/tail.jsp" %>