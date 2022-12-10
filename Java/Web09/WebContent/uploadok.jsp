<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>    
<%
request.setCharacterEncoding("euc-kr");

String uploadPath = "d:\\upload";

//업로드가 가능한 최대 파일 크기를 지정한다.
int size = 10 * 1024 * 1024;
MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"EUC-KR",new DefaultFileRenamePolicy());

String title = multi.getParameter("title");
out.print("제목:" + title + "<br>");

Enumeration files = multi.getFileNames();
String fileid = (String) files.nextElement();
String filename = (String) multi.getFilesystemName("attach");
out.print("ID : " + fileid + "<br>");
out.print("파일명: " + filename + "<br>");

String phyname = UUID.randomUUID().toString();
out.println("UUID : " + phyname);

String srcName = uploadPath + "/" + filename;
System.out.println(srcName);
String tagetName = uploadPath + "/" + phyname;
System.out.println(tagetName);
File srcFile =  new File(srcName);
File targetFile =  new File(tagetName);
srcFile.renameTo(targetFile);

%>
<a href="down.jsp?uuid=<%= phyname %>">내려받기</a>


