<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>  
<%@ page import="java.io.*" %>   
<%
//down.jsp?ano=3 �� �м��Ѵ�.
String ano = request.getParameter("ano");
if(ano == null)
{
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//ano�� �ش��ϴ� ÷������ ������ db�κ��� �����´�.
String sql = "";

sql  = "select pname,fname ";
sql += "from attach ";
sql += "where ano = " + ano + " ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//�ش� ÷�������� ����.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}
String pname = db.GetValue("pname");
String fname = db.GetValue("fname");
db.CloseQuery();

//��ü ���ϸ��� �����.
pname = uploadPath + "\\" + pname;

//�������� ÷�������� �о ������.
//out.println(pname + "<br>");
//out.println(fname + "<br>");

//�������� ���ϸ��� ������.
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
