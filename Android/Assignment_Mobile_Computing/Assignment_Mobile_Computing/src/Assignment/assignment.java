package Assignment;

public class assignment {

	public assignment() {
		// TODO Auto-generated constructor stub
	}
	public static void main(String [] m){
		String org="hamad";

	  String str="I am a good boy";
	    char[] chars=str.toCharArray();
	    System.out.println("check : " + chars);
		
		char[] con =new char[org.length()];
		
		con=org.toCharArray();

		System.out.println("array : " + con);
		
		int sum=0;
		char [] change =new char[con.length];
		
		for(int i=0 ; i < con.length  ; i++)
		{
			if(i!=2)
			{
				change[sum]=con[sum];
				sum++;
			}
		}
		System.out.println("array : " + change.toString());
	}
}
