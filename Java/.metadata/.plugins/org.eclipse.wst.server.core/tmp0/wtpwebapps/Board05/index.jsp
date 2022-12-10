<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
String type = request.getParameter("type");
if(type == null) type = "T";
String key = request.getParameter("key");
if(key == null) key = "";
String pageno = request.getParameter("page");
if(pageno == null) pageno = "1";
int curpageno = Integer.parseInt(pageno);

String ViewParam = "";
ViewParam += "kind=" + kind;
ViewParam += "&";
ViewParam += "type=" + type;
ViewParam += "&";
ViewParam += "key=" + key;
ViewParam += "&";
ViewParam += "page=" + pageno;
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
					<td style="text-align:center; background-color:#f2f2f2;width: 110px;">�ۼ���</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">�ۼ���</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 70px;">��ȸ��</td>						
				</tr>
				<%
				ListDTO dto = new ListDTO();
				//�˻����� ����
				dto.SetSearch(kind,type,key);
				//��ü �Խù� ��ȸ
				int total = dto.GetTotal();
				//���� �������� ���� �Խù� ��� ��ȸ
				dto.GetList(curpageno);
				int size = dto.GetListTotal();	
				
				int seqno = total - (curpageno - 1) * 10;
				for(int i=0; i < size; i++)
				{
					BoardVO vo = dto.GetItem(i);
					%>
					<tr>
						<td style="text-align:center;"><%= seqno-- %></td>
						<td><a href="view.jsp?<%= ViewParam %>&no=<%= vo.getNo() %>"><%= vo.getTitle() %></a>
							<%
							if(!vo.getRCount().equals("0"))
							{
								%><span style="color:#ff6600">(<%= vo.getRCount() %>)</span><%
							}
							%>
						</td>
						<td style="text-align:center;"><%= vo.getWdate() %></td>
						<td style="text-align:center;"><%= vo.getUsername() %></td>
						<td style="text-align:center;"><%= vo.getHit() %></td>
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
		//����¡ ó�� ���
		Paging pager = new Paging(kind,type,key);
		pager.setTotal(total, curpageno);		
		String link;
		link = pager.getPrevBlock();
		if( link != null )
		{
			%><a href="index.jsp?<%= link %>">���� ������</a> | <%
		}	
		
		for(int x = pager.getStartBlock(); x < pager.getEndBlock(); x++)
		{
			link = pager.getPage(x);
			%> [ <a href="index.jsp?<%= link %>"><%= x %></a> ] <%
		}
		
		link = pager.getNextBlock();
		if( link != null)
		{
			%><a href="index.jsp?<%= link %>"> | ���� ������</a> <%
		}			
		%>
		</td>
	</tr>												
</table>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="include/tail.jsp" %>
