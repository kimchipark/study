<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>     
<%
String filename = request.getParameter("uuid");
System.out.println("filename:" + filename);

String uploadPath = "d:\\upload";
String fullname = uploadPath + "\\" + filename;

response.setContentType("application/octet-stream");   
response.setHeader("Content-Disposition","attachment; filename=upload.txt");   


File file = new File(fullname);
FileInputStream fileIn = new FileInputStream(file);
ServletOutputStream ostream = response.getOutputStream();

byte[] outputByte = new byte[4096];
//copy binary contect to output stream
while(fileIn.read(outputByte, 0, 4096) != -1)
{
	ostream.write(outputByte, 0, 4096);
}
fileIn.close();
ostream.flush();
ostream.close();
%>