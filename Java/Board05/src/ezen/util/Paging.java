package ezen.util;

//게시판 페이징 클래스
public class Paging 
{
	//페이징을 위한 변수 선언
	private int total   = 0;    //전체 게시물 갯수
	private int maxpage = 0;    //최대 페이지 갯수
	private int curpage = 0;    //현재 페이지 번호
	private int startBlock = 0; //페이징 시작 블럭 번호
	private int endBlock   = 0; //페이징 끝 블럭 번호
	
	private String kind    = ""; //구분
	private String type    = ""; //제목,내용,제목+내용
	private String key     = ""; //검색 키워드
	
	public Paging(String kind,String type,String key)
	{
		this.kind = kind;
		this.type = type;
		this.key  = key;
	}	
	
	//전체 게시물 갯수
	public int getTotal() 
	{
		return total;
	}
	
	//최대 페이지 갯수
	public int getMaxpage() 
	{
		return maxpage;
	}
	
	//현재 페이지 번호
	public int getCurpage() 
	{
		return curpage;
	}
	
	//페이징 시작 블럭 번호
	public int getStartBlock() 
	{
		return startBlock;
	}
	
	//페이징 끝 블럭 번호
	public int getEndBlock() 
	{
		return endBlock;
	}	
	
	//이전 블럭 페이징 링크 가져오기
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
	
	//현재 페이지 링크 가져오기
	public String getPage(int page)
	{
		return GetPageLink(page);
	}
	
	//다음블럭 페이징 링크 가져오기
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
	
	//페이지에 대한 링크 가져오기
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

		//최대 페이지 갯수를 계산한다.
		maxpage = total / 10;
		if( total % 10 != 0) maxpage++;
		
		//페이징 시작블럭번호와 끝블럭 번호를 계산한다.
		startBlock = ( (curpage - 1)  / 10) * 10 + 1;
		endBlock   = startBlock + 10 - 1; 	
		
		//endBlock 이 최대 페이지 번호보다 크면 안됨.
		if( endBlock > maxpage)
		{
			//예: maxpage가 22인데, endBlock이 30이면 endBlock을 22로 변경
			endBlock = maxpage;
		}
	}	
}
