<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%
//jdbc ���̺귯�� �ε�
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/bookdb";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//�����ͺ��̽��� �����Ѵ�.
conn = DriverManager.getConnection(host,userid,userpw);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�������� ���α׷�</title>
	</head>
	<body>
	<table border="0" style="width:800px;" align="center">
		<tr>
			<td style="height:40px">
				<span style="font-weight:bold; color:red;">�� �������� ���α׷�</span>
			</td>
		</tr>
		<tr>
			<td style="height:25px; text-align:right;">
				<a href="write.jsp">�������</a>
			</td>
		</tr>						
		<tr>
			<td>
				<table border="1" style="width:100%;">
					<tr>
						<td style="text-align:center; background-color:#f2f2f2; width: 60px;">��ȣ</td>
						<td style="text-align:center; background-color:#f2f2f2;">������</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 80px;">���ǻ�</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 80px;">����</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 70px;">����</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 70px;">�����</td>						
					</tr>
					<%
					String curpage = request.getParameter("page");
					int pageno = 1;
					try
					{
						pageno = Integer.parseInt(curpage);	
					}
					catch(Exception e)
					{
						
					}
					Statement stmt = conn.createStatement();
					String sql = "select count(no) as total from book ";
					ResultSet result = stmt.executeQuery(sql);
					result.next();
					int total = result.getInt("total");
					
					int start  = 0;
					
					start = (pageno - 1) * 10;
					
					int num = 1;
					
					sql = "";
					sql += "select no, btitle, bpub, bauthor, bprice, bdate from book ";
					sql += "order by no desc ";
					sql += "limit "+ start + ", 10";
					result = stmt.executeQuery(sql);
					while(result.next())
					{
						String no = result.getString("no");
						String title = result.getString("btitle");
						String pub = result.getString("bpub");
						String author = result.getString("bauthor");
						String price = result.getString("bprice");
						String date = result.getString("bdate");
						
						date = date.substring(0, 10);
						%>
						<tr>
							<td style="text-align:center;"><%= num++ %></td>
							<td><a href="view.jsp?no=<%= no %>"><%= title %></a></td>
							<td style="text-align:center;"><%= pub %></td>
							<td style="text-align:center;"><%= author %></td>
							<td style="text-align:center;"><%= price %></td>
							<td width="100"style="text-align:center;"><%= date %></td>
						</tr>
						<%
					}
					stmt.close();
					%>
				</table>
			</td>
		</tr>
		<tr>
			<td height="40px" align="center">
			<%
			
			int maxpage;
			
		
			maxpage = total / 10;
			if(maxpage % 10 != 0) maxpage++;
			
			int startBlock = (pageno / 10) * 10 + 1;
			if( pageno % 10 == 0)
			{
				startBlock = ((pageno-1) / 10) * 10 + 1;
			}
			int endBlock = startBlock + 10 - 1;
			
			if(endBlock >= maxpage)
			{
				endBlock = maxpage;
			}
			
			
			if(startBlock > 1)
			{
				%>
				<a href="index.jsp?page=<%= startBlock - 1 %>">����������</a>
				<%
			}
			if(pageno > 1)
			{
				%>
				<a href="index.jsp?page=<%= pageno - 1 %>">����</a>
				<%
			}
			for ( int i = startBlock; i <= endBlock ; i++)
			{
				if(pageno == i)
				{
					%>
					<a href="index.jsp?page=<%= i %>"><strong style="color:red"><%= i %></strong></a>
					<%
				}
				else
				{
					%>
					<a href="index.jsp?page=<%= i %>"><%= i %></a>
					<%
				}
				
			}
			if(pageno < maxpage)
			{
				%>
				<a href="index.jsp?page=<%= pageno + 1 %>">����</a>
				<%
			}
			if(endBlock < maxpage)
			{
				%>
				<a href="index.jsp?page=<%= endBlock + 1 %>">����������</a>
				<%
			}
			%>
			
			</td>
		</tr>		
	</table>
	</body>
</html>
<%
conn.close();
%>