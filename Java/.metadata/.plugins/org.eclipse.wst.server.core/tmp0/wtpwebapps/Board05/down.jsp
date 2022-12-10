<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %> 
<%@ page import="java.io.*" %>   
<%
//down.jsp?no=3 �� �м��Ѵ�.
String no = request.getParameter("no");
if(no == null)
{
	response.sendRedirect("index.jsp");
	return;
}

//�Խù� ������ �о� ���δ�.
BoardDTO dto = new BoardDTO();
BoardVO  vo  = dto.Read(no,false);

//��ü ���ϸ��� �����.
String pname = uploadPath + "\\" + vo.getPname();

//�������� ÷�������� �о ������.
//out.println(pname + "<br>");
//out.println(fname + "<br>");

//�������� ���ϸ��� ������.
response.setContentType("application/octet-stream");   
response.setHeader("Content-Disposition","attachment; filename=" + vo.getFname());

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