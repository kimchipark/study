<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<%

String no = request.getParameter("no"); // �Խù� ��ȣ
String pageno = request.getParameter("page"); // �Խù��� �ִ� ���� ������
String kind = request.getParameter("kind"); // �Խù��� ���
if(pageno == null) pageno="1";
if(kind == null) kind="J";

if( no == null || pageno == null || kind == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}
String sql = "";
sql += "select btitle, ";
sql += "(select uname from user where uno = board.uno) as uname, ";
sql += "uno, bwdate, bnote, bhit from board where bno = " + no;

ResultSet result = stmt.executeQuery(sql);
if(result.next() == false)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
};

String btitle = result.getString("btitle");
String uname = result.getString("uname");
String bwdate = result.getString("bwdate");
String bnote = result.getString("bnote");
String bhit = result.getString("bhit");
String uno = result.getString("uno");

//�Խù��� �������� ��ȸ���� �ö󰡴� ����
sql = "update board set bhit = bhit + 1 ";
sql += "where bno = " + no;
stmt.executeUpdate(sql);

bnote = bnote.replace("\n", "<br>");
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script type="text/javascript">
	function DoDelete()
	{
		if(confirm("�Խù��� ���� �Ͻðڽ��ϱ�?") == 1)
		{
			document.location = "delete.jsp?page=<%= pageno %>&kind=<%= kind %>&no=<%= no %>";
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
		if(confirm("����� ���� �Ͻðڽ��ϱ�?") == 1)
		{
			document.location = "deletereply.jsp?page=<%= pageno %>&kind=<%= kind %>&no=<%= no %>&reno=" + reno;
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
<table border="1" style="width:100%;">
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
		<td><%= bhit %></td>
	</tr>
	<tr>
		<td colspan="2">	
			<%= bnote %>
		</td>
	</tr>	
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">÷������</td>
		<td>test.hwp</td>
	</tr>	
	<tr>
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.jsp?page=<%= pageno %>&kind=<%= kind %>">�۸��</a>
		<%
		//���������� �����ͺ��̽����� �޾ƿ� uno�� �α��� ID�� uno�� ������ �����ش�.
		if(uno.equals(LoginNo))
		{
			%>
			&nbsp;|&nbsp;
			<a href="modify.jsp?page=<%= pageno %>&kind=<%= kind %>&no=<%= no %>">�ۼ���</a>
			&nbsp;|&nbsp;
			<a href="javascript:DoDelete();">�ۻ���</a>
			<%
		}
		%>
		</td>
	</tr>																													
</table>
<br>

<table border="1" style="width:100%;">
	<%
	if(LoginName != null)
	{
		%>
		<tr>
			<td width="110px"><%= LoginName %></td>
			<td>
				<form id="reply" name="reply" method="post" action="replyok.jsp" onsubmit="return ReplyCheck();">
				<input type="hidden" name="no" value="<%= no %>">
				<input type="hidden" name="page" value="<%= pageno %>">
				<input type="hidden" name="kind" value="<%= kind %>">
				<input type="text" id="rnote" name="rnote" style="width:95%">
			</td>
				<td width="110px" align="center">
				<input type="submit" value="�ۼ��Ϸ�">
			</form>
			</td>
		</tr>	
		<%
	}
	%>
	<%
	sql = "";
	sql += "select reno, uno, rnote, date(rwdate) as rwdate, ";
	sql += "(select uname from user where uno = reply.uno) as uname ";
	sql += "from reply ";
	sql += "where bno = " + no;
	sql += " order by reno desc ";
	
	//System.out.println(sql);
	
	result = stmt.executeQuery(sql);
	while(result.next() == true)
	{
		String reno = result.getString("reno");
		String runo = result.getString("uno");
		String rwdate = result.getString("rwdate");
		String rnote = result.getString("rnote");
		String runame = result.getString("uname");
		%>
		<tr>
			<td width="110px"><%= runame %></td>
			<td><%= rnote %>
			<%
				if(runo.equals(LoginNo))
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
	%>
																			
</table>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>