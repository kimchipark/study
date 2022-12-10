<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>
<%
String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");

//로그인을 처리한다.
UserDTO dto = new UserDTO();
UserVO  vo  = dto.Login(userid, userpw);
if(vo == null)
{
	//로그인 실패
	out.print("ERROR");
}else
{
	//로그인 성공
	session.setAttribute("login",vo);
	out.print("OK");
}
%>