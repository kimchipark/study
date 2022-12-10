<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

//modify.jsp 에서 넘겨준 데이터를 받는다.
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

//게시물 정보를 변경한다.
String sql = "";
sql += "update board ";
sql += "set btitle = '" + db._R(btitle) + "', ";
sql += "bkind = '" + bkind + "', ";
sql += "bnote = '" + db._R(bnote) + "' ";
sql += "where bno = " + no;
db.RunSQL(sql);

//첨부파일을 처리한다.
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
	
	//기존 첨부파일을 삭제한다.
	sql = "delete from attach where bno = " + no;
	db.RunSQL(sql);
	
	//새로운 첨부파일을 추가한다.
	sql  = "";
	sql += "insert into attach (bno,pname,fname) ";
	sql += "values (" + no + ",'" + phyname + "','" + filename + "')";
	db.RunSQL(sql);	
}
%>
<script>

	alert("게시물 변경이 완료되었습니다.");
	document.location = "view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>";

</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="config/dbclose.jsp" %>