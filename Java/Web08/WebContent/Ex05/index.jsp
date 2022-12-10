<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>

<%
DBManager db = new DBManager();
db.DBOpen();
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
					int total = 0;
					String sql = "select count(no) as total from book";
					db.OpenQuery(sql);
					db.GetNext();
					total = db.GetInt("total");
					db.CloseQuery();
					
					sql = "";
					sql += "select no, btitle, bpub, bauthor, bprice, bdate from book ";
					sql += "order by no desc ";
					
					String curpage = request.getParameter("page");
					
					int pageno = 1;
					try
					{
						pageno = Integer.parseInt(curpage);
					}
					catch(Exception e)
					{
						
					}
					//System.out.println("������ ��ȣ:" + pageno);
					
					int start = 0;
					
					start = (pageno - 1) * 10;
					
					sql += "limit "+ start + ", 10";
					
					db.OpenQuery(sql);
					int num = 1;
					while(db.GetNext())
					{
						String no	  = db.GetValue("no");
						String title  = db.GetValue("btitle");
						String pub	  = db.GetValue("bpub");
						String author = db.GetValue("bauthor");
						String price  = db.GetValue("bprice");
						String date   = db.GetValue("bdate");
						
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
				
					db.CloseQuery();
					%>
				</table>
			</td>
		</tr>
		<tr>
			<td height="40px" align="center">��ü �Խù� : <%= total %></td>
		</tr>
		<tr>
			<td height="40px" align="center">
			<%
			int maxpage = total / 10;
			if( total % 10 != 0 ) maxpage++;
			
			int startBlock = (pageno / 10) * 10 + 1;
			
			if(pageno % 10 == 0)
			{
				startBlock = ((pageno-1) / 10) * 10 + 1;
			}
			
			int endBlock = startBlock + 10 - 1;
			
			if(endBlock >= maxpage)
			{
				endBlock = maxpage;
			}
			if(startBlock >1)
			{
				%>
				<a href="index.jsp?page=<%= startBlock - 1 %>">���� ������</a>&nbsp;
				<%
			}
			
			for(int i = startBlock; i <= endBlock ; i++)
			{
				if(pageno == i)
				{
					%>
					<a href="index.jsp?page=<%= i %>"><strong style="color:red"><%= i %></strong></a>&nbsp;
					<%
				}
				else
				{
					%>
					<a href="index.jsp?page=<%= i %>"><%= i %></a>&nbsp;
					<%
				}
			}
			if( endBlock != maxpage)
			{
				%>
				<a href="index.jsp?page=<%= endBlock + 1 %>">���� ������</a>&nbsp;
				<%
			}
			%>
			
			</td>
		</tr>		
	</table>
	</body>
</html>
<%
db.DBClose();
%>