<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>
<%
String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");

//�α����� ó���Ѵ�.
UserDTO dto = new UserDTO();
UserVO  vo  = dto.Login(userid, userpw);
if(vo == null)
{
	//�α��� ����
	out.print("ERROR");
}else
{
	//�α��� ����
	session.setAttribute("login",vo);
	out.print("OK");
}
%>