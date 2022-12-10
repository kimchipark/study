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
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">
			<%
			if(kind.equals("J"))
			{
				%>※ 자바학습 게시판<%
			}else if(kind.equals("H"))
			{
				%>※ HTML학습 게시판<%
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
					<option value="T" <%= type.equals("T") ? "selected" : "" %>>제목</option>
					<option value="N" <%= type.equals("N") ? "selected" : "" %>>내용</option>
					<option value="A" <%= type.equals("A") ? "selected" : "" %>>제목+내용</option>
				</select>				
				<input name="key" type="text" size="10" value="<%= key %>">
				<input type="submit" value="검색">
			</form>
			<%
			if(loginVO != null)
			{
				%>
				<a href="write.jsp?kind=<%= kind %>">글쓰기</a>
				<%
			}
			%>
		</td>
	</tr>						
	<tr>
		<td>
			<table border="0" style="width:100%;" class="list_table">
				<tr>
					<td style="text-align:center; background-color:#f2f2f2; width: 60px;">번호</td>
					<td style="text-align:center; background-color:#f2f2f2;">제목</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 120px;">작성일</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">작성자</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 70px;">조회수</td>						
				</tr>
				<%				
				//[3]index.jsp?page=1 분석
				String curpage = request.getParameter("page");					
				int pageno = 1;
				try
				{
					pageno  = Integer.parseInt(curpage);
				}catch(Exception e){}
				System.out.println("페이지 번호:" + pageno);
				
				String sql   = "";
				String where = "";
				
				//검색 조건 설정
				where = "where bkind = '" + kind + "' ";
				if(!key.equals(""))
				{
					//검색어가 있으면...
					switch(type)
					{
					case "T": //제목
						where += " and btitle like '%" + key + "%' ";
						break;
					case "B": //내용
						where += " and bnote like '%" + key + "%' ";
						break;
					case "A": //제목+내용
						where += " and (btitle like '%" + key + "%' or bnote like '%" + key + "%') ";
						break;						
					}
					
				}

				//[4]전체 게시물 갯수 계산
				sql += "select count(bno) as bno ";
				sql += "from board ";
				sql += where;
				db.OpenQuery(sql);
				db.GetNext();
				int total = db.GetInt("bno");
				db.CloseQuery();
				System.out.println("전체 갯수:" + total);				
				
				//[1]페이지 시작 번호 계산
				int start   = 0;					
				start = (pageno - 1) * 10;
				
				sql  = "select bno,btitle,date(bwdate) as bwdate,";
				sql += "(select uname from user where uno = board.uno) as uname,";
				sql += "bhit, ";
				sql += "(select count(reno) from reply where bno = board.bno) as reno ";
				sql += "from board ";
				sql += where;
				sql += "order by bno desc ";
				//[2]페이지 시작 번호 입력
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
		//[5] 전체 페이징 목록을 계산한다.
		int maxpage = total / 10;
		if( total % 10 != 0) maxpage++;
		
		//[6]시작 블럭 번호 계산
		int startBlock = (pageno / 10) * 10 + 1;
		if(pageno % 10 == 0)
		{
			startBlock = startBlock - 10;
		}	
		//[7]끝 블럭 번호 계산
		int endBlock   = startBlock + 10 - 1;
		if(endBlock >= maxpage)
		{
			endBlock = maxpage;
		}		
		System.out.println("전체블럭:" + maxpage);
		System.out.println("시작블럭:" + startBlock);
		System.out.println("종료블럭:" + endBlock);
		
		//[10]이전페이지 처리
		if(startBlock > 1)
		{
			%>
			<a href="index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= startBlock - 1 %>">이전 페이지</a>&nbsp;
			<%
		}
			
		//[8]페이징 처리
		for(int i=startBlock;i <= endBlock ;i++)
		{
			if(pageno == i)
			{
				//현재페이지
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
		
		//[9]다음페이지 처리
		if( endBlock != maxpage)
		{
			%>
			<a href="index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= endBlock + 1 %>">다음 페이지</a>&nbsp;
			<%
		}		
		%>
		</td>
	</tr>												
</table>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
<%@ include file="include/tail.jsp" %>
