<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %> 
<%@ page import="java.io.*" %>   
<%
//down.jsp?no=3 를 분석한다.
String no = request.getParameter("no");
if(no == null)
{
	response.sendRedirect("index.jsp");
	return;
}

//게시물 정보를 읽어 들인다.
BoardDTO dto = new BoardDTO();
BoardVO  vo  = dto.Read(no,false);

//전체 파일명을 만든다.
String pname = uploadPath + "\\" + vo.getPname();

//브라우저에 첨부파일을 읽어서 보낸다.
//out.println(pname + "<br>");
//out.println(fname + "<br>");

//브라우저에 파일명을 보낸다.
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