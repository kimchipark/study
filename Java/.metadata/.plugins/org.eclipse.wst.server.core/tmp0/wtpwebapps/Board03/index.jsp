<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
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
				<span style="font-weight:bold; color:red;">※ 자바학습 게시판</span>
				<%
			}
			else if(kind.equals("H"))
			{
				%>
				<span style="font-weight:bold; color:red;">※ HTML학습 게시판</span>
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
				<a href="write.jsp?kind=<%= kind %>">글쓰기</a>
			<%
		}
		%>
		</td>
	</tr>						
	<tr>
		<td>
			<table border="0" style="width:100%;">
				<tr>
					<td style="text-align:center; background-color:#f2f2f2; width: 60px;">번호</td>
					<td style="text-align:center; background-color:#f2f2f2;">제목</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 110px;">작성일</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">작성자</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 50px;">조회수</td>						
				</tr>
				<%
				//inner join을 이용한 셀렉트 
				/*
				select board.bno, board.btitle, board.bwdate,
				user.uname, board.bhit
				from board inner join user
				on board.uno = user.uno
				limit 0, 10;
				*/
				//서브쿼리를 이용한 셀렉트
				//[3]index.jsp?page=1 분석	
				String curpage = request.getParameter("page");
				int pageno = 1;
				try
				{
					pageno = Integer.parseInt(curpage);
				}
				catch(Exception e){}
				
				//[4] 전체 게시물 갯수 계산
				String sql = "";
				sql += "select count(bno) as bno ";
				sql += "from board ";
				sql += "where bkind = '"+ kind +"' ";
				ResultSet result = stmt.executeQuery(sql);
				result.next();
				int total = result.getInt("bno");
				//System.out.println(total);
				
				//[1]페이지 시작 번호 계산
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
				
				//[2]페이지 시작 번호 입력
				sql += "limit "+ start +", 10 ";
				result = stmt.executeQuery(sql);
				
				//게시물 번호 계산 : 전체 게시물 - start
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
		//[7] 페이지 목록 계산
		int maxpage = total / 10;
		if( total % 10 != 0 ) maxpage++;
		
		//[6] 시작블럭 계산
		int startBlock = (pageno / 10) * 10 + 1;
		
		if(pageno % 10 == 0)
		{
			startBlock = startBlock - 10;
		}
		
		//[8] 끝 블럭 계산
		int endBlock = startBlock + 10 - 1;
		
		if(endBlock >= maxpage)
		{
			endBlock = maxpage;
		}
		//[9] 이전 페이지 계산
		if(startBlock > 1)
		{
			%>
			<a href="index.jsp?page=<%= startBlock -1 %>&kind=<%= kind %>">이전페이지</a>
			<%
		}
	
		if(pageno > 1)
		{
			%>
			<a href="index.jsp?page=<%= pageno - 1 %>&kind=<%= kind %>">◀</a>
			<%
		}
		//[5] 전체 페이징 목록을 계산한다.
		for(int i = startBlock; i<= endBlock; i++)
		{
			if(pageno == i)
			{
				//현재 페이지
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
		//[9] 다음페이지 계산
		if(pageno != maxpage)
		{
			%>
			<a href="index.jsp?page=<%= pageno + 1 %>&kind=<%= kind %>">▶</a>
			<%
		}
		if(endBlock != maxpage)
		{
			%>
			<a href="index.jsp?page=<%= endBlock + 1 %>&kind=<%= kind %>">다음페이지</a>
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
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>
			