package ezen;

public class loginVO 
{
	private String userID;    //����� ���̵�
	private String userName;  //����
	private int    userAge;   //����
	
	public loginVO()
	{		
	}
	
	public loginVO(String userID,
			String userName,int userAge)
	{
		this.userID    = userID;
		this.userName  = userName;
		this.userAge   = userAge;
	}	
	

	public String getUserID()    {  return userID;    }
	public String getUserName()  {	return userName;  }
	public int    getUserAge()   {	return userAge;	  }
	
	public void setUserID(String userID)       { this.userID = userID;       }
	public void setUserName(String userName)   { this.userName = userName;   }
	public void setUserAge(int userAge)        { this.userAge = userAge;     }	
	
}
