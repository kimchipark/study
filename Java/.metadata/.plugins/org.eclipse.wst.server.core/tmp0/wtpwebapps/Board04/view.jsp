<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%@ include file="config/dbopen.jsp" %>
<%
//view.jsp?kind=J&key=&page=1&no=60597 �м�
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
String type = request.getParameter("type");
if(type == null) type = "T";
String key = request.getParameter("key");
if(key == null) key = "";
String curpage = request.getParameter("page");
if(curpage == null) curpage = "1";
String no = request.getParameter("no");
if(no == null)
{
	//�Խù� ��ȣ�� ������ ������.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//�Խù� ������ ��ȸ�Ѵ�.
String sql = "";

//�Խù� ������ ��ȸ�Ѵ�.
sql += "select "; 
sql += "uno,btitle,bkind,bnote,bwdate,bhit,";
sql += "(select uname from user where uno = board.uno) as uname ";
sql += "from board ";
sql += "where bno = " + no;
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//�ش� �Խù��� �������� ����.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;	
}
String uno    = db.GetValue("uno");
String btitle = db.GetValue("btitle");
String bkind  = db.GetValue("bkind");
String bnote  = db.GetValue("bnote");
String bwdate = db.GetValue("bwdate");
String bhit   = db.GetValue("bhit");
String uname  = db.GetValue("uname");
db.CloseQuery();

//��ȸ���� ���� ��Ų��.
sql  = "update board set bhit = bhit + 1 ";
sql += "where bno = " + no;
db.RunSQL(sql);

bnote = bnote.replace("\n","<br>");

%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>

	function DoDelete()
	{
		if(confirm("�ش� �Խù��� ���� �Ͻðڽ��ϱ�?") == 1)
		{
			document.location = "delete.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>";
		}
	}
	
	function ReplyCheck()
	{
		if(document.reply.rnote.value == "")
		{
			alert("��� ������ �ۼ��ϼ���.");
			document.reply.rnote.focus();
			return false;		
		}
		if(confirm("����� �ۼ��Ͻðڽ��ϱ�?") != 1)
		{
			return false;
		}
		return true;
	}
	
	function DoDeleteReply(reno)
	{
		if(confirm("�ش� ����� ���� �Ͻðڽ��ϱ�?") == 1)
		{
			document.location = "deleterelply.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>&reno=" + reno;
		}		
	}	
</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">�� �ۺ���</span>
		</td>
	</tr>
</table>
<table border="" style="width:100%;">
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">����</td>
		<td><%= btitle %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">�ۼ���</td>
		<td><%= uname %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">�ۼ���</td>
		<td><%= bwdate %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">��ȸ��</td>
		<td><%= bhit %>ȸ</td>
	</tr>
	<tr>
		<td colspan="2"><%= bnote %></td>
	</tr>	
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">÷������</td>
		<td>
		<%
		//�ش� �Խù��� ÷�������� ��ȸ�Ѵ�.
		sql  = "select ano,pname,fname ";
		sql += "from attach ";
		sql += "where bno = " + no + " ";
		sql += "order by fname asc ";
		db.OpenQuery(sql);
		while( db.GetNext() == true)
		{
			String ano  = db.GetValue("ano");
			String pname = db.GetValue("pname");
			String fname = db.GetValue("fname");
			%>
			<a href="down.jsp?ano=<%= ano %>"><%= fname %></a><br>
			<%
		}
		db.CloseQuery();		
		%>
		</td>
	</tr>	
	<tr>
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>">�۸��</a>
		&nbsp;|&nbsp;
		<a href="modify.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>">�ۼ���</a>
		&nbsp;|&nbsp;
		<a href="javascript:DoDelete();">�ۻ���</a>
		</td>
	</tr>																													
</table>

<br>
<table border="1" style="width:100%;">
	<%
	if(loginVO != null)
	{
		%>
		<tr>
			<td width="110px"><%= loginVO.getName() %></td>
			<td>
				<form id="reply" name="reply" method="post" action="replyok.jsp"
				onsubmit="return ReplyCheck();">
				<input type="hidden" id="kind" name="kind" value="<%= kind %>">
				<input type="hidden" id="type" name="type" value="<%= type %>">
				<input type="hidden" id="key" name="key" value="<%= key %>">
				<input type="hidden" id="page" name="page" value="<%= curpage %>">
				<input type="hidden" id="no" name="no" value="<%= no %>">				
				<input type="text" id="rnote" name="rnote" style="width:95%">
			</td>
			<td width="110px" align="center">
				<input type="submit" value="�ۼ��Ϸ�">
				</form>
			</td>
		</tr>
		<%
	}

	//��� ����� �����ͼ� ȭ�鿡 ǥ���Ѵ�.
	sql  = "select reno,uno,rnote,date(rwdate) as rwdate, ";
	sql += "(select uname from user where uno = reply.uno) as uname ";
	sql += "from reply ";
	sql += "where bno = " + no + " ";
	sql += "order by reno desc ";
	db.OpenQuery(sql);
	while(db.GetNext())
	{
		String reno   = db.GetValue("reno");
		String runo   = db.GetValue("uno");
		String rnote  = db.GetValue("rnote");
		String rwdate = db.GetValue("rwdate");
		String runame = db.GetValue("uname");		
		%>					
		<tr>
			<td width="110px"><%= runame %></td>
			<td><%= rnote %>
				<%
				if( runo.equals(loginVO.getNo()))
				{
					%>
					[ <a href="javascript:DoDeleteReply(<%= reno %>);">����</a> ]
					<%
				}
				%>
			</td>
			<td width="110px" align="center"><%= rwdate %></td>
		</tr>
		<%
	}
	db.CloseQuery();
	%>																		
</table>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
<%@ include file="include/tail.jsp" %>