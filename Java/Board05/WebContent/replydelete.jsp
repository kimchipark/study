<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>    
<%
UserVO loginVO = (UserVO)session.getAttribute("login");

if(loginVO == null) 
{
	out.println("ERROR");
	return;
}
String rno    = request.getParameter("rno");

ReplyDTO dto = new ReplyDTO();
dto.Delete(rno);

out.println("OK");
%>