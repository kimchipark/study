package ezen.vo;

public class BoardVO 
{
	private String no;       //게시물번호
	private String userno;   //회원번호
	private String username; //회원명
	private String title;    //제목
	private String kind;     //구분
	private String note;     //내용
	private String wdate;    //작성일자
	private String hit;      //조회수
	private String rcount;   //댓글 갯수
	
	private String ano;      //첨부파일 번호
	private String pname;    //물리파일명
	private String fname;    //논리파일명
	
	public BoardVO()
	{
		this.ano   = ""; 
		this.fname = "";
		this.pname = "";		
	}
	
	public String getNo()       { return no;      }
	public String getUserno()   { return userno;  }
	public String getUsername() { return username;}
	public String getTitle()    { return title;   }
	public String getKind()     { return kind;    }
	public String getNote()     { return note;    }
	public String getWdate()    { return wdate;   }
	public String getHit()      { return hit;     }
	public String getAno()      { return ano;     }
	public String getPname()    { return pname;   }
	public String getFname()    { return fname;   }
	public String getRCount()   { return rcount;  }
		
	public void setNo(String no)             { this.no = no;            }
	public void setUserno(String userno)     { this.userno = userno;    }
	public void setUsername(String username) { this.username = username;}
	public void setTitle(String title)       { this.title = title;      }
	public void setKind(String kind)         { this.kind = kind;        }
	public void setNote(String note)         { this.note = note;        }
	public void setWdate(String wdate)       { this.wdate = wdate;      }
	public void setHit(String hit)           { this.hit = hit;          }
	public void setAno(String ano)           { this.ano = ano;          }
	public void setPname(String pname)       { this.pname = pname;      }
	public void setFname(String fname)       { this.fname = fname;      }
	public void setRCount(String rcount)     { this.rcount = rcount;    };

	public String getKindName()
	{
		if(kind.equals("J"))
		{
			return "자바 학습 게시판";
		}else
		{
			return "HTML 학습 게시판";
		}
	}	
	
	public void PrintInfo()
	{
		System.out.println("번호:" + this.no);
		System.out.println("제목:" + this.title);
		System.out.println("작성자:" + this.username);
		System.out.println("조회수:" + this.hit);
		System.out.println("첨부파일:" + this.fname);
	}	
}
