package ezen.util;

//�Խ��� ����¡ Ŭ����
public class Paging 
{
	//����¡�� ���� ���� ����
	private int total   = 0;    //��ü �Խù� ����
	private int maxpage = 0;    //�ִ� ������ ����
	private int curpage = 0;    //���� ������ ��ȣ
	private int startBlock = 0; //����¡ ���� �� ��ȣ
	private int endBlock   = 0; //����¡ �� �� ��ȣ
	
	private String kind    = ""; //����
	private String type    = ""; //����,����,����+����
	private String key     = ""; //�˻� Ű����
	
	public Paging(String kind,String type,String key)
	{
		this.kind = kind;
		this.type = type;
		this.key  = key;
	}	
	
	//��ü �Խù� ����
	public int getTotal() 
	{
		return total;
	}
	
	//�ִ� ������ ����
	public int getMaxpage() 
	{
		return maxpage;
	}
	
	//���� ������ ��ȣ
	public int getCurpage() 
	{
		return curpage;
	}
	
	//����¡ ���� �� ��ȣ
	public int getStartBlock() 
	{
		return startBlock;
	}
	
	//����¡ �� �� ��ȣ
	public int getEndBlock() 
	{
		return endBlock;
	}	
	
	//���� �� ����¡ ��ũ ��������
	public String getPrevBlock()
	{
		if( startBlock >= 10 )
		{
			return GetPageLink(startBlock - 1);
		}else
		{
			return null;
		}
	}
	
	//���� ������ ��ũ ��������
	public String getPage(int page)
	{
		return GetPageLink(page);
	}
	
	//������ ����¡ ��ũ ��������
	public String getNextBlock()
	{
		if( endBlock < maxpage)
		{
			return GetPageLink(endBlock + 1);
		}else
		{
			return null;
		}
	}
	
	//�������� ���� ��ũ ��������
	public String GetPageLink(int pageno)
	{
		String link = "";
		link  = "kind=" + kind;
		link += "&type="+ type;		
		link += "&key="+ key;
		link += "&page=" + pageno;
		return link;		
	}	
	
	public void setTotal(int total,int curpage) 
	{
		this.total   = total;
		this.curpage = curpage;

		//�ִ� ������ ������ ����Ѵ�.
		maxpage = total / 10;
		if( total % 10 != 0) maxpage++;
		
		//����¡ ���ۺ���ȣ�� ���� ��ȣ�� ����Ѵ�.
		startBlock = ( (curpage - 1)  / 10) * 10 + 1;
		endBlock   = startBlock + 10 - 1; 	
		
		//endBlock �� �ִ� ������ ��ȣ���� ũ�� �ȵ�.
		if( endBlock > maxpage)
		{
			//��: maxpage�� 22�ε�, endBlock�� 30�̸� endBlock�� 22�� ����
			endBlock = maxpage;
		}
	}	
}
