<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>  
<%@ page import="java.io.*" %>   
<%
//down.jsp?ano=3 를 분석한다.
String ano = request.getParameter("ano");
if(ano == null)
{
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//ano에 해당하는 첨부파일 정보를 db로부터 가져온다.
String sql = "";

sql  = "select pname,fname ";
sql += "from attach ";
sql += "where ano = " + ano + " ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//해당 첨부파일이 없음.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}
String pname = db.GetValue("pname");
String fname = db.GetValue("fname");
db.CloseQuery();

//전체 파일명을 만든다.
pname = uploadPath + "\\" + pname;

//브라우저에 첨부파일을 읽어서 보낸다.
//out.println(pname + "<br>");
//out.println(fname + "<br>");

//브라우저에 파일명을 보낸다.
response.setContentType("application/octet-stream");   
response.setHeader("Content-Disposition","attachment; filename=" + fname);

File file = new File(pname);
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
<%@ include file="config/dbclose.jsp" %>
