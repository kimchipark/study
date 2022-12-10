<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%@ include file="config/dbopen.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%
request.setCharacterEncoding("euc-kr");

//업로드가 가능한 최대 파일 크기를 지정한다.
int size = 10 * 1024 * 1024;

//enctype="multipart/form-data" 로 데이터를 받는다.
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
	//랜덤한 문자열을 생성한다.
	phyname = UUID.randomUUID().toString();
	out.println("UUID:" + phyname);
	
	//업로드된 파일명을 랜덤한 문자열의 파일명으로 변경한다.
	String srcName    = uploadPath + "/" + filename;
	System.out.println(srcName);
	String targetName = uploadPath + "/" + phyname;
	System.out.println(targetName);
	File srcFile    = new File(srcName);
	File targetFile = new File(targetName);
	srcFile.renameTo(targetFile);
}

//게시물을 저장한다.
String sql = "";
sql += "insert into board ";
sql += "(uno,btitle,bkind,bnote) ";
sql += "values (" + loginVO.getNo() + ",";
sql += "'" + db._R(title) + "',";
sql += "'" + kind + "',";
sql += "'" + db._R(note) + "') ";
db.RunSQL(sql);


//등록된 게시물의  번호를 얻는다.
sql = "select last_insert_id() as no ";
db.OpenQuery(sql);
db.GetNext();
String bno = db.GetValue("no");
db.CloseQuery();

//첨부파일이 있으면 첨부파일을 저장한다.
if(filename != null)
{
	sql  = "";
	sql += "insert into attach (bno,pname,fname) ";
	sql += "values (" + bno + ",'" + phyname + "','" + filename + "')";
	db.RunSQL(sql);
}

response.sendRedirect("view.jsp?no=" + bno);
%>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
<%@ include file="include/tail.jsp" %>