<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>       
<%
request.setCharacterEncoding("euc-kr"); //한글 깨짐현상 해결 코드

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
	//jdbc 라이브러리 로딩
	Class.forName("com.mysql.cj.jdbc.Driver");	
}
catch(Exception e)
{
	e.printStackTrace();
	out.println("데이터베이스 라이러리 로딩 오류입니다.");
	return;
}


Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/ezen";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//데이터베이스에 연결한다.
conn = DriverManager.getConnection(host,userid,userpw);

//SQL 작업을 위한 문맥을 생성한다.
Statement stmt = conn.createStatement();

String sql = "insert into memo ";
sql += "(title,note) ";
sql += "values ('" + title + "','" + note + "');";

//insert, delete, update 처리 실행
stmt.executeUpdate(sql);

//작업을 종료한다.
stmt.close();

//db연결을 닫는다.
conn.close();
response.sendRedirect("index.jsp");
%>
