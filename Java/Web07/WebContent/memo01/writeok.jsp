<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>       
<%
request.setCharacterEncoding("euc-kr"); //�ѱ� �������� �ذ� �ڵ�

String title = request.getParameter("title");
String note  = request.getParameter("note");

if( title == null || note == null)
{
	response.sendRedirect("write.jsp");
	return;
}

out.println("title:" + title + "<br>");
out.println("note:" + note + "<br>");

try
{			
	//jdbc ���̺귯�� �ε�
	Class.forName("com.mysql.cj.jdbc.Driver");	
}
catch(Exception e)
{
	e.printStackTrace();
	out.println("�����ͺ��̽� ���̷��� �ε� �����Դϴ�.");
	return;
}


Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/ezen";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//�����ͺ��̽��� �����Ѵ�.
conn = DriverManager.getConnection(host,userid,userpw);

//SQL �۾��� ���� ������ �����Ѵ�.
Statement stmt = conn.createStatement();

String sql = "insert into memo ";
sql += "(title,note) ";
sql += "values ('" + title + "','" + note + "');";

//insert, delete, update ó�� ����
stmt.executeUpdate(sql);

//�۾��� �����Ѵ�.
stmt.close();

//db������ �ݴ´�.
conn.close();
response.sendRedirect("index.jsp");
%>
