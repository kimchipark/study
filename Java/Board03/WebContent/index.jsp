<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
%>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<% 
			if(kind.equals("J"))
			{
				%>
				<span style="font-weight:bold; color:red;">�� �ڹ��н� �Խ���</span>
				<%
			}
			else if(kind.equals("H"))
			{
				%>
				<span style="font-weight:bold; color:red;">�� HTML�н� �Խ���</span>
				<%
			}
			%>
			
		</td>
	</tr>
	<tr>
		<td style="height:25px; text-align:right;">
		<%
		if(LoginID != null)
		{
			%>
				<a href="write.jsp?kind=<%= kind %>">�۾���</a>
			<%
		}
		%>
		</td>
	</tr>						
	<tr>
		<td>
			<table border="0" style="width:100%;">
				<tr>
					<td style="text-align:center; background-color:#f2f2f2; width: 60px;">��ȣ</td>
					<td style="text-align:center; background-color:#f2f2f2;">����</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 110px;">�ۼ���</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">�ۼ���</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 50px;">��ȸ��</td>						
				</tr>
				<%
				//inner join�� �̿��� ����Ʈ 
				/*
				select board.bno, board.btitle, board.bwdate,
				user.uname, board.bhit
				from board inner join user
				on board.uno = user.uno
				limit 0, 10;
				*/
				//���������� �̿��� ����Ʈ
				//[3]index.jsp?page=1 �м�	
				String curpage = request.getParameter("page");
				int pageno = 1;
				try
				{
					pageno = Integer.parseInt(curpage);
				}
				catch(Exception e){}
				
				//[4] ��ü �Խù� ���� ���
				String sql = "";
				sql += "select count(bno) as bno ";
				sql += "from board ";
				sql += "where bkind = '"+ kind +"' ";
				ResultSet result = stmt.executeQuery(sql);
				result.next();
				int total = result.getInt("bno");
				//System.out.println(total);
				
				//[1]������ ���� ��ȣ ���
				int start  = 0;
				start = (pageno - 1) * 10;
				
				sql = "";
				sql += "select bno, btitle, date(bwdate) as bwdate, ";
				sql += "(select uname from user where uno = board.uno) as uname, ";
				sql += "bhit, ";
				sql += "(select count(reno) from reply where bno = board.bno) as reno ";
				sql += "from board ";
				sql += "where bkind = '"+ kind +"' ";
				sql += "order by bno desc ";
				
				//[2]������ ���� ��ȣ �Է�
				sql += "limit "+ start +", 10 ";
				result = stmt.executeQuery(sql);
				
				//�Խù� ��ȣ ��� : ��ü �Խù� - start
				int seqno = total - start;
				while(result.next() == true)
				{
					String bno = result.getString("bno");
					String btitle = result.getString("btitle");
					String bwdate = result.getString("bwdate");
					String uname = result.getString("uname");
					String bhit = result.getString("bhit");
					String reno = result.getString("reno");
					%>
					<tr>
						<td style="text-align:center;"><%= seqno-- %></td>
						<td><a href="view.jsp?no=<%= bno %>&page=<%= pageno %>&kind=<%= kind %>"><%= btitle %></a> 
						<span style="color:#ff6600">(<%= reno %>)</span></td>
						<td style="text-align:center;"><%= bwdate %></td>
						<td style="text-align:center;"><%= uname %></td>
						<td style="text-align:center;"><%= bhit %></td>
					</tr>
					<%
				}
				%>
			</table>							
		</td>
	</tr>
	<tr>
		<td style="text-align:center;">
		
		<%
		//[7] ������ ��� ���
		int maxpage = total / 10;
		if( total % 10 != 0 ) maxpage++;
		
		//[6] ���ۺ� ���
		int startBlock = (pageno / 10) * 10 + 1;
		
		if(pageno % 10 == 0)
		{
			startBlock = startBlock - 10;
		}
		
		//[8] �� �� ���
		int endBlock = startBlock + 10 - 1;
		
		if(endBlock >= maxpage)
		{
			endBlock = maxpage;
		}
		//[9] ���� ������ ���
		if(startBlock > 1)
		{
			%>
			<a href="index.jsp?page=<%= startBlock -1 %>&kind=<%= kind %>">����������</a>
			<%
		}
	
		if(pageno > 1)
		{
			%>
			<a href="index.jsp?page=<%= pageno - 1 %>&kind=<%= kind %>">��</a>
			<%
		}
		//[5] ��ü ����¡ ����� ����Ѵ�.
		for(int i = startBlock; i<= endBlock; i++)
		{
			if(pageno == i)
			{
				//���� ������
				%>
				<a href="index.jsp?page=<%= i %>&kind=<%= kind %>"><strong style="color:red"><%= i %></strong></a>
				<%
			}
			else
			{
				%>
				<a href="index.jsp?page=<%= i %>&kind=<%= kind %>"><%= i %></a>
				<%
			}
			
		}
		//[9] ���������� ���
		if(pageno != maxpage)
		{
			%>
			<a href="index.jsp?page=<%= pageno + 1 %>&kind=<%= kind %>">��</a>
			<%
		}
		if(endBlock != maxpage)
		{
			%>
			<a href="index.jsp?page=<%= endBlock + 1 %>&kind=<%= kind %>">����������</a>
			<%
		}
		/*
		System.out.println("startBlock :" + startBlock);
		System.out.println("maxpage : " + maxpage);
		System.out.println("endBlock : " + endBlock);
		*/
		%>
		</td>
	</tr>												
</table>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>
			