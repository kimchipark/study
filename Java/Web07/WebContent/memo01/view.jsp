<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %> 
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
//jdbc 라이브러리 로딩
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/ezen";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//데이터베이스에 연결한다.
conn = DriverManager.getConnection(host,userid,userpw);
Statement stmt = conn.createStatement();

String sql = "";
sql += "select no, title, note, wdate, hit ";
sql += "from memo ";
sql += "where no= " + no;

ResultSet result = stmt.executeQuery(sql);

if( result.next() == false)
{
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String title = result.getString("title");
String note = result.getString("note");
String wdate = result.getString("wdate");
String hit = result.getString("hit");

sql = "update memo set hit = hit + 1 ";
sql += "where no = " + no;
stmt.executeUpdate(sql);

stmt.close();

//줄바꿈처리
note = note.replace("\n", "<br>");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>메모조회</title>
	</head>
	<body>
		<style>
			td
			{
				text-align:center;
			}
		</style>
		<table border="1" align="center" style="width:600px">
			<tr>
				<td style="width:100px;">제목</td>
				<td style="text-align:left"><%= title %></td>
			</tr>
			<tr>
				<td style="width:100px;">날짜</td>
				<td style="text-align:left"><%= wdate %></td>
			</tr>	
			<tr>
				<td style="width:100px;">조회수</td>
				<td style="text-align:left"><%= hit %></td>
			</tr>				
			<tr>
				<td style="width:100px;">내용</td>
				<td style="text-align:left">
				<%= note %>
				</td>
			</tr>			
			<tr>
				<td colspan="2" style="text-align:center">
				<a href="index.jsp">목록</a>
				&nbsp; | &nbsp; 
				<a href="modify.jsp?no=<%= no %>">수정</a>
				&nbsp; | &nbsp;
				<a href="delete.jsp?no=<%= no %>">삭제</a>				
				</td>
			</tr>			
		</table>
	</body>
</html>
<%
conn.close();
%>
