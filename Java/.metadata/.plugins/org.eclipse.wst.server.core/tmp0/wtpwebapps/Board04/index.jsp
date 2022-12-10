<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%@ include file="config/dbopen.jsp" %>
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
String type = request.getParameter("type");
if(type == null) type = "T";
String key = request.getParameter("key");
if(key == null) key = "";
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">
			<%
			if(kind.equals("J"))
			{
				%>�� �ڹ��н� �Խ���<%
			}else if(kind.equals("H"))
			{
				%>�� HTML�н� �Խ���<%
			}
			%>
			</span>
		</td>
	</tr>
	<tr>
		<td style="height:25px; text-align:right;">
			<form name="search" method="get" action="index.jsp">
				<input type="hidden" name="kind" value="<%= kind %>">
				<select id="type" name="type">
					<option value="T" <%= type.equals("T") ? "selected" : "" %>>����</option>
					<option value="N" <%= type.equals("N") ? "selected" : "" %>>����</option>
					<option value="A" <%= type.equals("A") ? "selected" : "" %>>����+����</option>
				</select>				
				<input name="key" type="text" size="10" value="<%= key %>">
				<input type="submit" value="�˻�">
			</form>
			<%
			if(loginVO != null)
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
			<table border="0" style="width:100%;" class="list_table">
				<tr>
					<td style="text-align:center; background-color:#f2f2f2; width: 60px;">��ȣ</td>
					<td style="text-align:center; background-color:#f2f2f2;">����</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 120px;">�ۼ���</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">�ۼ���</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 70px;">��ȸ��</td>						
				</tr>
				<%				
				//[3]index.jsp?page=1 �м�
				String curpage = request.getParameter("page");					
				int pageno = 1;
				try
				{
					pageno  = Integer.parseInt(curpage);
				}catch(Exception e){}
				System.out.println("������ ��ȣ:" + pageno);
				
				String sql   = "";
				String where = "";
				
				//�˻� ���� ����
				where = "where bkind = '" + kind + "' ";
				if(!key.equals(""))
				{
					//�˻�� ������...
					switch(type)
					{
					case "T": //����
						where += " and btitle like '%" + key + "%' ";
						break;
					case "B": //����
						where += " and bnote like '%" + key + "%' ";
						break;
					case "A": //����+����
						where += " and (btitle like '%" + key + "%' or bnote like '%" + key + "%') ";
						break;						
					}
					
				}

				//[4]��ü �Խù� ���� ���
				sql += "select count(bno) as bno ";
				sql += "from board ";
				sql += where;
				db.OpenQuery(sql);
				db.GetNext();
				int total = db.GetInt("bno");
				db.CloseQuery();
				System.out.println("��ü ����:" + total);				
				
				//[1]������ ���� ��ȣ ���
				int start   = 0;					
				start = (pageno - 1) * 10;
				
				sql  = "select bno,btitle,date(bwdate) as bwdate,";
				sql += "(select uname from user where uno = board.uno) as uname,";
				sql += "bhit, ";
				sql += "(select count(reno) from reply where bno = board.bno) as reno ";
				sql += "from board ";
				sql += where;
				sql += "order by bno desc ";
				//[2]������ ���� ��ȣ �Է�
				sql += "limit " + start + ",10 ";				
				db.OpenQuery(sql);				
				
				int seqno = total - start;
				
				while(db.GetNext())
				{
					String bno    = db.GetValue("bno");
					String btitle = db.GetValue("btitle");
					String bwdate = db.GetValue("bwdate");
					String uname  = db.GetValue("uname");
					String bhit   = db.GetValue("bhit");
					String reno   = db.GetValue("reno");					
					%>
					<tr>
						<td style="text-align:center;"><%= seqno-- %></td>
						<td>
							<a href="view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= pageno %>&no=<%= bno %>"><%= btitle %></a>
							<span style="color:#ff6600">(<%= reno %>)</span>
						</td>
						<td style="text-align:center;"><%= bwdate %></td>
						<td style="text-align:center;"><%= uname %></td>
						<td style="text-align:center;"><%= bhit %></td>
					</tr>
					<%
				}
				db.CloseQuery();
				%>				
			</table>							
		</td>
	</tr>
	<tr>
		<td style="text-align:center;">
		<%
		//[5] ��ü ����¡ ����� ����Ѵ�.
		int maxpage = total / 10;
		if( total % 10 != 0) maxpage++;
		
		//[6]���� �� ��ȣ ���
		int startBlock = (pageno / 10) * 10 + 1;
		if(pageno % 10 == 0)
		{
			startBlock = startBlock - 10;
		}	
		//[7]�� �� ��ȣ ���
		int endBlock   = startBlock + 10 - 1;
		if(endBlock >= maxpage)
		{
			endBlock = maxpage;
		}		
		System.out.println("��ü��:" + maxpage);
		System.out.println("���ۺ�:" + startBlock);
		System.out.println("�����:" + endBlock);
		
		//[10]���������� ó��
		if(startBlock > 1)
		{
			%>
			<a href="index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= startBlock - 1 %>">���� ������</a>&nbsp;
			<%
		}
			
		//[8]����¡ ó��
		for(int i=startBlock;i <= endBlock ;i++)
		{
			if(pageno == i)
			{
				//����������
				%>
				<a href="index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= i %>"><strong style="color:red;"><%= i %></strong></a>&nbsp;
				<%					
			}else
			{
				%>
				<a href="index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= i %>"><%= i %></a>&nbsp;
				<%
			}
		}	
		
		//[9]���������� ó��
		if( endBlock != maxpage)
		{
			%>
			<a href="index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= endBlock + 1 %>">���� ������</a>&nbsp;
			<%
		}		
		%>
		</td>
	</tr>												
</table>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
<%@ include file="include/tail.jsp" %>
