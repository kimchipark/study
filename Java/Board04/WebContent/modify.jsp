<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%@ include file="config/dbopen.jsp" %>
<%
//modify.jsp?kind=J&key=&page=1&no=60597 �м�
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
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>

	window.onload = function()
	{
		document.write.title.focus();
	}
	
	function CheckSubmit()
	{
		if(document.write.title.value == "")
		{
			alert("������ �Է��ϼ���.");
			document.write.title.focus();
			return false;			
		}		
		if(document.write.contents.value == "")
		{
			alert("������ �Է��ϼ���.");
			document.write.contents.focus();
			return false;			
		}
		if( confirm("����� �Խù��� �����Ͻðڽ��ϱ�?") != 1)
		{
			return false;	
		}		
		return true;
	}

</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">�� �ۼ���</span>
		</td>
	</tr>
</table>		
<form name="write" method="post" action="modifyok.jsp"
	enctype="multipart/form-data" onsubmit="return CheckSubmit();">
<input type="hidden" id="kind" name="kind" value="<%= kind %>">
<input type="hidden" id="type" name="type" value="<%= type %>">
<input type="hidden" id="key" name="key" value="<%= key %>">
<input type="hidden" id="page" name="page" value="<%= curpage %>">
<input type="hidden" id="no" name="no" value="<%= no %>">
<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td><input type="text" name="title" style="width:95%" value="<%= btitle %>"></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td>
			<%
			if(bkind.equals("J"))
			{
				%>
				<input type="radio" name="subject" value="J" checked>�ڹ� �н� �Խ���
				<input type="radio" name="subject" value="H">HTML �н� �Խ���
				<%
			}else
			{
				%>
				<input type="radio" name="subject" value="J">�ڹ� �н� �Խ���
				<input type="radio" name="subject" value="H" checked>HTML �н� �Խ���
				<%				
			}
			%>
		</td>
	</tr>						
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td><textarea name="contents" style="width:95%; height:200px;"><%= bnote %></textarea></td>
						</tr>
						<tr>
							<td style="width:120px; text-align:center; background-color:#f4f4f4">÷������</td>
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
		<input name="attach" type="file" style="width:95%">
		</td>
	</tr>
	<tr>
		<td colspan="2" style="height:1px;background-color:#cccccc"></td>
	</tr>
	<tr>
		<td style="text-align:center;" colspan="2">
			<input type="submit" value="�ۼ��� �Ϸ�">
			<a href="view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>">�ۼ��� ���</a>
		</td>
	</tr>
</table>					
</form>			
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
<%@ include file="include/tail.jsp" %>