<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>    
<%
String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");
String remember = request.getParameter("remember");

if(remember != null && remember.equals("Y"))
{
	//아이디 기억하기
	Cookie cookie = new Cookie("userid",userid);
	cookie.setMaxAge(2 * 365 * 24 * 60 * 60);
	response.addCookie(cookie);
}

if( userid.equals("test") && userpw.equals("test"))
{
	out.println("로그인 되었습니다.");
	
	loginVO login = new loginVO(userid,"정정훈",16);
	session.setAttribute("login",login);
	
	response.sendRedirect("index.jsp");
}else
{
	out.println("아이디 또는 비밀번호가 올바르지 않습니다.");
}
%>
