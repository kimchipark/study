<%@ page language="java" contentType="text/xml; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String UserID = request.getParameter("id");
//00:���̵� �˻� ����
//01:���̵� �ߺ���
//02:ȸ�� ���� ������ ���̵�
if( UserID == null)
{
	//out.println("���̵� �Է��ϼ���");
	%>
	<response>
		<code>00</code>
		<msg>���̵� �Է��ϼ���</msg>
	</response>
	<%
	//out.println("00:���̵� �Է��ϼ���");
}
else if( UserID.equals("ezen"))
{
	%>
	<response>
		<code>01</code>
		<msg>�ߺ��� ���̵� �Դϴ�.</msg>
	</response>
	<%
	//out.println("�ߺ��� ���̵� ezen �Դϴ�.");
	//out.println("01:�ߺ��� ���̵� �Դϴ�.");
}
else 
{
	%>
	<response>
		<code>02</code>
		<msg>��� ������ ���̵� �Դϴ�.</msg>
	</response>
	<%
	//out.println("��� ������ ���̵� �Դϴ�.");
	//out.println("02:��� ������ ���̵� �Դϴ�.");
}
%>