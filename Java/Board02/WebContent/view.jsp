<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
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
		<td>자바 기초 문법에 대한 강의 입니다.</td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성자</td>
		<td>홍길동</td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성일</td>
		<td>2021.11.10</td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">조회수</td>
		<td>10회</td>
	</tr>
	<tr>
		<td colspan="2">	
			자바 기초 문법에 대한 강의 입니다.
			<br>
			자바 기초 문법에 대한 강의 입니다.
			<br>
			자바 기초 문법에 대한 강의 입니다.
		</td>
	</tr>	
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">첨부파일</td>
		<td>test.hwp</td>
	</tr>	
	<tr>
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.jsp">글목록</a>
		&nbsp;|&nbsp;
		<a href="modify.jsp">글수정</a>
		&nbsp;|&nbsp;
		<a href="delete.jsp">글삭제</a>
		</td>
	</tr>																													
</table>

<br>
<table border="1" style="width:100%;">
	<tr>
		<td width="110px">홍길동</td>
		<td><input type="text" style="width:95%"></td>
		<td width="110px" align="center"><input type="submit" value="작성완료"></td>
	</tr>					
	<tr>
		<td width="110px">홍길동</td>
		<td>댓글 입니다. 댓글입니다.</td>
		<td width="110px" align="center">2021.12.01</td>
	</tr>
	<tr>
		<td width="110px">홍길동</td>
		<td>댓글 입니다. 댓글입니다.</td>
		<td width="110px" align="center">2021.12.01</td>
	</tr>
	<tr>
		<td width="110px">홍길동</td>
		<td>댓글 입니다. 댓글입니다.</td>
		<td width="110px" align="center">2021.12.01</td>
	</tr>
	<tr>
		<td width="110px">홍길동</td>
		<td>댓글 입니다. 댓글입니다. [ <a href="#">삭제</a> ]</td>
		<td width="110px" align="center">2021.12.01</td>
	</tr>																		
</table>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>