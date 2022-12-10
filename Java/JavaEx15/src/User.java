public class User 
{
	public static void main(String[] args) 
	{
		RemoteCon rc = null;
		RemoteCon rc1 = new TVRemoteCon();
		RemoteCon rc2 = new RadioRemoteCon();
		
		rc = rc1;
		rc.PowerRate();
		rc.turnOn();
		rc.turnOff();
		
		rc = rc2;
		rc.PowerRate();
		rc.turnOn();
		rc.turnOff();		
	}
}
