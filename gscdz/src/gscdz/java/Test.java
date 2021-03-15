package gscdz.java;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		User user =new User();
		user.setCuoTiji("1||2||3||4");
		String cuotiji=user.getCuoTiji();
		int index=cuotiji.indexOf("4");
        if(index==0) {
        	cuotiji=cuotiji.substring(3);
        	System.out.println(cuotiji);
        }
        else {
        	String before=cuotiji.substring(0,index-2);
        	String after=cuotiji.substring(index+1);
        	System.out.println(before+after);
        }
		
	}

}
