<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");
String remember = request.getParameter("remember");

if(remember != null && remember.equals("Y"))
{
	//���̵� ����ϱ�
	Cookie cookie = new Cookie("userid",userid);
	cookie.setMaxAge(2 * 365 * 24 * 60 * 60);
	response.addCookie(cookie);
}

if( userid.equals("test") && userpw.equals("test"))
{
	out.println("�α��� �Ǿ����ϴ�.");
	
	session.setAttribute("userid",userid);
	session.setAttribute("username","������");
	
	response.sendRedirect("index.jsp");
}else
{
	out.println("���̵� �Ǵ� ��й�ȣ�� �ùٸ��� �ʽ��ϴ�.");
}
%>
