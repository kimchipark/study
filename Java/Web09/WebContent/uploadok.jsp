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

//���ε尡 ������ �ִ� ���� ũ�⸦ �����Ѵ�.
int size = 10 * 1024 * 1024;
MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"EUC-KR",new DefaultFileRenamePolicy());

String title = multi.getParameter("title");
out.print("����:" + title + "<br>");

Enumeration files = multi.getFileNames();
String fileid = (String) files.nextElement();
String filename = (String) multi.getFilesystemName("attach");
out.print("ID : " + fileid + "<br>");
out.print("���ϸ�: " + filename + "<br>");

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
<a href="down.jsp?uuid=<%= phyname %>">�����ޱ�</a>


