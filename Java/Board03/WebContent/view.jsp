<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<%

String no = request.getParameter("no"); // 게시물 번호
String pageno = request.getParameter("page"); // 게시물이 있는 현재 페이지
String kind = request.getParameter("kind"); // 게시물의 장소
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

//게시물을 볼때마다 조회수가 올라가는 구문
sql = "update board set bhit = bhit + 1 ";
sql += "where bno = " + no;
stmt.executeUpdate(sql);

bnote = bnote.replace("\n", "<br>");
%>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script type="text/javascript">
	function DoDelete()
	{
		if(confirm("게시물을 삭제 하시겠습니까?") == 1)
		{
			document.location = "delete.jsp?page=<%= pageno %>&kind=<%= kind %>&no=<%= no %>";
		}
	}
	function ReplyCheck()
	{
		if(document.reply.rnote.value == "")
		{
			alert("댓글 내용을 작성하세요.");
			document.reply.rnote.focus();
			return false;
		}
		
		if(confirm("댓글을 작성하시겠습니까?") != 1)
		{
			return false;
		}
		return true;
	}
	function DoDeleteReply(reno)
	{
		if(confirm("댓글을 삭제 하시겠습니까?") == 1)
		{
			document.location = "deletereply.jsp?page=<%= pageno %>&kind=<%= kind %>&no=<%= no %>&reno=" + reno;
		}		
	}
</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 글보기</span>
		</td>
	</tr>
</table>
<table border="1" style="width:100%;">
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">제목</td>
		<td><%= btitle %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성자</td>
		<td><%= uname %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성일</td>
		<td><%= bwdate %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">조회수</td>
		<td><%= bhit %></td>
	</tr>
	<tr>
		<td colspan="2">	
			<%= bnote %>
		</td>
	</tr>	
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">첨부파일</td>
		<td>test.hwp</td>
	</tr>	
	<tr>
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.jsp?page=<%= pageno %>&kind=<%= kind %>">글목록</a>
		<%
		//수정삭제는 데이터베이스에서 받아온 uno랑 로그인 ID의 uno가 같으면 보여준다.
		if(uno.equals(LoginNo))
		{
			%>
			&nbsp;|&nbsp;
			<a href="modify.jsp?page=<%= pageno %>&kind=<%= kind %>&no=<%= no %>">글수정</a>
			&nbsp;|&nbsp;
			<a href="javascript:DoDelete();">글삭제</a>
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
				<input type="submit" value="작성완료">
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
					[ <a href="javascript:DoDeleteReply(<%= reno %>);">삭제</a> ]
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
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>