package ezen.vo;

public class BoardVO 
{
	private String no;       //�Խù���ȣ
	private String userno;   //ȸ����ȣ
	private String username; //ȸ����
	private String title;    //����
	private String kind;     //����
	private String note;     //����
	private String wdate;    //�ۼ�����
	private String hit;      //��ȸ��
	private String rcount;   //��� ����
	
	private String ano;      //÷������ ��ȣ
	private String pname;    //�������ϸ�
	private String fname;    //�����ϸ�
	
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
			return "�ڹ� �н� �Խ���";
		}else
		{
			return "HTML �н� �Խ���";
		}
	}	
	
	public void PrintInfo()
	{
		System.out.println("��ȣ:" + this.no);
		System.out.println("����:" + this.title);
		System.out.println("�ۼ���:" + this.username);
		System.out.println("��ȸ��:" + this.hit);
		System.out.println("÷������:" + this.fname);
	}	
}
